# 大学生健康档案管理系统后端代码

#### 介绍
大学生健康档案管理系统，体检表，健康文档，体检数据图标展示等进行管理，以及权限管理，指定不同科室医生进行不同的操作。

#### 软件架构
软件架构说明
- springboot
- mysql
- mybatis
- jpa
- swagger-ui
- lombok

#### 项目说明

项目是采用SpringBoot + Mybatis + Shiro 的搭建的单体后台服务。同时通过引入通用mapper减少代码量，已达到重点关注业务
的开发。

```xml
<dependency>
    <groupId>tk.mybatis</groupId>
    <artifactId>mapper-spring-boot-starter</artifactId>
    <version>${mapper-starter-version}</version>
    <exclusions>
        <exclusion>
            <groupId>javax.persistence</groupId>
            <artifactId>persistence-api</artifactId>
        </exclusion>
    </exclusions>
</dependency>
```
> 实体

在创建实体时，首先定义了一个`BaseEntity`的类，所有的实体均集成该类，同时该类需要加上`@MappedSuperclass`注解。`BaseEntity`里面
包含了所有实体的公共字段，如：id、createTime、updateTime。这样做是为了减少代码的冗余。
实体上配置了`@Table`注解，以及实体字段配置了 `@Column`注解是为了搭配jpa的自动建表，已达到添加字段时，重新运行项目，数据库表字段也会自动添加。
但是存在缺点: 更改字段类型或删除字段，数据库表不能自动修改或删除字段，需要手动去变更。

> Dao层

再创建相关的dao层接口时，需要接口继承自定义的`BaseDao`接口，该接口集成了通用mapper相关的接口和注解，便于我们自定义一些通用接口。

> Service层

所有的service接口需要继承自定义的`BaseService`接口，该接口定义了一些常用到的接口，例如增、删、改、查等等。

```java
package com.cqjtu.studentdocument.service;

import com.cqjtu.studentdocument.utils.dto.Condition;
import com.github.pagehelper.PageInfo;
import tk.mybatis.mapper.entity.Example;

import java.io.Serializable;
import java.util.List;

/**
 * @author pengyangyan
 */
public interface BaseService<T> {

    /**
     * 查询所有数据
     * @return      结果List
     */
    List<T> selectAll();

    /**
     * 主键查询
     *
     * @param key   主键
     * @return      T
     */
    T selectByKey(Serializable key);

    /**
     * 插入数据
     * @param entity   传入实体
     * @return  受影响行数
     */
    int insert(T entity);

    /**
     * 主键删除
     * @param key   主键
     * @return   受影响行数
     */
    int deleteByKey(Serializable key);

    /**
     * 批量删除
     * @return      受影响行数
     */
    int deletes(List<String> keys);

    /**
     * 删除数据
     *
     * @param entity 实体
     * @return       受影响行数
     */
    int delete(T entity);

    /**
     * 更新数据
     *
     * @param  entity 实体
     * @return       受影响行数
     */
    int update(T entity);

    /**
     * mapper Example原生查询方式
     *
     * @param example  example
     * @return         结果List
     */
    List<T> selectByExample(Example example);

    /**
     * 条件排序查询
     * 1.查询条件clauses和排序条件sortMap都可以为空
     * 2.如果查询条件和排序map都为空，则返回所有数据
     * 3.pageSize和pageNum该方法无效
     * 4.clauses定义查询条件
     * 5.sortMap定义排序条件，key为属性字段，value="DESC" 为倒序，value="ASC"为正序。
     *
     * @param     condition 条件
     * @return    结果List
     */
    List<T> select(Condition condition);

    /**
     * 条件分页排序查询
     * 1.查询条件clauses和排序条件sortMap都可以为空
     * 2.如果查询条件和排序map都为空，则返回所有数据
     * 3.clauses定义匹查询条件
     * 4.sortMap定义排序条件，key为属性字段，value="DESC" 为倒序，value="ASC"为正序。
     *
     * @param condition   条件
     * @return         结果List
     */
    PageInfo<T> selectPage(Condition condition);

}

```

同时创建接口实现类时需要继承自定义的`BaseServiceImpl`类，该类实现了`BaseService`接口的所有方法，这样可以达到不用书写这些接口，就可在需要的时候
调用，如果需要自定义某个方法时，只需要实通过`@Override`重写某个方法即可。

