package com.oaec.shoes.service;

import com.oaec.shoes.entil.Product;

import java.util.List;

public interface ProductService {
    List<Product> query(String name, Integer sortId, Integer brandId, Integer page);
    Product query(Integer productId);
}
