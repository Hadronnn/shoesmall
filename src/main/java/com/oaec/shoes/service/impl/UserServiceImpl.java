package com.oaec.shoes.service.impl;

import com.oaec.shoes.entil.User;
import com.oaec.shoes.mapper.UserMapper;
import com.oaec.shoes.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;


@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public Map<String,Object> login(String username, String password) {
        Map<String, Object> map = new HashMap<>();
        User user = userMapper.queryByUsernameAndPassword(username, password);
        if (user == null){
            if (userMapper.queryByUsername(username) == null){
                map.put("error","用户名不存在");
            }else{
                map.put("error","密码错误");
            }
        }else{
            map.put("user",user);
        }
        System.out.println(map);
        return map;
    }

    @Override
    public Map<String, Object> register(User user) {
        Map<String,Object> map = new HashMap<>();
        User queryByUserName = userMapper.queryByUsername(user.getUserName());
        if (queryByUserName != null){
            map.put("error","用户名已存在");
            return map;
        }
        User queryByPhone = userMapper.queryByPhone(user.getPhone());
        if (queryByPhone != null){
            map.put("error","手机号已注册");
            return map;
        }
        int i = userMapper.doInsert(user.getUserName(),user.getPassword(),user.getPhone());
        if (i == 1){
            User u = userMapper.queryByUsername(user.getUserName());
            map.put("user",u);
            return map;
        }else {
            map.put("error","注册失败");
            return  map;
        }
    }

    @Override
    public Boolean editPassword(Integer userId, String password, String newpassword) {
        User user = userMapper.queryByUserIdsAndPassword(userId, password);
        System.out.println("user = " + user);
        if (user == null){
            return false;
        }else{
            int i = userMapper.updatePassword(userId, newpassword);
            return i == 1;
        }
    }
}
