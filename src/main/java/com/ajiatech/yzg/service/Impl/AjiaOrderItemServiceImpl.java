package com.ajiatech.yzg.service.Impl;

import com.ajiatech.yzg.mapper.AjiaOrderItemMapper;
import com.ajiatech.yzg.pojo.AjiaOrderItem;
import com.ajiatech.yzg.pojo.AjiaOrderItemExample;
import com.ajiatech.yzg.service.AjiaOrderItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AjiaOrderItemServiceImpl implements AjiaOrderItemService {
    @Autowired
    private AjiaOrderItemMapper orderItemMapper;

    public List<AjiaOrderItem> findByOrderId(String orderId) {
        AjiaOrderItemExample example = new AjiaOrderItemExample();
        example.createCriteria().andOrderIdEqualTo(orderId);
        return orderItemMapper.selectByExample(example);
    }
}
