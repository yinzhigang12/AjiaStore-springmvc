package com.ajiatech.yzg.service.Impl;

import com.ajiatech.yzg.mapper.AjiaItemParamMapper;
import com.ajiatech.yzg.pojo.AjiaItemParam;
import com.ajiatech.yzg.service.AjiaItemParamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AjiaItemParamServiceImpl implements AjiaItemParamService {
    @Autowired
    private AjiaItemParamMapper itemParamMapper;

    public AjiaItemParam findById(Long id) {
        return itemParamMapper.selectByPrimaryKey(id);
    }
}
