package com.qian.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Rooms {
    private int roomID;
    private String roomName;
    private int roomCounts;
    private String roomHasdesktp;
    private String roomHasprojector;
    private int roomCan;

}
