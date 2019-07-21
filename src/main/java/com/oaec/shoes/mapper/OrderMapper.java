package com.oaec.shoes.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface OrderMapper {
    int doUpdate(@Param("orderId") Integer orderId,@Param("userId") Integer userId,@Param("addressId") Integer addressId);
    int doInsertInfo(Map<String,Object> param);
    List<Map<String,Object>> queryByUserId(Integer userId);
    List<Map<String,Object>> queryProductByOrderId(Integer orderId);

    Double getTotalPrice(Integer orderId);

    int getOrderId();
    int doInsert();
}
