package com.ajiatech.yzg.controller;

import com.ajiatech.yzg.common.utils.IDUtils;
import com.ajiatech.yzg.common.utils.JsonUtils;
import com.ajiatech.yzg.pojo.*;
import com.ajiatech.yzg.service.*;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private AjiaShippingService shippingService;
    @Autowired
    private AjiaCartService cartService;
    @Autowired
    private AjiaItemService itemService;
    @Autowired
    private AjiaOrderService orderService;
    @Autowired
    private AjiaOrderItemService orderItemService;
    @Autowired
    private AjiaItemParamItemService itemParamItemService;

    @Value("${ORDER_STATUS_WAITPAY}")
    public int ORDER_STATUS_WAITPAY;
    @Value("${ORDER_STATUS_WAITSEND}")
    public int ORDER_STATUS_WAITSEND;
    @Value("${ORDER_STATUS_WAITGET}")
    public int ORDER_STATUS_WAITGET;
    @Value("${ORDER_STATUS_WAITASS}")
    public int ORDER_STATUS_WAITASS;
    @Value("${ORDER_STATUS_SUCCESS}")
    public int ORDER_STATUS_SUCCESS;
    @Value("${ORDER_STATUS_CLOSE}")
    public int ORDER_STATUS_CLOSE;
    @Value("${ORDER_STATUS_DELETE}")
    public int ORDER_STATUS_DELETE;

    /**
     * 删除订单业务
     *
     * @param order
     * @return
     */
    @RequestMapping("/delete")
    public String delete(AjiaOrder order) {
        Long userId = 14L;
        AjiaOrder dbOrder = orderService.findById(order.getOrderId());
        if (dbOrder != null && dbOrder.getUserId().equals(userId)) {
            if (dbOrder.getStatus() != ORDER_STATUS_CLOSE) {
                return "redirect:/order/toMyOrder.html";
            }
            order.setStatus(ORDER_STATUS_DELETE);
            orderService.updateOrderStatus(order);
        }
        return "redirect:/order/toMyOrder.html";
    }

    @RequestMapping("/cancel")
    public String cancel(AjiaOrder order) {
        Long userId = 14L;
        AjiaOrder dbOrder = orderService.findById(order.getOrderId());
        if (dbOrder != null && dbOrder.getUserId().equals(userId)) {
            if (dbOrder.getStatus() != ORDER_STATUS_WAITPAY) {
                return "redirect:/order/toMyOrder.html";
            }
            order.setStatus(ORDER_STATUS_CLOSE);
            orderService.updateOrderStatus(order);
        }
        return "redirect:/order/toMyOrder.htmel";
    }

    /**
     * 添加订单业务
     *
     * @param itemIds
     * @return
     */
    @RequestMapping("/insertOrder")
    public String insertOrder(String itemIds) {
        Long userId = 14L;
        AjiaShipping shipping = shippingService.getDefaultAddress(userId);
        String orderId = IDUtils.genOrderId();
        List<AjiaOrderItem> orderItems = new ArrayList<AjiaOrderItem>();
        String[] ids = itemIds.split(",");
        for (String id : ids) {
            AjiaCartItem cartItem = cartService.findById(Long.parseLong(id));
            AjiaItem item = itemService.findByItemId(cartItem.getItemId());
            AjiaOrderItem i = new AjiaOrderItem(IDUtils.genOrderId(), item.getId() + "", orderId, cartItem.getNum(), item.getTitle(), item.getPrice(), item.getPrice() * cartItem.getNum(), item.getImage());
            orderItems.add(i);
        }
        double payment = 0.0;
        for (AjiaOrderItem item : orderItems) {
            payment += item.getTotalFee();
        }
        AjiaOrder order = new AjiaOrder(orderId, userId, shipping.getAddId(), payment, 1, 0.0, 1, new Date(), new Date(), null, null, null, null, shipping.getReceiverName(), shipping.getReceiverZip(), "", "lisi", 0);
        orderService.saveOrder(order, orderItems);
        return "redirect:/order/payment.html?orderId=" + orderId;
    }

    /**
     * 跳转到选择银行界面
     */
    @RequestMapping("/payment")
    public String payment(String orderId, Model model) {
        AjiaOrder order = orderService.findById(orderId);
        model.addAttribute("order", order);
        return "payment";
    }

    /**
     * 显示我的订单列表界面
     *
     * @param model
     * @return
     */
    @RequestMapping("/toMyOrder")
    public String toMyOrder(Model model, @RequestParam(required = false, defaultValue = "all") String code, @RequestParam(required = false, defaultValue = "1") int page) {
        List<OrderVo> orderVos = new ArrayList<OrderVo>();
        Long userId = 14L;
        PageInfo<AjiaOrder> pageInfo = orderService.findByUserId(userId, code, page);
        List<AjiaOrder> orders = pageInfo.getList();
        for (AjiaOrder order : orders) {
            OrderVo orderVo = new OrderVo();
            orderVo.setOrder(order);
            List<AjiaOrderItem> items = orderItemService.findByOrderId(order.getOrderId());
            List<OrderItemVo> itemVos = new ArrayList<OrderItemVo>();
            for (AjiaOrderItem item : items) {
                OrderItemVo itemVo = new OrderItemVo();
                AjiaItemParamItem ipi = itemParamItemService.findByItemId(Long.parseLong(item.getItemId()));
                List<Params> params = JsonUtils.jsonToList(ipi.getParamData(), GroupParam.class).get(0).getParams();
                itemVo.setItem(item);
                itemVo.setParams(params);
                itemVos.add(itemVo);
            }
            orderVo.setItemVos(itemVos);
            orderVos.add(orderVo);
        }
        model.addAttribute("orderVos", orderVos);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("code", code);
        return "myOrder";
    }
}
