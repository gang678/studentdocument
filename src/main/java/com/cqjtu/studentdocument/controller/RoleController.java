package com.cqjtu.studentdocument.controller;

import com.cqjtu.studentdocument.entity.Role;
import com.cqjtu.studentdocument.service.RoleService;
import io.swagger.annotations.Api;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.stream.Collectors;


@Api(description = "角色相关接口")
@Controller
@RequestMapping(value = "api/role")
public class RoleController extends BaseController<RoleService, Role, Integer> {

    @Override
    @RequiresPermissions("role:add")
    public ResponseEntity<Role> save(@RequestBody Role entity) {
        return super.save(entity);
    }

    @Override
    @RequiresPermissions("role:update")
    public ResponseEntity<Role> update(@RequestBody Role entity) {
        return super.update(entity);
    }

    @Override
    @RequiresPermissions("role:delete")
    public ResponseEntity<String> delete(@PathVariable("id") Integer id) {
        return super.delete(id);
    }

    @GetMapping("/list")
    public ResponseEntity<List<Role>> list() {
        List<Role> roles = service.selectAll();
        if (!CollectionUtils.isEmpty(roles)) {
            return ResponseEntity.ok(roles.stream().filter(v -> v.getRoleName().contains("医生") || v.getRoleName().contains("用户")).collect(Collectors.toList()));
        }
        return ResponseEntity.ok(roles);
    }
}
