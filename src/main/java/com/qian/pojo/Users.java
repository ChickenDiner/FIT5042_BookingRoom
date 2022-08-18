package com.qian.pojo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Users {
    private int userID;
    private String userName;
    private int userPassword;
    private String userPower;
}