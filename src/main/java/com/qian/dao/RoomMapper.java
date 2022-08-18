package com.qian.dao;


import com.qian.pojo.Rooms;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoomMapper {
    //增加一个Book
    int addRoom(Rooms room);

    //根据id删除一个Book
    int deleteRoomById(@Param("roomId") int id);

    //更新Book
    int updateRoom(Rooms rooms);

    //根据id查询,返回一个Book
    Rooms queryRoomById(@Param("roomId") int id);

    Rooms queryRoomByName(@Param("roomName") String Name);


    //查询全部Book,返回list集合
    List<Rooms> queryAllRoom();

    List<Rooms> qurryAllRoomCan();
}
