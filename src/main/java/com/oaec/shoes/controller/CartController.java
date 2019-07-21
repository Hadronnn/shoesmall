package com.oaec.shoes.controller;

import com.alibaba.fastjson.JSON;
import com.oaec.shoes.entil.User;
import com.oaec.shoes.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class CartController {
    @Autowired
    private CartService cartService;
    @GetMapping("/cart")
    public String cart(HttpSession session, HttpServletRequest request){
        User user = (User) session.getAttribute("user");
        Map<String, Object> map = cartService.cartInfo(user.getUserId());
        if (map.containsKey("list")){
            request.setAttribute("list",map.get("list"));
        }
        return "cart";
    }

    @GetMapping(value = "/add2cart",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String add2cart(Integer productId,Integer num, HttpSession session){
        User user = (User) session.getAttribute("user");
        Map<String, Object> map = cartService.addCart(user.getUserId(), productId, num);
        Map<String,Object> json = new HashMap<>();
        if (map.containsKey("result")){
            json.put("result",map.get("result"));
        }else{
            json.put("error",map.get("error"));
        }
        return JSON.toJSONString(json);
    }
    @DeleteMapping(value = "/delete4cart",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String delete4cart(Integer productId,HttpSession session){
        User user = (User) session.getAttribute("user");
        Map<String, Object> map = cartService.deleteCart(user.getUserId(), productId);
        Map<String,Object> json = new HashMap<>();
        if (map.containsKey("result")){
            json.put("result",map.get("result"));
        }else{
            json.put("error",map.get("error"));
        }
        return JSON.toJSONString(json);
    }
    @GetMapping(value = "/updatenum",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String updatenum(Integer productId,String action,HttpSession session){
        User user = (User) session.getAttribute("user");
        Boolean ma = cartService.queryCartNum(user.getUserId(), productId);
        Map<String,Object> json = new HashMap<>();
        if (ma){
            Map<String, Object> map = cartService.updateNum(user.getUserId(),productId, action);
            if (map.containsKey("add")){
                if (map.get("add").equals(1)){
                    json.put("add",true);
                }else{
                    json.put("add",false);
                }
            }else{
                if (map.get("sub").equals(1)){
                    json.put("sub",true);
                }else{
                    json.put("sub",false);
                }
            }
        }
        return JSON.toJSONString(json);
    }
}