```java

package com.cqjtu.studentdocument.service.Impl;


import com.alibaba.fastjson.JSONObject;
import com.cqjtu.studentdocument.dao.BaseDao;
import com.cqjtu.studentdocument.service.BaseService;
import com.cqjtu.studentdocument.utils.dto.Clause;
import com.cqjtu.studentdocument.utils.dto.Condition;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import tk.mybatis.mapper.entity.EntityColumn;
import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.mapperhelper.EntityHelper;

import javax.persistence.Id;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author pengyangyan
 */
@Slf4j
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true,rollbackFor = Exception.class)
public abstract class BaseServiceImpl<T, M extends BaseDao<T>> implements BaseService<T> {


    private Class<?> clazz = (Class<?>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];

    @Autowired
    protected M entityDao;


    @Override
    public List<T> selectAll() {
        return entityDao.selectAll();
    }

    @Override
    public T selectByKey(Serializable key) {
        log.info("执行筛选==>参数为【"+key+"】");
        return entityDao.selectByPrimaryKey(key);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int insert(T entity) {
        log.info("执行插入==>参数为【"+entity+"】");
        return entityDao.insertSelective(entity);
    }


    @Override
    @Transactional(rollbackFor = Exception.class)
    public int deleteByKey(Serializable key) {
        log.info("执行删除==>参数为【"+key+"】");
        return entityDao.deleteByPrimaryKey(key);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int deletes(List<String> keys) {
        log.info("执行批量删除==>参数为【"+keys+"】");
        String keyName = null;
        Field[] fields = clazz.getDeclaredFields();
        for (Field field : fields) {
            if (field.isAnnotationPresent(Id.class)) {
                keyName = field.getName();
                break;
            }
        }
        Example example = new Example(clazz);
        example.createCriteria().andIn(keyName,keys);
        return entityDao.deleteByExample(example);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int delete(T entity) {
        log.info("执行删除==>参数为【"+entity+"】");
        if (entity != null){
            return entityDao.delete(entity);
        }
        return 0;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int update(T entity) {
        log.info("执行修改==>参数为【"+entity+"】");
        return entityDao.updateByPrimaryKeySelective(entity);
    }

    @Override
    public List<T> selectByExample(Example example) {
        return entityDao.selectByExample(example);
    }

    @Override
    public List<T> select(Condition condition) {
        log.info("执行条件查询===>参数为【"+JSONObject.toJSONString(condition) +"】");
        Map<String, EntityColumn> propertyMap = EntityHelper.getEntityTable(clazz).getPropertyMap();
        Example example = new Example(clazz);
        List<Clause> clauses = condition.getClauses();
        if (!CollectionUtils.isEmpty(clauses)) {
            Example.Criteria criteria = example.createCriteria();
            clauses.forEach(clause -> {
                if(!StringUtils.isEmpty(clause.getColumn())){
                    if("isNull".equalsIgnoreCase(clause.getOperation())){
                        criteria.andIsNull(clause.getColumn());
                    }
                    if("isNotNull".equalsIgnoreCase(clause.getOperation())) {
                        criteria.andIsNotNull(clause.getColumn());
                    }
                    else{
                        if (!StringUtils.isEmpty(clause.getValue())) {
                            if("between".equalsIgnoreCase(clause.getOperation())){
                                ArrayList<?> list= (ArrayList<?>) clause.getValue();
                                criteria.andBetween(clause.getColumn(),list.get(0),list.get(1));
                            }
                            if ("like".equalsIgnoreCase(clause.getOperation())) {
                                criteria.andLike(clause.getColumn(), "%" + clause.getValue() + "%");
                            }
                            if("=".equalsIgnoreCase(clause.getOperation())) {
                                criteria.andCondition(propertyMap.get(clause.getColumn()).getColumn() + clause.getOperation(), clause.getValue());
                            }
                        }
                    }
                }
            });
        }

        Map<String, Object> sortMap = condition.getSortMap();
        if (sortMap.size()>0) {
            StringBuffer sb = new StringBuffer();
            sortMap.forEach((k, v) -> {
                if (!StringUtils.isEmpty(k) && !StringUtils.isEmpty(v)) {
                    sb.append(propertyMap.get(k).getColumn());
                    sb.append(" ");
                    sb.append(v);
                    sb.append(",");
                }
            });
            if (sb.toString().endsWith(",")) {
                sb.deleteCharAt(sb.length() - 1);
            }
            example.setOrderByClause(sb.toString());
        }
        return selectByExample(example);
    }

    @Override
    public PageInfo<T> selectPage(Condition condition) {
        PageHelper.startPage(condition.getPageNum(), condition.getPageSize());
        List<T> list = select(condition);
        return new PageInfo<>(list);
    }
}

```

