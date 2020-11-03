package servlets;

import clients.UserClient;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User user = new User(username,password);
        String response = UserClient.get(user);
        if(response.equals("success")){
            HttpSession session = req.getSession(true);
            session.setAttribute("user", user);
            Cookie cookie = new Cookie("username",username);
            resp.addCookie(cookie);
            resp.sendRedirect(req.getContextPath() + "/books");
        }else{
            PrintWriter writer = resp.getWriter();
            writer.append("Incorrect username or password");
        }
    }
}
