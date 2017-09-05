package com.ajiatech.yzg.mapper;

import com.ajiatech.yzg.pojo.AjiaCollectItem;
import com.ajiatech.yzg.pojo.AjiaCollectItemExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface AjiaCollectItemMapper {
    long countByExample(AjiaCollectItemExample example);

    int deleteByExample(AjiaCollectItemExample example);

    int deleteByPrimaryKey(Long id);

    int insert(AjiaCollectItem record);

    int insertSelective(AjiaCollectItem record);

    List<AjiaCollectItem> selectByExample(AjiaCollectItemExample example);

    AjiaCollectItem selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") AjiaCollectItem record, @Param("example") AjiaCollectItemExample example);

    int updateByExample(@Param("record") AjiaCollectItem record, @Param("example") AjiaCollectItemExample example);

    int updateByPrimaryKeySelective(AjiaCollectItem record);

    int updateByPrimaryKey(AjiaCollectItem record);
}