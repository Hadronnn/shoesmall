package com.oaec.shoes.controller;

import com.alibaba.fastjson.JSON;
import com.oaec.shoes.entil.Address;
import com.oaec.shoes.entil.User;
import com.oaec.shoes.mapper.AddressMapper;
import com.oaec.shoes.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AddressController {
    @Autowired
    private AddressService addressService;
    @GetMapping("/address")
    public String address(HttpSession session, Model model){
        User user = (User) session.getAttribute("user");
        List<Address> list = addressService.queryByUserId(user.getUserId());
        model.addAttribute("list",list);
        return "address";
    }
    @PostMapping(value = "/address",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String address(Integer addressId){
        Address address = addressService.queryByAddressId(addressId);
        Map<String,Object> json = new HashMap<>();
        json.put("success",address);
        return JSON.toJSONString(json);
    }
    @PostMapping(value = "/add2address",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String add2address(Address address,HttpSession session){
        User user = (User) session.getAttribute("user");
        address.setUserId(user.getUserId());
        Boolean aBoolean = addressService.addAddress(address);
        return "{\"success\":"+aBoolean+"}";
    }
    @DeleteMapping(value = "/delete2address",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String delete2address(Integer addressId){
        Boolean delete = addressService.delete(addressId);
        return "{\"success\":"+delete+"}";
    }
    @PutMapping(value = "/modifyAddress",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String modifyAddress(Address address,HttpSession session){
        System.out.println(address);
        Boolean delete = addressService.delete(address.getAddressId());
        System.out.println("delete = " + delete);
        if (delete){
            User user = (User) session.getAttribute("user");
            address.setUserId(user.getUserId());
            delete = addressService.addAddress(address);
        }
        return "{\"success\":"+delete+"}";
    }
}
