package com.qian.service;

import com.qian.pojo.Books;
import org.apache.ibatis.annotations.Param;
import java.util.List;
public interface BookService {
    //增加一个Book
    int addBook(Books book);

    //根据id删除一个Book
    int deleteBookById(int id);

    //更新Book
    int updateBook(Books books);

    //根据id查询,返回一个Book
    Books queryBookById(int id);
    Books queryBookByPeople(String people);

    //查询全部Book,返回list集合
    List<Books> queryAllBook();
}
