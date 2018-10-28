package pl.sda.libraryproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.sda.libraryproject.model.Book;
import pl.sda.libraryproject.repository.IBookRepository;

import java.util.List;

@Service
public class BookService implements IBookService {

    private IBookRepository iBookRepository;

    @Autowired
    public BookService(IBookRepository ibookRepository) {
        this.iBookRepository = ibookRepository;
    }

    @Override
    public void save(Book book) {
        iBookRepository.save(book);
    }

    @Override
    public List<Book> findAll() {
        return iBookRepository.findAll();
    }
}