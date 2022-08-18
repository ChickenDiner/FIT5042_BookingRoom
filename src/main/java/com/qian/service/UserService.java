package com.qian.service;

import com.qian.pojo.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
    int addUser(Users user);

    int deleteUserById(int id);

    int updateUser(Users users);

    Users queryUserById(int id);

    Users queryUserByName(String name);

    List<Users> queryAllUser();
}
