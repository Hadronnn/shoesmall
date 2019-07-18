package com.oaec.shoes.mapper;

import com.oaec.shoes.entil.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ProductMapper {
    List<Product> queryAll();

    List<Product> query(Map<String,Object> map);

    Product queryByProductId(Integer productId);

    int updateStockAndSalesVolume(@Param("productId") Integer productId,@Param("num") Integer num);
}