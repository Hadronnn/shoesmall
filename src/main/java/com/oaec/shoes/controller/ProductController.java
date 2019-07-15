package com.oaec.shoes.controller;

import com.oaec.shoes.entil.Product;
import com.oaec.shoes.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private ProductService productService;

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @GetMapping("/list")
    public String queryAll(String name, Integer sortId, Integer brandId, Integer page,Model model){
        List<Product> products = productService.query(name, sortId, brandId, page);
        System.out.println("products = " + products);
        model.addAttribute("list",products);
        return "list";
    }
    @GetMapping("/product")
    public String product(Integer productId , Model model){
        Product product = productService.query(productId);
        model.addAttribute("product",product);
        return "product";
    }
}
