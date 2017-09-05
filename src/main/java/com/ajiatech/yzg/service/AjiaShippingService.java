package com.ajiatech.yzg.service;

import java.util.List;

import com.ajiatech.yzg.pojo.AjiaShipping;

public interface AjiaShippingService {
    public void save(AjiaShipping shipping);

    public List<AjiaShipping> findByUserId(long userId);

    public void delete(Long addId);

    public void updateDefault(Long addId);

    public AjiaShipping getDefaultAddress(Long userId);

}
