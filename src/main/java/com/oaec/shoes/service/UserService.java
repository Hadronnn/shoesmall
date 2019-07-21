package com.oaec.shoes.service;


import com.oaec.shoes.entil.User;

import java.util.Map;

public interface UserService {

    Map<String,Object> login(String username, String password);

    Map<String,Object> register(User user);

    Boolean editPassword(Integer userId,String password,String newpassword);
}
