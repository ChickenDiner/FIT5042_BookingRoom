package com.qian.controller;

import com.qian.pojo.Users;
import com.qian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

@RequestMapping("/user")
public class UserController {
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("/login")
    private String list(Model model){
        return "login";
    }

    @RequestMapping("/loginjudge")
    private String loginjudge(Users user){
        Users user1 = userService.queryUserByName(user.getUserName());
        System.out.println(user1);
        if(user1 != null){
            if(user1.getUserPassword() == user.getUserPassword()) {
                System.out.println(user1.getUserPower());
                if(user1.getUserPower().equals("0")){
                    return "loginsuccessful";
                }
                else{
                    return "loginsuccessful2";
                }

            }
        }
        return "login";
    }

}
