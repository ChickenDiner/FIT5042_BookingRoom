package com.qian.controller;

import com.qian.pojo.Books;
import com.qian.pojo.Rooms;
import com.qian.service.BookService;
import com.qian.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @Autowired
    @Qualifier("RoomServiceImpl")
    private RoomService roomService;

    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }

    @RequestMapping("/allBookCustom")
    public String list1(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBookCustom";
    }

    @RequestMapping("/addNewBook")
    public String AddNewBook(){
        return "addBook";
    }

    @RequestMapping("/addNewBookCustom")
    public String AddNewBookCustom(){
        return "addBookCustom";
    }

    @RequestMapping("/addBook")
    public String addBook(Books books){
        Rooms rooms = roomService.queryRoomByName(books.getBookName());
        Books books1 = bookService.queryBookByPeople(books.getBookPeople());
        // User has booked a room
        if(books1!=null){
            return "Error";
        }
        // Time error
        if(books.getBookEnd()-books.getBookStart()>24 || books.getBookEnd()<books.getBookStart()){
            return "Error";
        }
        // Capacity error
        if(rooms!=null && rooms.getRoomCounts()<books.getBookCounts()){
            return "Error";
        }
        if(rooms!=null && rooms.getRoomCan() == 1) {
            rooms.setRoomCan(0);
            roomService.updateRoom(rooms);
            bookService.addBook(books);
            return "redirect:/book/allBook";
        }
        return "Error";
    }

    @RequestMapping("/addBookCus")
    public String addBookCus(Books books){
        Rooms rooms = roomService.queryRoomByName(books.getBookName());

        Books books1 = bookService.queryBookByPeople(books.getBookPeople());
        // User has booked a room
        if(books1!=null){
            return "Error";
        }
        // Time error
        if(books.getBookEnd()-books.getBookStart()>24 || books.getBookEnd()<books.getBookStart()){
            return "Error";
        }
        // Capacity error
        if(rooms!=null && rooms.getRoomCounts()<books.getBookCounts()){
            return "Error";
        }
        if(rooms!=null && rooms.getRoomCan() == 1) {     // Room exist and Can be Book
            rooms.setRoomCan(0);
            roomService.updateRoom(rooms);
            bookService.addBook(books);
            return "redirect:/book/allBookCustom";
        }
        return "Error";
    }



    @RequestMapping("/Error")
    public String Error(Books books){
        return "Error";
    }

    @RequestMapping("/toUpdateRoom")
    public String toUpdate(int id,Model model){
        Books books = bookService.queryBookById(id);
        model.addAttribute("QBook",books);
        return "updateBook";
    }

    @RequestMapping("/update")
    public String update(Books book){
        bookService.updateBook(book);
        return "redirect:/book/allBook";
    }
    @RequestMapping("/deletBook")
    public String deletBook(int id){
        Books book = bookService.queryBookById(id);
        Rooms rooms = roomService.queryRoomByName(book.getBookName());
        rooms.setRoomCan(1);
        roomService.updateRoom(rooms);
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }
}
