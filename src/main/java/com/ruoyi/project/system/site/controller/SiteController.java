package com.ruoyi.project.system.site.controller;

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
import com.ruoyi.project.system.site.domain.Site;
import com.ruoyi.project.system.site.service.ISiteService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 网页Controller
 * 
 * @author ruoyi
 * @date 2021-06-27
 */
@Controller
@RequestMapping("/system/site")
public class SiteController extends BaseController
{
    private String prefix = "system/site";

    @Autowired
    private ISiteService siteService;

    @RequiresPermissions("system:site:view")
    @GetMapping()
    public String site()
    {
        return prefix + "/site";
    }

    /**
     * 查询网页列表
     */
    @RequiresPermissions("system:site:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Site site)
    {
        startPage();
        List<Site> list = siteService.selectSiteList(site);
        return getDataTable(list);
    }

    /**
     * 导出网页列表
     */
    @RequiresPermissions("system:site:export")
    @Log(title = "网页", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Site site)
    {
        List<Site> list = siteService.selectSiteList(site);
        ExcelUtil<Site> util = new ExcelUtil<Site>(Site.class);
        return util.exportExcel(list, "网页数据");
    }

    /**
     * 新增网页
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存网页
     */
    @RequiresPermissions("system:site:add")
    @Log(title = "网页", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Site site)
    {
        return toAjax(siteService.insertSite(site));
    }

    /**
     * 修改网页
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Site site = siteService.selectSiteById(id);
        mmap.put("site", site);
        return prefix + "/edit";
    }

    /**
     * 修改保存网页
     */
    @RequiresPermissions("system:site:edit")
    @Log(title = "网页", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Site site)
    {
        return toAjax(siteService.updateSite(site));
    }

    /**
     * 删除网页
     */
    @RequiresPermissions("system:site:remove")
    @Log(title = "网页", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(siteService.deleteSiteByIds(ids));
    }
}
