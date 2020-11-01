package servlets;


import clients.BookClient;
import clients.BorrowClient;
import clients.ReaderClient;
import models.Book;
import models.Reader;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ReaderServlet")
public class ReaderServlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        if(id==null) {
            List<Reader> readers = ReaderClient.getAll();
            req.setAttribute("readers", readers);
            req.getRequestDispatcher("jsp/readers.jsp").forward(req, resp);
        }else{
            Reader reader = ReaderClient.get(Long.parseLong(id));
            List<Book> borrowedBooks = BorrowClient.getAll(Long.parseLong(id));
            req.setAttribute("reader",reader);
            req.getRequestDispatcher("jsp/readeredit.jsp").forward(req,resp);
        }
    }
}
