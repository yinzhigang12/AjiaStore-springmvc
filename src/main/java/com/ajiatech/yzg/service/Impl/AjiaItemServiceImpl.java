package com.ajiatech.yzg.service.Impl;

import com.ajiatech.yzg.mapper.AjiaItemMapper;
import com.ajiatech.yzg.pojo.AjiaItem;
import com.ajiatech.yzg.service.AjiaItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AjiaItemServiceImpl implements AjiaItemService {
    @Autowired
    private AjiaItemMapper itemMapper;

    public AjiaItem findByItemId(Long itemId) {
        return itemMapper.selectByPrimaryKey(itemId);
    }
}
