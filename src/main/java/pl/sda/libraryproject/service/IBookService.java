package pl.sda.libraryproject.service;

import pl.sda.libraryproject.model.Book;

import java.util.List;

public interface IBookService {

    void save(Book book);

    List<Book> findAll();
}