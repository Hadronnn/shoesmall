package com.oaec.shoes.controller;

import com.github.pagehelper.Page;
import com.oaec.shoes.entil.Product;
import com.oaec.shoes.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String queryAll(String name, Integer sortId, Integer brandId, @RequestParam(required = false,defaultValue = "1") Integer page, Model model){
        List<Product> products = productService.query(name, sortId, brandId, page);
        System.out.println("products = " + products.size());
        model.addAttribute("list",products);
        if (products instanceof Page){
            Page productPage = (Page) products;
            //当前页数
            int pageNum = productPage.getPageNum();
            //总页数
            int pages = productPage.getPages();
            model.addAttribute("pageNum",pageNum);
            model.addAttribute("pages",pages);
        }
        return "list";
    }
    @GetMapping("/product")
    public String product(Integer productId , Model model){
        Product product = productService.query(productId);
        model.addAttribute("product",product);
        return "product";
    }
}
