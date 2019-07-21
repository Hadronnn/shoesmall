package com.oaec.shoes.service.impl;

import com.oaec.shoes.entil.Address;
import com.oaec.shoes.mapper.AddressMapper;
import com.oaec.shoes.mapper.CartMapper;
import com.oaec.shoes.mapper.OrderMapper;
import com.oaec.shoes.mapper.ProductMapper;
import com.oaec.shoes.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    private AddressMapper addressMapper;
    @Autowired
    private CartMapper cartMapper;
    @Autowired
    private ProductMapper productMapper;
    @Override
    public List<Map<String, Object>> getOrders(Integer userId) {
        List<Map<String, Object>> orderList = orderMapper.queryByUserId(userId);
        for (Map<String,Object> order : orderList) {
            System.out.println(order);
            Address address = addressMapper.queryByAddressId(Integer.parseInt(order.get("address_id").toString()));
            order.put("address",address);
            Double totalPrice = orderMapper.getTotalPrice(Integer.parseInt(order.get("order_id").toString()));
            order.put("totalPrice",totalPrice);
            List<Map<String, Object>> products = orderMapper.queryProductByOrderId(Integer.parseInt(order.get("order_id").toString()));
            order.put("products",products);
            System.out.println(products);
        }
        return orderList;
    }

    @Override
    public Boolean submit(Integer userId, Integer addressId, Integer[] productIds) {
        int result = 0;
        int insert = orderMapper.doInsert();
        System.out.println("insert = " + insert);
        int orderId = orderMapper.getOrderId();
        System.out.println("orderId = " + orderId);
        int i = orderMapper.doUpdate(orderId, userId, addressId);
        System.out.println("i = " + i);
        for (Integer productId : productIds) {
            Map<String, Object> map = cartMapper.query(userId, productId);
            map.put("ORDER_ID",orderId);
            System.out.println("map = " + trsnsform(map));
            result += orderMapper.doInsertInfo(trsnsform(map));
            result += cartMapper.doDelete(userId,productId);
            result += productMapper.updateStockAndSalesVolume(productId,Integer.parseInt(map.get("num").toString()));
        }
        return result>0;
    }
    private Map<String,Object> trsnsform(Map<String,Object> resultMap){
        Map<String,Object> map = new HashMap<>();
        Set<String> keySet = resultMap.keySet();
        for (String s : keySet) {
            String s1 = s.toUpperCase();
            map.put(s1,resultMap.get(s));
        }
        return map;
    }
}
