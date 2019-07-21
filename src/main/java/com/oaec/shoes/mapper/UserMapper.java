package com.oaec.shoes.mapper;

import com.oaec.shoes.entil.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    User queryByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    User queryByUsername(String username);

    User queryByPhone(String phone);

    int doInsert(@Param("username") String username,@Param("password") String password,@Param("phone") String phone);

    User queryByUserIdsAndPassword(@Param("userId") Integer userId,@Param("password")String Password);

    int updatePassword(@Param("userId")Integer userId,@Param("password")String password);
}
