package pl.sda.libraryproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.libraryproject.model.Book;

import java.util.List;

@Repository
public interface IBookRepository extends JpaRepository<Book, Long> {

    @Override
    <S extends Book> S save(S s);

    @Override
    List<Book> findAll();
}