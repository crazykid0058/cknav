package com.ruoyi.project.system.site.mapper;

import java.util.List;
import com.ruoyi.project.system.site.domain.Site;

/**
 * 网页Mapper接口
 * 
 * @author ruoyi
 * @date 2021-06-27
 */
public interface SiteMapper 
{
    /**
     * 查询网页
     * 
     * @param id 网页ID
     * @return 网页
     */
    public Site selectSiteById(Long id);

    /**
     * 根据kindId查询网页列表
     *
     * @param kindId
     * @return 网页集合
     */
    public List<Site> selectSiteListByKind(Long kindId);

    /**
     * 查询网页列表
     * 
     * @param site 网页
     * @return 网页集合
     */
    public List<Site> selectSiteList(Site site);

    /**
     * 新增网页
     * 
     * @param site 网页
     * @return 结果
     */
    public int insertSite(Site site);

    /**
     * 修改网页
     * 
     * @param site 网页
     * @return 结果
     */
    public int updateSite(Site site);

    /**
     * 删除网页
     * 
     * @param id 网页ID
     * @return 结果
     */
    public int deleteSiteById(Long id);

    /**
     * 批量删除网页
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSiteByIds(String[] ids);
}
