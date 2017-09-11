package com.ajiatech.yzg.service.Impl;

import com.ajiatech.yzg.mapper.AjiaOrderItemMapper;
import com.ajiatech.yzg.mapper.AjiaOrderMapper;
import com.ajiatech.yzg.pojo.AjiaOrder;
import com.ajiatech.yzg.pojo.AjiaOrderExample;
import com.ajiatech.yzg.pojo.AjiaOrderExample.Criteria;
import com.ajiatech.yzg.pojo.AjiaOrderItem;
import com.ajiatech.yzg.service.AjiaOrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AjiaOrderServiceImpl implements AjiaOrderService {
    @Autowired
    private AjiaOrderMapper orderMapper;
    @Autowired
    private AjiaOrderItemMapper orderItemMapper;
    @Value("${PAGE_SIZE}")
    private int PAGE_SIZE;

    public void saveOrder(AjiaOrder order, List<AjiaOrderItem> orderItems) {
        orderMapper.insert(order);
        for (AjiaOrderItem item : orderItems) {
            orderItemMapper.insert(item);
        }
    }

    public AjiaOrder findById(String orderId) {
        return orderMapper.selectByPrimaryKey(orderId);
    }

    public PageInfo<AjiaOrder> findByUserId(Long userId, String code, int page) {
        AjiaOrderExample example = new AjiaOrderExample();
        Criteria criteria = example.createCriteria();
        criteria.andUserIdEqualTo(userId).andStatusNotEqualTo(9);
        switch (code) {
            case "wait_pay":
                criteria.andStatusEqualTo(1);
                break;
            case "wait_send":
                criteria.andStatusGreaterThanOrEqualTo(2).andStatusLessThanOrEqualTo(3);
                break;
            case "wait_get":
                criteria.andStatusGreaterThanOrEqualTo(4).andStatusLessThanOrEqualTo(5);
                break;
            case "wait_ass":
                criteria.andStatusEqualTo(6);
                break;
        }
        PageHelper.startPage(page, PAGE_SIZE);
        PageHelper.orderBy("create_time desc");
        List<AjiaOrder> orders = orderMapper.selectByExample(example);

        PageInfo<AjiaOrder> aos = new PageInfo<AjiaOrder>(orders);
        return aos;
    }

    public void updateOrderStatus(AjiaOrder order) {
        orderMapper.updateByPrimaryKeySelective(order);
    }
}