> Web层

在web层，项目定义了一个`BaseController`的抽象类,里面实体了基本的增删改查的接口定义。再我们创建某个模块的Controller时只需要继承该类就
可达到不用在创建的类下面定义接口，也会自动拥有相关接口，如果需要对某个接口方法做定制时，只需要重新某个方法就可以了。

```java

package com.cqjtu.studentdocument.controller;

import com.cqjtu.studentdocument.advice.ExceptionEnums;
import com.cqjtu.studentdocument.advice.MyException;
import com.cqjtu.studentdocument.service.BaseService;
import com.cqjtu.studentdocument.utils.dto.Condition;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.io.Serializable;
import java.util.List;


/**
 * @author pengyangyan
 */
@Slf4j
public abstract class BaseController<S extends BaseService<T>,T,ID extends Serializable> {

    @Autowired
    protected S service;

    @ApiOperation(value = "基础接口: 新增操作")
    @PostMapping(value = "add")
    public ResponseEntity<T> save(@RequestBody T entity){
        try {
            if ( service.insert(entity)<1){
                throw new MyException(ExceptionEnums.ADD_ERROR);
            }
        }catch (Exception e){
            log.error(e.getMessage());
            throw new MyException(ExceptionEnums.ADD_ERROR);
        }
        return ResponseEntity.ok(entity);
    }

    @ApiOperation(value = "基础接口: 返回指定ID的数据")
    @GetMapping(value = "get/{id}")
    public ResponseEntity<T> get(@PathVariable("id")ID id){
        T t = null;
        try {
            t = service.selectByKey(id);
        }catch (Exception e){
            log.error(e.getMessage());
            throw new MyException(ExceptionEnums.GET_ITEM);
        }
        return ResponseEntity.ok(t);
    }

    @ApiOperation(value = "基础接口: 返回所有数据")
    @GetMapping(value = "all")
    public ResponseEntity<List<T>> all(){
        List<T> list;
        try {
            list = service.selectAll();
        }catch (Exception e){
            log.error(e.getMessage());
            throw new MyException(ExceptionEnums.GET_LIST_ERROR);
        }
        return ResponseEntity.ok(list);
    }

    @ApiOperation(value = "基础接口: 分页返回数据")
    @PostMapping(value = "page")
    public ResponseEntity<PageInfo<T>> page(@RequestBody Condition condition){
        PageInfo<T> page ;
        try {
            page = service.selectPage(condition);
        }catch (Exception e){
            log.error(e.getMessage());
            throw new MyException(ExceptionEnums.GET_LIST_ERROR);
        }
        return ResponseEntity.ok(page);
    }

    @ApiOperation(value = "基础接口: 修改数据")
    @PostMapping(value = "update")
    public ResponseEntity<T> update(@RequestBody T entity){
        try {
            if (service.update(entity)<1){
                throw new MyException(ExceptionEnums.UPDATE_ERROR);
            }
        }catch (Exception e){
            log.error(e.getMessage());
            throw new MyException(ExceptionEnums.UPDATE_ERROR);
        }
        return ResponseEntity.ok(entity);
    }

    @ApiOperation(value = "基础接口: 删除指定ID的数据")
    @GetMapping(value = "delete/{id}")
    public ResponseEntity<String> delete(@PathVariable("id")ID id){
        try {
            if ( service.deleteByKey(id)<1){
                throw new MyException(ExceptionEnums.DELETE_ERROR);
            }
        } catch (Exception e){
            log.error(e.getMessage());
            throw new MyException(ExceptionEnums.DELETE_ERROR);
        }
        return ResponseEntity.ok("删除成功");
    }


}

```

> 权限相关

