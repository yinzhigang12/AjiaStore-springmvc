package com.ajiatech.yzg.service.Impl;

import com.ajiatech.yzg.mapper.AjiaItemDescMapper;
import com.ajiatech.yzg.pojo.AjiaItemDesc;
import com.ajiatech.yzg.service.AjiaItemDescService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AjiaItemDescServiceImpl implements AjiaItemDescService {
    @Autowired
    private AjiaItemDescMapper itemDescMapper;

    public AjiaItemDesc findById(Long id) {
        return itemDescMapper.selectByPrimaryKey(id);
    }
}
