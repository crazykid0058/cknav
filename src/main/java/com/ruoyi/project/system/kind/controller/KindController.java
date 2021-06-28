package com.ruoyi.project.system.kind.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.system.kind.domain.Kind;
import com.ruoyi.project.system.kind.service.IKindService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 分类Controller
 * 
 * @author ruoyi
 * @date 2021-06-27
 */
@Controller
@RequestMapping("/system/kind")
public class KindController extends BaseController
{
    private String prefix = "system/kind";

    @Autowired
    private IKindService kindService;

    @RequiresPermissions("system:kind:view")
    @GetMapping()
    public String kind()
    {
        return prefix + "/kind";
    }

    /**
     * 查询分类列表
     */
    @RequiresPermissions("system:kind:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Kind kind)
    {
        startPage();
        List<Kind> list = kindService.selectKindList(kind);
        return getDataTable(list);
    }

    /**
     * 导出分类列表
     */
    @RequiresPermissions("system:kind:export")
    @Log(title = "分类", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Kind kind)
    {
        List<Kind> list = kindService.selectKindList(kind);
        ExcelUtil<Kind> util = new ExcelUtil<Kind>(Kind.class);
        return util.exportExcel(list, "分类数据");
    }

    /**
     * 新增分类
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存分类
     */
    @RequiresPermissions("system:kind:add")
    @Log(title = "分类", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Kind kind)
    {
        return toAjax(kindService.insertKind(kind));
    }

    /**
     * 修改分类
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Kind kind = kindService.selectKindById(id);
        mmap.put("kind", kind);
        return prefix + "/edit";
    }

    /**
     * 修改保存分类
     */
    @RequiresPermissions("system:kind:edit")
    @Log(title = "分类", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Kind kind)
    {
        return toAjax(kindService.updateKind(kind));
    }

    /**
     * 删除分类
     */
    @RequiresPermissions("system:kind:remove")
    @Log(title = "分类", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(kindService.deleteKindByIds(ids));
    }
}