权限主要采用apache shiro,需要引入相关依赖
```xml
    <dependency>
        <groupId>org.apache.shiro</groupId>
        <artifactId>shiro-core</artifactId>
        <version>1.3.2</version>
    </dependency>
    <dependency>
        <groupId>org.apache.shiro</groupId>
        <artifactId>shiro-spring</artifactId>
        <version>1.3.2</version>
    </dependency>
```
在使用shiro时，需要创建一个realm进行进行权限的授权和认证，同时需要创建一个自定义的凭证验证器来校验密码是否一致。配置好这些后需要定义
一个shiro的配置类`ShiroConfiguration`来配置shiro的权限过滤工厂bean`ShiroFilterFactoryBean`,在里面引入自定义的`AuthRealm`bean以达到权限的校验。
因为项目采用的是前后端分离，会产生跨域请求等问题，所以需要开放所有来源对该服务的请求，所以需要配置相关过滤器`CorsFilter`。
```java
package com.cqjtu.studentdocument.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class CorsFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        servletRequest.setCharacterEncoding("utf-8");
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        //是否支持cookie跨域
        httpServletResponse.setHeader("Access-Control-Allow-Credentials","true");

        //指定允许其他域名访问

        httpServletResponse.setHeader("Access-Control-Allow-Origin", httpServletRequest.getHeader("Origin"));


        //响应头设置
        httpServletResponse.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept,client_id, uuid, Authorization,user-agent,X-XSRF-TOKEN");

        // 设置过期时间
        httpServletResponse.setHeader("Access-Control-Max-Age", "3600");

        //响应类型
        httpServletResponse.setHeader("Access-Control-Allow-Methods", "POST, GET, PUT, OPTIONS, DELETE");

        // 支持HTTP1.1.
        httpServletResponse.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

        // 支持HTTP 1.0. 
        httpServletResponse.setHeader("Pragma", "no-cache");

        httpServletResponse.setHeader("Allow","GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS, PATCH");


        if ("OPTIONS".equals(httpServletRequest.getMethod())) {
            httpServletResponse.setStatus(204);
        }

        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}

```
使用shiro权限验证时，第一次请求为option方式，所以要配置shiro过滤掉option方式，不对此方式做权限拦截。故配置`ShiroFilter`
```java

package com.cqjtu.studentdocument.filter;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;


@Slf4j
public class ShiroFiter extends FormAuthenticationFilter {

    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) {
        boolean allowed = super.isAccessAllowed(request, response, mappedValue);
        if (!allowed) {
            // 判断请求是否是options请求
            String method = WebUtils.toHttp(request).getMethod();
            if (StringUtils.equalsIgnoreCase("OPTIONS", method)) {
                return true;
            }
        }
        return allowed;
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        return super.onAccessDenied(request, response);
    }
}

```
> 其他

项目中定义了全局异常捕获，再项目中需要抛出异常时只需要抛出自定义的异常`MyException`,就可对该异常进行捕获，当用户请求某个接口如果出现异常时，
后台服务就会返回自定义的错误代码，不会出现乱码的情况,以便于前端对返回结果做统一处理或错误拦截。同时我们也可预先自定义需要抛出的错误，在前段可对错误code进行区别，采用不同的样式提示。

```java

package com.cqjtu.studentdocument.advice;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;


@Getter
@NoArgsConstructor
@AllArgsConstructor
public enum ExceptionEnums {

    /**
     * 错误返回信息
     */
    NO_CHECK_INFO(400,"暂无健康档案表，无法进行数据分析"),
    CHOOSE_FILE(400,"文件未上传"),
    IS_NOT_LOGIN(400,"用户未登录"),
    UPLOAD_FAIL(400,"上传失败"),
    RESOURCE_FOUNT_FAIL(400,"获取菜单权限失败！"),
    NOT_AUTHORIZED(403,"您暂无权限访问该资源！"),
    ACCOUNT_IS_EXIT(400,"用户名已存在"),
    PASSWORD_WRONG(400,"密码错误"),
    ACCOUNT_IS_NOT_EXIT(400,"用户名不存在"),
    UPDATE_ERROR(400,"更新失败"),
    ADD_ERROR(400,"新增失败"),
    DELETE_ERROR(400,"删除失败"),
    GET_LIST_ERROR(400,"获取列表失败"),
    GET_ITEM(400,"获取对象失败"),
    NO_WEIGHT_HEIGHT(400,"当前档案未完善身高体重信息")
    ;

    /**
     * 代码值
     */
    private int code;
    /**
     * 消息
     */
    private String msg;
}

```


#### 安装教程

1. 克隆下项目
2. mysql本地创建数据库，导入sql文件
3. 修改项目yml数据库配置文件为自己的配置
4. 运行项目
5. 在运行前端项目
