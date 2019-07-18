package com.oaec.shoes.service.impl;

import com.oaec.shoes.entil.Cart;
import com.oaec.shoes.mapper.CartMapper;
import com.oaec.shoes.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service("cartService")
public class CartServiceImpl implements CartService {
    @Autowired
    private CartMapper cartMapper;
    @Override
    public Map<String, Object> addCart(Integer userId, Integer productId, Integer num) {
        Map<String, Object> map = new HashMap<>();
        int i;
        if (cartMapper.queryByUserIdAndProductId(userId,productId) != null){
            i = cartMapper.doUpdate(userId,productId,num);
        }else{
            Cart cart = new Cart(userId,productId,num);
            i = cartMapper.doInsert(cart);
        }
        if (i == 1){
            map.put("result","添加成功");
        }else{
            map.put("error","添加失败");
        }
        return map;
    }

    @Override
    public Map<String, Object> cartInfo(Integer userId) {
        Map<String, Object> map = new HashMap<>();
        List<Map<String, Object>> list = cartMapper.queryByUserId(userId);
        map.put("list",list);
        return map;
    }

    @Override
    public Map<String, Object> deleteCart(Integer userId, Integer productId) {
        Map<String, Object> map = new HashMap<>();
        int i = cartMapper.doDelete(userId, productId);
        if (i == 1){
            map.put("result","删除成功");
        }else{
            map.put("error","删除失败");
        }
        return map;
    }

    @Override
    public Map<String, Object> updateNum(Integer userId, Integer productId, String action) {
        Map<String,Object> map = new HashMap<>();
        if (action.equalsIgnoreCase("add")){
            int i = cartMapper.doUpdateAdd(userId, productId);
            map.put("add",i);
        }else{
            int i = cartMapper.doUpdateSub(userId, productId);
            map.put("sub",i);
        }
        return map;
    }

    @Override
    public Boolean queryCartNum(Integer userId, Integer productId) {
        Cart cart = cartMapper.queryByUserIdANDProductIdAndNum(userId, productId);
        return cart == null;
    }

    @Override
    public List<Map<String, Object>> queryProduct4Order(Integer userId, Integer[] productIds) {
        return cartMapper.queryProduct4Order(userId,productIds);
    }

    @Override
    public Map<String, Object> total(Integer userId, Integer[] productIds) {
        return cartMapper.total(userId, productIds);
    }
}
