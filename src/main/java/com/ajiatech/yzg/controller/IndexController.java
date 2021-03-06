package com.ajiatech.yzg.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ajiatech.yzg.pojo.AjiaShipping;
import com.ajiatech.yzg.pojo.AjiaUser;

@Controller
public class IndexController {

    @RequestMapping("/user/{userId}")
    @ResponseBody
    public String selectUser(@PathVariable(name = "userId") String userId) {
        System.out.println("userId:" + userId);
        return "hello!";
    }

    @RequestMapping("/saveAddress")
    @ResponseBody
    public String saveAddress(AjiaShipping shipping) {
        System.out.println(shipping);
        return "hello";
    }

    @RequestMapping("/login")
    @ResponseBody
    public String login(@RequestParam(required = true, name = "pwd") String name, String pwd, @RequestParam(required = false, defaultValue = "18") Integer age) {
        return "<h1>name:" + name + "     pwd:" + pwd + "      age:" + age + "</h1>";
    }

    @RequestMapping(produces = "text/html;charset=utf-8", method = {RequestMethod.GET, RequestMethod.POST}, value = {"/hello", "/hello100"})
    @ResponseBody
    public String helloworld(String param) {
        System.out.println("param:" + param);
        return "<h1>Hello World!" + param + "</h1>";
    }

    @RequestMapping("/getUser")
    @ResponseBody
    public List<AjiaUser> getUser() {
        List<AjiaUser> users = new ArrayList<AjiaUser>();
        for (int i = 0; i < 50; i++) {
            users.add(new AjiaUser());
        }
        return users;
    }

    @RequestMapping("/index")
    @ResponseBody
    public String index(@RequestParam(required = true, name = "pwd") String name, String pwd) {

        return "ok:";
    }

    /**
     * 跳转到注册界面
     *
     * @return
     */
    @RequestMapping("/toRegister")
    public String toRegister() {
        return "register";
    }

    /**
     * 跳转到登录页面
     *
     * @return
     */
    @RequestMapping("/toLogin")
    public String toLogin() {
        return "login";
    }

}
