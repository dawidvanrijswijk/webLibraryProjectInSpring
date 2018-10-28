package pl.sda.libraryproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.sda.libraryproject.model.Book;
import pl.sda.libraryproject.service.BookService;

@Controller
public class BookController {

    private BookService bookService;

    @Autowired
    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showBookList(Model model) {
        model.addAttribute("books", bookService.findAll());
        return "books";
    }

    @RequestMapping(value = "/save-book", method = RequestMethod.POST)
    public String addBook(@ModelAttribute Book book, Model model) {
        bookService.save(book);
        return "redirect:/";
    }

    @GetMapping(value = "/add-new-book")
    public String showAddBookPage(Model model) {
        return "addBook";
    }
}