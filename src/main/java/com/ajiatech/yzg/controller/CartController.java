package com.ajiatech.yzg.controller;

import com.ajiatech.yzg.common.pojo.AjiaResult;
import com.ajiatech.yzg.common.utils.JsonUtils;
import com.ajiatech.yzg.pojo.*;
import com.ajiatech.yzg.service.AjiaCartService;
import com.ajiatech.yzg.service.AjiaItemParamItemService;
import com.ajiatech.yzg.service.AjiaItemService;
import com.ajiatech.yzg.service.AjiaShippingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private AjiaCartService cartService;
    @Autowired
    private AjiaItemService itemService;
    @Autowired
    private AjiaItemParamItemService itemParamItemService;
    @Autowired
    private AjiaShippingService shippingService;

    @RequestMapping("/orderConfirm")
    public String orderConfirm(String itemIds, Model model) {
        Long userId = 14L;
        List<AjiaShipping> shippings = shippingService.findByUserId(userId);
        String[] ids = itemIds.split(",");
        List<AjiaCartItem> cartItems = new ArrayList<AjiaCartItem>();
        for (String id : ids) {
            AjiaCartItem cartItem = cartService.findById(Long.parseLong(id));
            cartItems.add(cartItem);
        }
        List<CartItemVo> vos = getCartItemVos(cartItems);
        model.addAttribute("shippings", shippings);
        model.addAttribute("vos", vos);
        model.addAttribute("itemIds", itemIds);
        return "orderConfirm";
    }

    @RequestMapping("/delCartItems")
    public String delCartItems(Long[] itemId) {
        cartService.deleteItems(itemId);
        return "redirect:/cart/toCart.html";
    }

    @RequestMapping("/delCartItem")
    public String delCartItem(AjiaCartItem cartItem) {
        cartItem.setStatus(2);
        cartService.updateCartItem(cartItem);
        return "redirect:/cart/toCart.html";
    }

    @RequestMapping("/changeCartNum")
    @ResponseBody
    public AjiaResult changeCartNum(AjiaCartItem cartItem) {
        cartService.updateCartItem(cartItem);
        return AjiaResult.ok();
    }

    @RequestMapping("/toCart")
    public String toCart(Model model) {
        Long userId = 14L;
        List<AjiaCartItem> cartItems = cartService.findByUserId(userId);
        List<CartItemVo> vos = getCartItemVos(cartItems);
        model.addAttribute("cartItemVos", vos);
        return "cart";
    }

    private List<CartItemVo> getCartItemVos(List<AjiaCartItem> cartItems) {
        List<CartItemVo> vos = new ArrayList<CartItemVo>();
        for (AjiaCartItem cartItem : cartItems) {
            CartItemVo vo = new CartItemVo();
            vo.setCartItem(cartItem);
            long itemId = cartItem.getItemId();
            AjiaItem item = itemService.findByItemId(itemId);
            vo.setItem(item);
            AjiaItemParamItem ipi = itemParamItemService.findByItemId(itemId);
            List<GroupParam> gps = JsonUtils.jsonToList(ipi.getParamData(), GroupParam.class);
            if (gps != null && gps.size() > 0) {
                List<Params> params = gps.get(0).getParams();
                vo.setParams(params);
            }
            vos.add(vo);
        }
        return vos;
    }

    @RequestMapping("/insertToCart")
    @ResponseBody
    public AjiaResult insertToCart(AjiaCartItem cartItem) {
        Long userId = 14L;
        cartItem.setCreated(new Date());
        cartItem.setUpdated(new Date());
        cartItem.setStatus(1);
        cartItem.setUserId(userId);
        cartService.insertToCart(cartItem);
        return AjiaResult.ok();
    }
}
