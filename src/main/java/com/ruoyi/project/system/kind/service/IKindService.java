package com.ruoyi.project.system.kind.service;

import java.util.List;
import com.ruoyi.project.system.kind.domain.Kind;

/**
 * 分类Service接口
 * 
 * @author ruoyi
 * @date 2021-06-27
 */
public interface IKindService 
{
    /**
     * 查询分类
     * 
     * @param id 分类ID
     * @return 分类
     */
    public Kind selectKindById(Long id);

    /**
     * 查询分类列表
     * 
     * @param kind 分类
     * @return 分类集合
     */
    public List<Kind> selectKindList(Kind kind);

    /**
     * 新增分类
     * 
     * @param kind 分类
     * @return 结果
     */
    public int insertKind(Kind kind);

    /**
     * 修改分类
     * 
     * @param kind 分类
     * @return 结果
     */
    public int updateKind(Kind kind);

    /**
     * 批量删除分类
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteKindByIds(String ids);

    /**
     * 删除分类信息
     * 
     * @param id 分类ID
     * @return 结果
     */
    public int deleteKindById(Long id);
}
