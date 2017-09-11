package com.ajiatech.yzg.service;

import com.ajiatech.yzg.pojo.AjiaOrder;
import com.ajiatech.yzg.pojo.AjiaOrderItem;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface AjiaOrderService {
    void saveOrder(AjiaOrder order, List<AjiaOrderItem> orderItems);

    AjiaOrder findById(String orderId);

    PageInfo<AjiaOrder> findByUserId(Long userId, String code, int page);

    void updateOrderStatus(AjiaOrder order);
}
