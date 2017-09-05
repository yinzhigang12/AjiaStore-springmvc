package com.ajiatech.yzg.controller;

import com.ajiatech.yzg.common.utils.JsonUtils;
import com.ajiatech.yzg.pojo.*;
import com.ajiatech.yzg.service.AjiaItemParamItemService;
import com.ajiatech.yzg.service.AjiaItemParamService;
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
    @Autowired
    private AjiaItemParamService itemParamService;

    @RequestMapping("/toItemInfo/{itemId}")
    public String toItemInfo(Model model, @PathVariable(required = true, name = "itemId") Long itemId) {
        AjiaItem item = itemService.findByItemId(itemId);
        model.addAttribute("item", item);
        AjiaItemParamItem ipi = itemParamItemService.findByItemId(itemId);
        String json = ipi.getParamData();

        List<GroupParam> groupParams = JsonUtils.jsonToList(json, GroupParam.class);
        if (groupParams != null && groupParams.size() > 0) {
            List<Params> params = groupParams.get(1).getParams();
            model.addAttribute("picParams", params);
        }

        AjiaItemParam ip = itemParamService.findById(ipi.getItemParamId());
        json = ip.getParamData();
        List<GroupParam> allGroupParams = JsonUtils.jsonToList(json, GroupParam.class);
        if (allGroupParams != null && allGroupParams.size() > 0) {
            List<Params> allParams = allGroupParams.get(0).getParams();
            model.addAttribute("allParams", allParams);
        }
        return "product_details";
    }
}
