package com.ajiatech.yzg.controller;

import com.ajiatech.yzg.common.utils.JsonUtils;
import com.ajiatech.yzg.pojo.AjiaItem;
import com.ajiatech.yzg.pojo.AjiaItemParamItem;
import com.ajiatech.yzg.pojo.GroupParam;
import com.ajiatech.yzg.service.AjiaItemParamItemService;
import com.ajiatech.yzg.service.AjiaItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ItemController {
    @Autowired
    private AjiaItemService itemService;
    @Autowired
    private AjiaItemParamItemService itemParamItemService;

    @RequestMapping("/toItemInfo/{itemId}")
    public String toItemInfo(Model model, @PathVariable(required = true, name = "itemId") Long itemId) {
        AjiaItem item = itemService.findByItemId(itemId);
        model.addAttribute("item", item);
        AjiaItemParamItem ipi = itemParamItemService.findByItemId(itemId);
        String json = ipi.getParamData();
        List<GroupParam> groupParams = JsonUtils.jsonToList(json, GroupParam.class);
        System.out.println(groupParams);
        return "product_details";
    }
}
