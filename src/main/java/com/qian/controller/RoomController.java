package com.qian.controller;

import com.qian.pojo.Books;
import com.qian.pojo.Rooms;
import com.qian.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/room")
public class RoomController {
    @Autowired
    @Qualifier("RoomServiceImpl")
    private RoomService roomService;

    @RequestMapping("/allRoom")
    public String list(Model model){
        List<Rooms> list = roomService.queryAllRoom();
        model.addAttribute("list",list);
        return "allRoom";
    }

    @RequestMapping("/allRoomCustom")
    public String list1(Model model){
        List<Rooms> list = roomService.qurryAllRoomCan();
        model.addAttribute("list",list);
        return "allRoomCustom";
    }

    @RequestMapping("/toUpdateRoom")
    public String toUpdate(int id,Model model){
        Rooms rooms = roomService.queryRoomById(id);
        model.addAttribute("QRoom",rooms);
        return "updateRoom";
    }

    @RequestMapping("/update")
    public String update(Rooms room){
        roomService.updateRoom(room);
        return "redirect:/room/allRoom";
    }

    @RequestMapping("/addNewRoom")
    public String addRoom(){
        return "addRoom";
    }

    @RequestMapping("/addRoom")
    public String addARoom(Rooms rooms){
        Rooms rooms1 = roomService.queryRoomByName(rooms.getRoomName());
        if(rooms1!=null){
            return "addRoom";
        }
        System.out.println(rooms);
        roomService.addRoom(rooms);
        return "redirect:/room/allRoom";
    }

    @RequestMapping("/deletRoom")
    public String deletBook(int id){
        roomService.deleteRoomById(id);
        return "redirect:/room/allRoom";
    }

    @RequestMapping("/qurryRoom")
    public String qurryRoom(String qurryRoomName, Model model){
        Rooms rooms = roomService.queryRoomByName(qurryRoomName);
        List<Rooms> list = new ArrayList<Rooms>();
        list.add(rooms);
        model.addAttribute("list",list);
        return "allRoomCustom";
    }

    @RequestMapping("/qurryRoomAdmin")
    public String qurryRoomAdmin(String qurryRoomName, Model model){
        Rooms rooms = roomService.queryRoomByName(qurryRoomName);
        List<Rooms> list = new ArrayList<Rooms>();
        list.add(rooms);
        model.addAttribute("list",list);
        return "allRoom";
    }
}
