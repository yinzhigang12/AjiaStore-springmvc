package com.ajiatech.yzg.service;

import com.ajiatech.yzg.pojo.AjiaOrderItem;

import java.util.List;

public interface AjiaOrderItemService {
    List<AjiaOrderItem> findByOrderId(String orderId);
}
