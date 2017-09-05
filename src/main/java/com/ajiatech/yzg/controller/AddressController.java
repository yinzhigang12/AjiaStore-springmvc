package com.ajiatech.yzg.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ajiatech.yzg.common.pojo.AjiaResult;
import com.ajiatech.yzg.pojo.AjiaShipping;
import com.ajiatech.yzg.service.AjiaShippingService;
import com.ajiatech.yzg.service.Impl.AjiaShippingServiceImpl;

@Controller
@RequestMapping("/addr")
public class AddressController {
    @Autowired
    AjiaShippingService shippingService;

    @RequestMapping("/getDefault")
    @ResponseBody
    public AjiaResult getDefault() {
        Long userId = 14L;
        AjiaShipping shipping = shippingService.getDefaultAddress(userId);
        return AjiaResult.ok(shipping);
    }

    @RequestMapping("/addressAdmin")
    public String addressAdmin(Model model) {
        Long userId = 14L;
        List<AjiaShipping> shippings = shippingService.findByUserId(userId);
        model.addAttribute("shippings", shippings);
        return "addressAdmin";
    }

    @RequestMapping("/saveAddress")
    public String saveAddress(AjiaShipping shipping) {
        shipping.setCreated(new Date());
        shipping.setUpdated(new Date());
        shipping.setIsDefault(false);
        shipping.setStatus((byte) 1);
        shipping.setUserId(14L);
        shippingService.save(shipping);
        return "redirect:/addr/addressAdmin.html";
    }

    @RequestMapping("delete")
    public String delete(Long addId) {
        shippingService.delete(addId);
        return "redirect:/addr/addressAdmin.html";
    }

    @RequestMapping("/setDefault")
    @ResponseBody
    public AjiaResult setDefault(Long addId) {
        shippingService.updateDefault(addId);
        return AjiaResult.ok();
    }

}
