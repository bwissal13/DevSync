package org.example.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.entity.User;
import org.example.service.UserService;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        User user = userService.findUserByEmail(email);
        if (user != null && BCrypt.checkpw(password,user.getPassword())) {
            req.getSession().setAttribute("user", user);
            resp.sendRedirect("index.jsp");
        }else{
            req.setAttribute("errorMessage", "Invalid email or password");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }
}
