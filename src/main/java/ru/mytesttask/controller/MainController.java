package ru.mytesttask.controller;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.mytesttask.model.BookEntity;
import ru.mytesttask.model.BookService;
import ru.mytesttask.model.PaginationService;

import java.util.List;

/**
 * Created by Андрей on 04.10.2017.
 */

@Controller
public class MainController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView main() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @RequestMapping(value = "/select_action")
    public ModelAndView moveUser(@RequestParam("action") String userAction) {
        ModelAndView modelAndView = new ModelAndView();
        if (userAction.equals("show_all")){
            modelAndView.setViewName("show_books");
            Session session = BookService.getSession();
            Query query = session.createQuery("FROM BookEntity ");
            PaginationService paginationService = new PaginationService(1);
            List list = BookService.getBookList(paginationService, query);
            modelAndView.addObject("book_list",list);
            modelAndView.addObject("currentPageNumber", 1);
            modelAndView.addObject("numberOfPages", paginationService.getNumberOfPages());
        }
        else if (userAction.equals("search_book"))modelAndView.setViewName("search_page");
        else if (userAction.equals("add_book")){
            modelAndView.setViewName("adding_page");
            modelAndView.addObject("bookEntity", new BookEntity());
        }
        return modelAndView;
    }

    @RequestMapping(value = "/show_all_new_page")
    public ModelAndView paginationUsers(@RequestParam("pageNumber") int pageNumber){
        ModelAndView modelAndView = new ModelAndView();
        Session session = BookService.getSession();
        Query query = session.createQuery("FROM BookEntity ");
        PaginationService paginationService = new PaginationService(pageNumber);
        List list = BookService.getBookList(paginationService, query);
        modelAndView.setViewName("show_books");
        modelAndView.addObject("book_list",list);
        modelAndView.addObject("currentPageNumber", pageNumber);
        modelAndView.addObject("numberOfPages", paginationService.getNumberOfPages());

        return modelAndView;
    }

    @RequestMapping(value = "/add_new_book")
    public ModelAndView addNewBook(@ModelAttribute("bookEntity") BookEntity bookEntity){
        bookEntity.setReadAlready(false);
        BookService.addBook(bookEntity);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @RequestMapping(value = "/delete_book")
    public ModelAndView deleteBook(@RequestParam("deleteBookId") int id){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("deleting_page");
        BookEntity bookEntity = BookService.getBook(id);
        modelAndView.addObject("id", id);
        modelAndView.addObject("title", bookEntity.getTitle());
        return modelAndView;
    }

    @RequestMapping(value = "/deleting_book")
    public ModelAndView deletingBook(@RequestParam("action") String deleteAction, @RequestParam("deleteBookId") int id){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        if (deleteAction.equals("true")){
            BookService.deleteBook(id);
        }
        return modelAndView;
    }

    @RequestMapping(value = "/search_book")
    public ModelAndView searchUser(@RequestParam("title") String title){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("show_finded_books");
        Session session = BookService.getSession();
        StringBuilder stringBuilder = new StringBuilder("FROM BookEntity be WHERE be.title = ");
        stringBuilder.append("'");
        stringBuilder.append(title);
        stringBuilder.append("'");
        Query query = session.createQuery(stringBuilder.toString());
        PaginationService paginationService = new PaginationService(1);
        List list = BookService.getBookList(paginationService, query);
        modelAndView.addObject("book_list",list);
        modelAndView.addObject("currentPageNumber", 1);
        modelAndView.addObject("numberOfPages", paginationService.getNumberOfPages());
        modelAndView.addObject("title", title);
        return modelAndView;
    }

    @RequestMapping(value = "/show_finded_users_new_page/title")
    public ModelAndView paginationFindedUsers(@RequestParam("pageNumber") int pageNumber, @RequestParam("title") String title){
        ModelAndView modelAndView = new ModelAndView();
        Session session = BookService.getSession();
        StringBuilder stringBuilder = new StringBuilder("FROM UserEntity us WHERE us.name = ");
        stringBuilder.append("'");
        stringBuilder.append(title);
        stringBuilder.append("'");
        Query query = session.createQuery(stringBuilder.toString());
        PaginationService paginationService = new PaginationService(pageNumber);
        List list = BookService.getBookList(paginationService, query);
        modelAndView.setViewName("show_finded_books");
        modelAndView.addObject("book_list",list);
        modelAndView.addObject("currentPageNumber", pageNumber);
        modelAndView.addObject("numberOfPages", paginationService.getNumberOfPages());
        modelAndView.addObject("title", title);

        return modelAndView;
    }

    @RequestMapping(value = "/edit_book", method = RequestMethod.GET)
    public ModelAndView editingBook(@RequestParam("editBookId") int id){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("editing_select_page");
//        BookEntity bookEntity = new BookEntity();
//        bookEntity.setId(id);
        modelAndView.addObject("id", id);
//        modelAndView.addObject("bookEntity", bookEntity);
        return modelAndView;
    }

    @RequestMapping(value = "/select_edit_action")
    public ModelAndView editBook(@RequestParam("id") int id, @RequestParam("action") String editAction){
        ModelAndView modelAndView = new ModelAndView();
        if (editAction.equals("mark_book_read")){
            modelAndView.setViewName("index");
            BookService.updateBook(id, null, true);
        } else if (editAction.equals("update_new_edition")){
            modelAndView.setViewName("editing_page");
            modelAndView.addObject("id", id);
            modelAndView.addObject("bookEntity", new BookEntity());
        }
        return modelAndView;
    }

    @RequestMapping(value = "/edited_book")
    public ModelAndView updateBook(@ModelAttribute("bookEntity") BookEntity bookEntity, @RequestParam("id") int id){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        BookService.updateBook(id, bookEntity, false);
        return modelAndView;

    }
}
































