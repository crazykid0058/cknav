package com.ruoyi.project.system.site.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 网页对象 sys_site
 * 
 * @author ruoyi
 * @date 2021-06-27
 */
public class Site extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 网页id */
    private Long id;

    /** 网页名称 */
    @Excel(name = "网页名称")
    private String name;

    /** 网页链接 */
    @Excel(name = "网页链接")
    private String url;

    /** 网页分类 */
    @Excel(name = "网页分类")
    private Long kindid;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }
    public void setUrl(String url)
    {
        this.url = url;
    }

    public String getUrl()
    {
        return url;
    }
    public void setKindid(Long kindid)
    {
        this.kindid = kindid;
    }

    public Long getKindid()
    {
        return kindid;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("url", getUrl())
            .append("kindid", getKindid())
            .toString();
    }
}
