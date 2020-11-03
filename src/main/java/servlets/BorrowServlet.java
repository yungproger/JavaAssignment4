package servlets;


import clients.BorrowClient;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BorrowServlet", urlPatterns = "/borrows")
public class BorrowServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action!=null){
            long readerId = Long.parseLong(req.getParameter("readerId"));
            String isbn = req.getParameter("id");
            BorrowClient.delete(readerId,isbn);
            resp.sendRedirect(req.getContextPath() + "/readers?action=edit&id=" + readerId);
        }
    }
}
