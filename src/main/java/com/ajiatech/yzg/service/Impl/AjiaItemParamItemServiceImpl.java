package com.ajiatech.yzg.service.Impl;

import com.ajiatech.yzg.mapper.AjiaItemParamItemMapper;
import com.ajiatech.yzg.pojo.AjiaItemParamItem;
import com.ajiatech.yzg.pojo.AjiaItemParamItemExample;
import com.ajiatech.yzg.service.AjiaItemParamItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AjiaItemParamItemServiceImpl implements AjiaItemParamItemService {
    @Autowired
    private AjiaItemParamItemMapper itemParamItemMapper;

    public AjiaItemParamItem findByItemId(Long itemId) {
        AjiaItemParamItemExample example = new AjiaItemParamItemExample();
        example.createCriteria().andItemIdEqualTo(itemId);
        List<AjiaItemParamItem> is = itemParamItemMapper.selectByExampleWithBLOBs(example);
        if (is != null && is.size() > 0) {
            return is.get(0);
        }
        return null;
    }
}
