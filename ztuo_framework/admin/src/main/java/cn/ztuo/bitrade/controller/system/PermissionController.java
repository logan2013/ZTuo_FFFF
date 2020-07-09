package cn.ztuo.bitrade.controller.system;

import com.mysema.commons.lang.Assert;
import com.querydsl.core.types.dsl.BooleanExpression;
import cn.ztuo.bitrade.annotation.AccessLog;
import cn.ztuo.bitrade.constant.AdminModule;
import cn.ztuo.bitrade.constant.PageModel;
import cn.ztuo.bitrade.controller.BaseController;
import cn.ztuo.bitrade.entity.QSysPermission;
import cn.ztuo.bitrade.entity.SysPermission;
import cn.ztuo.bitrade.service.SysPermissionService;
import cn.ztuo.bitrade.util.MessageResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;


@RestController
@RequestMapping("/system/permission")
public class PermissionController extends BaseController {

    @Autowired
    private SysPermissionService sysPermissionService;

    @RequiresPermissions("system:permission:merge")
    @PostMapping("/merge")
    @AccessLog(module = AdminModule.SYSTEM, operation = "创建/修改权限")
    public MessageResult merge(@Valid SysPermission permission) {
        if(permission.getId()==null) {
            SysPermission data = sysPermissionService.findByPermissionName(permission.getName());
            if (data != null) {
                return error("权限名重复");
            }
        }else {
            SysPermission data = sysPermissionService.findOne(permission.getId());
            if(!data.getName().equalsIgnoreCase(permission.getName())){
                SysPermission s =  sysPermissionService.findByPermissionName(permission.getName());
                if(s!=null){
                    return error("权限名重复");
                }
            }
        }
        permission = sysPermissionService.save(permission);
        MessageResult result = success("保存权限成功");
        result.setData(permission);
        return result;
    }


    @RequiresPermissions("system:permission:page-query")
    @PostMapping("/page-query")
    @AccessLog(module = AdminModule.SYSTEM, operation = "分页查询权限")
    public MessageResult pageQuery(PageModel pageModel,
                                   @RequestParam(value = "parentId", required = false) Long parentId) {
        BooleanExpression predicate = null;
        if (parentId != null) {
            predicate = QSysPermission.sysPermission.parentId.eq(parentId);
            if ((parentId+"").equals("0")){
                pageModel.setPageSize(100);
            }
        }
        Page<SysPermission> all = sysPermissionService.findAll(predicate, pageModel.getPageable());
        return success(all);
    }

    @RequiresPermissions("system:permission:detail")
    @PostMapping("/detail")
    @AccessLog(module = AdminModule.SYSTEM, operation = "权限详情")
    public MessageResult detail(@RequestParam(value = "id") Long id) {
        SysPermission sysPermission = sysPermissionService.findOne(id);
        Assert.notNull(sysPermission, "该权限不存在");
        return MessageResult.getSuccessInstance("查询权限成功", sysPermission);
    }

    @RequiresPermissions("system:permission:deletes")
    @PostMapping("/deletes")
    @AccessLog(module = AdminModule.SYSTEM, operation = "批量删除权限")
    public MessageResult deletes(@RequestParam(value = "ids") Long[] ids) {
        sysPermissionService.deletes(ids);
        return MessageResult.success("批量删除权限成功");
    }

}
