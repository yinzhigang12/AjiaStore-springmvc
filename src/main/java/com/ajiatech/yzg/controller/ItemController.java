package com.ajiatech.yzg.controller;

import com.ajiatech.yzg.common.pojo.AjiaResult;
import com.ajiatech.yzg.common.utils.JsonUtils;
import com.ajiatech.yzg.pojo.*;
import com.ajiatech.yzg.service.AjiaItemDescService;
import com.ajiatech.yzg.service.AjiaItemParamItemService;
import com.ajiatech.yzg.service.AjiaItemParamService;
import com.ajiatech.yzg.service.AjiaItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ItemController {
    @Autowired
    private AjiaItemService itemService;
    @Autowired
    private AjiaItemParamItemService itemParamItemService;
    @Autowired
    private AjiaItemParamService itemParamService;
    @Autowired
    private AjiaItemDescService itemDescService;

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
            model.addAttribute("myParams", groupParams.get(0).getParams());
        }

        AjiaItemParam ip = itemParamService.findById(ipi.getItemParamId());
        json = ip.getParamData();
        List<GroupParam> allGroupParams = JsonUtils.jsonToList(json, GroupParam.class);
        if (allGroupParams != null && allGroupParams.size() > 0) {
            List<Params> allParams = allGroupParams.get(0).getParams();
            model.addAttribute("allParams", allParams);
        }

        AjiaItemDesc desc = itemDescService.findById(itemId);
        model.addAttribute("itemDesc", desc);
        return "product_details";
    }

    @RequestMapping("/item/getMatchItemId")
    @ResponseBody
    public AjiaResult getMatchItemId(Long itemId, String brand, String color, String model) {
        List<AjiaItem> items = itemService.findMatchItem(itemId, brand);
        Long id = null;
        for (AjiaItem item : items) {
            AjiaItemParamItem ipi = itemParamItemService.findByItemId(item.getId());
            List<GroupParam> gps = JsonUtils.jsonToList(ipi.getParamData(), GroupParam.class);
            List<Params> params = gps.get(0).getParams();
            String myColor = null;
            String myModel = null;
            for (Params p : params) {
                if (p.getKey().equals("颜色")) {
                    myColor = p.getValues().get(0);
                }
                if (p.getKey().equals("型号")) {
                    myModel = p.getValues().get(0);
                }
            }
            if (color != null && !color.equals(myColor)) {
                continue;
            }
            if (model != null && !model.equals(myModel)) {
                continue;
            }
            id = item.getId();
            break;
        }
        return AjiaResult.ok(id);
    }
}
