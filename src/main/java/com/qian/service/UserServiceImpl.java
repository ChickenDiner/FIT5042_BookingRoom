package com.qian.service;

import com.qian.dao.UserMapper;
import com.qian.pojo.Users;

import java.util.List;

public class UserServiceImpl implements UserService{

    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public int addUser(Users user) {
        return userMapper.addUser(user);
    }

    public int deleteUserById(int id) {
        return userMapper.deleteUserById(id);
    }

    public int updateUser(Users users) {
        return userMapper.updateUser(users);
    }

    public Users queryUserById(int id) {
        return userMapper.queryUserById(id);
    }

    public Users queryUserByName(String name) {
        return userMapper.queryUserByName(name);
    }

    public List<Users> queryAllUser() {
        return userMapper.queryAllUser();
    }
}
