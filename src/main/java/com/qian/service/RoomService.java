package com.qian.service;

import com.qian.pojo.Rooms;

import java.util.List;

public interface RoomService {
    //增加一个Book
    int addRoom(Rooms room);

    //根据id删除一个Book
    int deleteRoomById(int id);

    //更新Book
    int updateRoom(Rooms rooms);

    //根据id查询,返回一个Book
    Rooms queryRoomById(int id);

    Rooms queryRoomByName(String Name);

    //查询全部Book,返回list集合
    List<Rooms> queryAllRoom();

    List<Rooms> qurryAllRoomCan();
}
