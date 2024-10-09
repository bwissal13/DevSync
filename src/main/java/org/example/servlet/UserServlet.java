package org.example.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.entity.User;
import org.example.service.UserService;

import java.io.IOException;
import java.util.List;

@WebServlet("/users")
public class UserServlet extends HttpServlet {

    private UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if ("list".equals(action)) {
            List<User> users = userService.getAllUsers();
            req.setAttribute("users", users);
            req.getRequestDispatcher("/user-list.jsp").forward(req, resp);
        } else if ("edit".equals(action)) {
            Long userId = Long.parseLong(req.getParameter("id"));
            User user = userService.getUser(userId);
            req.setAttribute("user", user);
            req.getRequestDispatcher("/user-form.jsp").forward(req, resp);
        } else {
            resp.sendRedirect("index.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if ("delete".equals(action)) {
            Long userId = Long.parseLong(req.getParameter("id"));
            userService.deleteUser(userId);
            resp.sendRedirect("users?action=list");
            return;
        }

        String id = req.getParameter("id");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String email = req.getParameter("email");
        boolean isManager = Boolean.parseBoolean(req.getParameter("manager"));

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setManager(isManager);

        if (id == null || id.isEmpty()) {
            userService.createUser(user);
        } else {
            user.setId(Long.parseLong(id));
            userService.updateUser(user);
        }

        resp.sendRedirect("users?action=list");
    }


}
