package com.ruoyi.project.system.kind.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 分类对象 sys_kind
 * 
 * @author ruoyi
 * @date 2021-06-27
 */
public class Kind extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 分类id */
    private Long id;

    /** 分类名称 */
    @Excel(name = "分类名称")
    private String name;

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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .toString();
    }
}
