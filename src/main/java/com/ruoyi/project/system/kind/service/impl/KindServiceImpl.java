package com.ruoyi.project.system.kind.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.kind.mapper.KindMapper;
import com.ruoyi.project.system.kind.domain.Kind;
import com.ruoyi.project.system.kind.service.IKindService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 分类Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-06-27
 */
@Service
public class KindServiceImpl implements IKindService 
{
    @Autowired
    private KindMapper kindMapper;

    /**
     * 查询分类
     * 
     * @param id 分类ID
     * @return 分类
     */
    @Override
    public Kind selectKindById(Long id)
    {
        return kindMapper.selectKindById(id);
    }

    /**
     * 查询分类列表
     * 
     * @param kind 分类
     * @return 分类
     */
    @Override
    public List<Kind> selectKindList(Kind kind)
    {
        return kindMapper.selectKindList(kind);
    }

    /**
     * 新增分类
     * 
     * @param kind 分类
     * @return 结果
     */
    @Override
    public int insertKind(Kind kind)
    {
        return kindMapper.insertKind(kind);
    }

    /**
     * 修改分类
     * 
     * @param kind 分类
     * @return 结果
     */
    @Override
    public int updateKind(Kind kind)
    {
        return kindMapper.updateKind(kind);
    }

    /**
     * 删除分类对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteKindByIds(String ids)
    {
        return kindMapper.deleteKindByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除分类信息
     * 
     * @param id 分类ID
     * @return 结果
     */
    @Override
    public int deleteKindById(Long id)
    {
        return kindMapper.deleteKindById(id);
    }
}
