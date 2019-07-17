package com.oaec.shoes.controller;

import com.alibaba.fastjson.JSON;
import com.oaec.shoes.entil.User;
import com.oaec.shoes.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @GetMapping("/login")
    public String login(){
        return "login";
    }
    @PostMapping(value = "/login",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String login(String username, String password,String uri, HttpSession session){
        System.out.println("username = [" + username + "], password = [" + password + "], uri = [" + uri + "]");
        Map<String, Object> map = userService.login(username, password);
        Map<String, Object> json = new HashMap<>();
        if (map.containsKey("user")){
            session.setAttribute("user",map.get("user"));
            json.put("result",true);
            if (uri != null){
                json.put("uri",uri);
            }
        }else {
            Object error = map.get("error");
            json.put("result",false);
            json.put("error",error);
        }
        System.out.println(JSON.toJSONString(json));
        return JSON.toJSONString(json);
//        return "login";
    }
    @PostMapping(value = "/register",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String register(User user,HttpSession session){
        System.out.println("user = " + user);
        Map<String, Object> json = new HashMap<>();
        Map<String, Object> map = userService.register(user);
        if (map.containsKey("user")){
            session.setAttribute("user",map.get("user"));
            json.put("result",true);
        }else{
            json.put("error",map.get("error"));
        }
        return JSON.toJSONString(json);
    }
}
