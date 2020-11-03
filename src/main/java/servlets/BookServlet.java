package servlets;

import clients.BookClient;
import models.Book;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Comparator;
import java.util.List;


@WebServlet(name = "BookServlet")
public class BookServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        Cookie[] cookies = req.getCookies();
        for(Cookie cookie : cookies) {
            if(cookie.getName().equals("username")) {
                req.setAttribute("username", cookie.getValue());
            }
        }
        if(action==null){
            List<Book> books = BookClient.getAll();
            req.setAttribute("books",books);
            req.getRequestDispatcher("jsp/pages/book.jsp").forward(req,resp);
        } else {
            if (action.equals("edit")) {
                String isbn = req.getParameter("id");
                Book book = BookClient.get(isbn);
                req.setAttribute("book", book);
                req.getRequestDispatcher("jsp/pages/bookedit.jsp").forward(req, resp);
            } else if (action.equals("sort")) {
                List<Book> books = BookClient.getAll();
                books.sort(Comparator.comparing(Book::getName));
                req.setAttribute("books", books);
                req.getRequestDispatcher("jsp/pages/book.jsp").forward(req, resp);
            } else if (action.equals("delete")) {
                String isbn = req.getParameter("id");
                BookClient.delete(isbn);
                List<Book> books = BookClient.getAll();
                req.setAttribute("books", books);
                req.getRequestDispatcher("jsp/pages/book.jsp").forward(req, resp);
            }
        }
    }


}
