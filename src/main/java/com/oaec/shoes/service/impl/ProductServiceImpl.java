package com.oaec.shoes.service.impl;

import com.github.pagehelper.PageHelper;
import com.oaec.shoes.entil.Product;
import com.oaec.shoes.mapper.ProductMapper;
import com.oaec.shoes.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("productService")
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductMapper productMapper;

    @Override
    public List<Product> query(String name, Integer sortId, Integer brandId, Integer page) {
        Map<String,Object> param = new HashMap<>();
        param.put("name",name);
        param.put("sortId",sortId);
        param.put("brandId",brandId);
        PageHelper.startPage(page,4);
        List<Product> products = productMapper.query(param);
        return products;
    }

    @Override
    public Product query(Integer productId) {
        return productMapper.queryByProductId(productId);
    }
}
