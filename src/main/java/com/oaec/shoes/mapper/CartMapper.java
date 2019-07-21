package com.oaec.shoes.mapper;

import com.oaec.shoes.entil.Cart;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CartMapper {

    int doInsert(Cart cart);
    List<Map<String ,Object>> queryByUserId(Integer userId);
    Cart queryByUserIdAndProductId(@Param("userId") Integer userId,@Param("productId") Integer productId);
    int doUpdate(@Param("userId") Integer userId,@Param("productId") Integer productId,@Param("num") Integer num);
    int doDelete(@Param("userId") Integer userId,@Param("productId")Integer productId);
    int doUpdateAdd(@Param("userId")Integer userId,@Param("productId")Integer productId);
    int doUpdateSub(@Param("userId")Integer userId,@Param("productId")Integer productId);
    Cart queryByUserIdANDProductIdAndNum(@Param("userId")Integer userId,@Param("productId")Integer productId);
    List<Map<String ,Object>> queryProduct4Order(@Param("userId")Integer userId,@Param("productIds") Integer[] productIds);
    Map<String,Object> total(@Param("userId")Integer userId,@Param("productIds")Integer[] productIds);
    Map<String,Object> query(@Param("userId")Integer userId,@Param("productId")Integer productId);
}
