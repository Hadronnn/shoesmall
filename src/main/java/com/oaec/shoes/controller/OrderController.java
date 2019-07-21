package com.oaec.shoes.controller;

import com.oaec.shoes.entil.Address;
import com.oaec.shoes.entil.User;
import com.oaec.shoes.service.AddressService;
import com.oaec.shoes.service.CartService;
import com.oaec.shoes.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class OrderController {

    @Autowired
    private CartService cartService;

    @Autowired
    private AddressService addressService;

    @Autowired
    private OrderService orderService;
@GetMapping("/order")
    public String order(@RequestParam("productId") Integer[] productIds, HttpSession session, Model model){
        User user = (User) session.getAttribute("user");
        List<Address> list = addressService.queryByUserId(user.getUserId());
        System.out.println("list = " + list);
        List<Map<String, Object>> maps = cartService.queryProduct4Order(user.getUserId(), productIds);
        System.out.println("maps = " + maps);
        Map<String, Object> total = cartService.total(user.getUserId(), productIds);
        System.out.println("total = " + total);
        model.addAttribute("product",maps);
        model.addAttribute("list",list);
        model.addAttribute("total",total);
        return "order";
    }
    @GetMapping(value = "/submit",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String submit(@RequestParam("productId") Integer[] productIds,Integer addressId,HttpSession session){
        User user = (User) session.getAttribute("user");
        Boolean submit = orderService.submit(user.getUserId(), addressId, productIds);
        System.out.println("submit = " + submit);
        return "{\"success\":"+submit+"}";
    }
    @GetMapping("/myorder")
    public String myOrder(HttpSession session,Model model){
        User user = (User) session.getAttribute("user");
        List<Map<String, Object>> orders = orderService.getOrders(user.getUserId());
        model.addAttribute("list",orders);
        return "myorderq";
    }
}
