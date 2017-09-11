package com.ajiatech.yzg.service.Impl;

import com.ajiatech.yzg.mapper.AjiaCartItemMapper;
import com.ajiatech.yzg.pojo.AjiaCartItem;
import com.ajiatech.yzg.pojo.AjiaCartItemExample;
import com.ajiatech.yzg.service.AjiaCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class AjiaCartItemServiceImpl implements AjiaCartService {
    @Autowired
    private AjiaCartItemMapper cartItemMapper;

    public void insertToCart(AjiaCartItem cartItem) {
        AjiaCartItemExample example = new AjiaCartItemExample();
        example.createCriteria().andUserIdEqualTo(cartItem.getUserId()).andStatusEqualTo(1).andItemIdEqualTo(cartItem.getUserId());
        List<AjiaCartItem> items = cartItemMapper.selectByExample(example);
        if (items != null && items.size() > 0) {
            AjiaCartItem item = items.get(0);
            item.setNum(item.getNum() + cartItem.getNum());
            item.setUpdated(cartItem.getUpdated());
            cartItemMapper.updateByPrimaryKey(item);
        } else {
            cartItemMapper.insert(cartItem);
        }
    }

    public List<AjiaCartItem> findByUserId(Long userId) {
        AjiaCartItemExample example = new AjiaCartItemExample();
        example.createCriteria().andUserIdEqualTo(userId).andStatusEqualTo(1);
        return cartItemMapper.selectByExample(example);
    }

    public void updateCartItem(AjiaCartItem cartItem) {
        cartItemMapper.updateByPrimaryKeySelective(cartItem);
    }

    public void deleteItems(Long[] itemId) {
        AjiaCartItem cartItem = new AjiaCartItem();
        cartItem.setStatus(2);
        AjiaCartItemExample example = new AjiaCartItemExample();
        example.createCriteria().andIdIn(Arrays.asList(itemId));
        cartItemMapper.updateByExampleSelective(cartItem, example);
    }

    public AjiaCartItem findById(long id) {
        return cartItemMapper.selectByPrimaryKey(id);
    }
}
