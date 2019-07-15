package com.oaec.shoes.service.impl;

import com.oaec.shoes.entil.Product;
import com.oaec.shoes.mapper.ProductMapper;
import com.oaec.shoes.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("productService")
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductMapper productMapper;

    @Override
    public List<Product> query(String name, Integer sortId, Integer brandId, Integer page) {
        List<Product> products = productMapper.queryAll();
        return products;
    }

    @Override
    public Product query(Integer productId) {
        return productMapper.queryByProductId(productId);
    }

    /*@Override
    public List<Product> query(String name, String sortId, String brandId, String page) {
        if(sortId != null){
            if (brandId == null){
                return productMapper.queryById(Integer.parseInt(sortId));
            }else{
                return productMapper.queryByIdAndBrandId(Integer.parseInt(sortId),Integer.parseInt(brandId));
            }
        }
        if (sortId == null && brandId != null){
            return productMapper.queryByBrandId(Integer.parseInt(brandId));
        }
        if (name == null) {
            return productMapper.queryAll(Integer.parseInt(page));
        }else{
            return productMapper.queryLike(name);
        }
    }

    @Override
    public Product query(String productId) {
        if (productId != null){
            return productMapper.queryByProductId(Integer.parseInt(productId));
        }
        return null;
    }*/
}
