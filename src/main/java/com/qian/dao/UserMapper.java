package com.qian.dao;

import com.qian.pojo.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    //增加一个Book
    int addUser(Users user);

    //根据id删除一个Book
    int deleteUserById(@Param("userId") int id);

    //更新Book
    int updateUser(Users users);

    //根据id查询,返回一个Book
    Users queryUserById(@Param("userId") int id);

    Users queryUserByName(@Param("userName") String name);

    //查询全部Book,返回list集合
    List<Users> queryAllUser();
}
