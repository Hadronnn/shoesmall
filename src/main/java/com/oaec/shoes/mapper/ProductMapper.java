package com.oaec.shoes.mapper;

import com.oaec.shoes.entil.Product;

import java.util.List;

public interface ProductMapper {
    List<Product> queryAll();
    Product queryByProductId(Integer productId);
}