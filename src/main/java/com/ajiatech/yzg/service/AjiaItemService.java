package com.ajiatech.yzg.service;

import com.ajiatech.yzg.pojo.AjiaItem;

import java.util.List;

public interface AjiaItemService {
    public AjiaItem findByItemId(Long itemId);

    public List<AjiaItem> findMatchItem(Long itemId, String brand);
}
