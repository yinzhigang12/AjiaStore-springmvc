package com.ajiatech.yzg.service;

import com.ajiatech.yzg.pojo.AjiaCartItem;

import java.util.List;

public interface AjiaCartService {
    void insertToCart(AjiaCartItem cartItem);

    List<AjiaCartItem> findByUserId(Long userId);

    void updateCartItem(AjiaCartItem cartItem);

    void deleteItems(Long[] itemId);

    AjiaCartItem findById(long id);
}
