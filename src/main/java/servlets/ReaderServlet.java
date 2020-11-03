package servlets;

import clients.BorrowClient;
import clients.ReaderClient;
import models.Book;
import models.Reader;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Stack;

@WebServlet(name = "ReaderServlet")
public class ReaderServlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        Cookie[] cookies = req.getCookies();
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("username")) {
                req.setAttribute("username", cookie.getValue());
            }
        }
        if(action==null) {
            Stack<Reader> readers = ReaderClient.getAll();
            req.setAttribute("readers", readers);
            req.getRequestDispatcher("jsp/pages/readers.jsp").forward(req, resp);
        }else{

            if (action.equals("edit")) {
                String id = req.getParameter("id");
                Reader reader = ReaderClient.get(Long.parseLong(id));
                List<Book> borrowedBooks = BorrowClient.getAll(Long.parseLong(id));
                req.setAttribute("reader", reader);
                req.setAttribute("books", borrowedBooks);
                req.getRequestDispatcher("jsp/pages/readeredit.jsp").forward(req, resp);
            } else if (action.equals("delete")) {
                String id = req.getParameter("id");
                ReaderClient.delete(Long.parseLong(id));
                Stack<Reader> readers = ReaderClient.getAll();
                req.setAttribute("readers", readers);
                req.getRequestDispatcher("jsp/pages/readers.jsp").forward(req, resp);
            }
        }

    }
}
