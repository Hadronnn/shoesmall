package com.oaec.shoes.mapper;

import com.oaec.shoes.entil.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductMapper {
    List<Product> queryAll();

    List<Product> queryLike(String name);

    List<Product> queryBySortId(Integer sortId);

    List<Product> queryByBrandId(Integer brandId);

    List<Product> queryBySortIdAndBrandId(@Param("sortId") Integer sortId,@Param("brandId") Integer brandId);

    Product queryByProductId(Integer productId);

    int updateStockAndSalesVolume(@Param("productId") Integer productId,@Param("num") Integer num);
}