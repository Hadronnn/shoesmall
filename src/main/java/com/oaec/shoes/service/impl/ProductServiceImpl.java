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
        if(sortId != null){
            if (brandId == null){
                return productMapper.queryBySortId(sortId);
            }else{
                return productMapper.queryBySortIdAndBrandId(sortId,brandId);
            }
        }else if (brandId != null){
            return productMapper.queryByBrandId(brandId);
        }
        if (name == null) {
            return productMapper.queryAll();
//            return null;
        }else{
            name = "%"+ name +"%";
            return productMapper.queryLike(name);
        }
    }

    @Override
    public Product query(Integer productId) {
        return productMapper.queryByProductId(productId);
    }
}
