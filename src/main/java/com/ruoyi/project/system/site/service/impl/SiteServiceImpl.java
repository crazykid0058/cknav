package com.ruoyi.project.system.site.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.site.mapper.SiteMapper;
import com.ruoyi.project.system.site.domain.Site;
import com.ruoyi.project.system.site.service.ISiteService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 网页Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-06-27
 */
@Service
public class SiteServiceImpl implements ISiteService
{
    @Autowired
    private SiteMapper siteMapper;

    /**
     * 查询网页
     * 
     * @param id 网页ID
     * @return 网页
     */
    @Override
    public Site selectSiteById(Long id)
    {
        return siteMapper.selectSiteById(id);
    }

    /**
     * 查询网页
     *
     * @param kindId
     * @return 网页
     */
    @Override
    public List<Site> selectSiteListByKind(Long kindId) {
        return siteMapper.selectSiteListByKind(kindId);
    }

    /**
     * 查询网页列表
     * 
     * @param site 网页
     * @return 网页
     */
    @Override
    public List<Site> selectSiteList(Site site)
    {
        return siteMapper.selectSiteList(site);
    }

    /**
     * 新增网页
     * 
     * @param site 网页
     * @return 结果
     */
    @Override
    public int insertSite(Site site)
    {
        return siteMapper.insertSite(site);
    }

    /**
     * 修改网页
     * 
     * @param site 网页
     * @return 结果
     */
    @Override
    public int updateSite(Site site)
    {
        return siteMapper.updateSite(site);
    }

    /**
     * 删除网页对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSiteByIds(String ids)
    {
        return siteMapper.deleteSiteByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除网页信息
     * 
     * @param id 网页ID
     * @return 结果
     */
    @Override
    public int deleteSiteById(Long id)
    {
        return siteMapper.deleteSiteById(id);
    }
}
