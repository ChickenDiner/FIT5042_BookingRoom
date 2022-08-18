package com.qian.service;

import com.qian.dao.BookMapper;
import com.qian.pojo.Books;


import java.util.List;

public class BookServiceImpl implements BookService {

    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public int addBook(Books book) {
        return bookMapper.addBook(book);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    public Books queryBookByPeople(String people) {
        return bookMapper.queryBookByPeople(people);
    }

    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }
}
