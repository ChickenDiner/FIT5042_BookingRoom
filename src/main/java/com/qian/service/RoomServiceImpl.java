package com.qian.service;

import com.qian.dao.RoomMapper;
import com.qian.pojo.Rooms;

import java.util.List;

public class RoomServiceImpl implements RoomService{

    private RoomMapper roomMapper;

    public void setRoomMapper(RoomMapper roomMapper) {
        this.roomMapper = roomMapper;
    }

    public int addRoom(Rooms room) {
        return roomMapper.addRoom(room);
    }

    public int deleteRoomById(int id) {
        return roomMapper.deleteRoomById(id);
    }

    public int updateRoom(Rooms rooms) {
        return roomMapper.updateRoom(rooms);
    }

    public Rooms queryRoomById(int id) {
        return roomMapper.queryRoomById(id);
    }

    public Rooms queryRoomByName(String Name){
        return roomMapper.queryRoomByName(Name);
    }

    public List<Rooms> queryAllRoom() {
        return roomMapper.queryAllRoom();
    }

    public List<Rooms> qurryAllRoomCan() {
        return roomMapper.qurryAllRoomCan();
    }
}
