package com.ajiatech.yzg.service.Impl;

import com.ajiatech.yzg.mapper.AjiaItemMapper;
import com.ajiatech.yzg.pojo.AjiaItem;
import com.ajiatech.yzg.service.AjiaItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AjiaItemServiceImpl implements AjiaItemService {
    @Autowired
    private AjiaItemMapper itemMapper;

    public AjiaItem findByItemId(Long itemId) {
        return itemMapper.selectByPrimaryKey(itemId);
    }

    public List<AjiaItem> findMatchItem(Long itemId, String brand) {
        AjiaItem item = new AjiaItem();
        item.setBrand(brand);
        item.setTitle(itemId / 100 + "__");
        List<AjiaItem> items = itemMapper.selectMatchItems(item);
        return items;
    }
}
