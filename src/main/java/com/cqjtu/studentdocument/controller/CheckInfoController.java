package com.cqjtu.studentdocument.controller;

import com.cqjtu.studentdocument.entity.CheckInfo;
import com.cqjtu.studentdocument.service.CheckInfoService;
import io.swagger.annotations.Api;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Api(description = "体检表信息接口")
@Controller
@RequestMapping(value = "api/checkInfo")
public class CheckInfoController extends BaseController<CheckInfoService,CheckInfo,Integer> {

    /**
     * 判断体检表是否存在
     * @param userId 用户id
     * @param checkYear 检查年份
     * @return 是否存在
     */
    @GetMapping("/judgeCheckIsExist")
    ResponseEntity judgeCheckIsExist(Integer userId,String checkYear){
        Example example = new Example(CheckInfo.class);
        example.createCriteria().andEqualTo("userId",userId).andEqualTo("checkYear",checkYear);
        List<CheckInfo> checkInfos = this.service.selectByExample(example);
        if (checkInfos==null || checkInfos.size()==0){
            return ResponseEntity.ok(true);
        }else {
            return ResponseEntity.ok(false);
        }
    }

}

