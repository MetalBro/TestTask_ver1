package ru.mytesttask.model;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

import java.util.List;

/**
 * Created by Андрей on 04.10.2017.
 */
public class BookService {
    private static final SessionFactory ourSessionFactory;

    static {
        try {
            Configuration configuration = new Configuration();
            configuration.configure();
            ourSessionFactory = configuration.buildSessionFactory();
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static Session getSession() throws HibernateException {
        return ourSessionFactory.openSession();
    }

    public static BookEntity getBook(int id){
        Session session = getSession();
        BookEntity bookEntity = null;
        Transaction tx = null;
        Integer bookID = null;
        try{
            tx = session.beginTransaction();
            bookEntity = (BookEntity) session.get(BookEntity.class, id);
            tx.commit();
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return bookEntity;
    }

    public static List getBookList(PaginationService paginationService, Query query) {
        int numberOfPages = (int) Math.ceil(query.list().size() * 1.0 / paginationService.getRecordsPerPage());
        paginationService.setNumberOfPages(numberOfPages);
        query.setFirstResult((paginationService.getPageNumber() - 1) * paginationService.getRecordsPerPage());
        query.setMaxResults(paginationService.getRecordsPerPage());
        return query.list();
    }

    public static void addBook(BookEntity bookEntity){
        Session session = getSession();
        Transaction tx = null;
        Integer bookID = null;
        try{
            tx = session.beginTransaction();
            bookID = (Integer) session.save(bookEntity);
            tx.commit();
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
    }

    public static void updateBook(int id, BookEntity bookEntity, boolean onlyMarkAsRead){
        Session session = getSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            BookEntity editBook = (BookEntity) session.get(BookEntity.class, id);
            if (onlyMarkAsRead){
                editBook.setReadAlready(true);
            } else {
                editBook.setTitle(bookEntity.getTitle());
                editBook.setDescription(bookEntity.getDescription());
                editBook.setIsbn(bookEntity.getIsbn());
                editBook.setPrintYear(bookEntity.getPrintYear());
                editBook.setReadAlready(false);
            }

            session.update(editBook);
            tx.commit();
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
    }

    public static void deleteBook(int id){
        Session session = getSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            BookEntity deleteBook = (BookEntity) session.get(BookEntity.class, id);
            session.delete(deleteBook);
            tx.commit();
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
    }

}