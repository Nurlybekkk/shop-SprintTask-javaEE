package kz.bitlab.sprintTask.shopProject.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.sprintTask.shopProject.database.DBManager;
import kz.bitlab.sprintTask.shopProject.database.Users;
import java.io.IOException;

@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        Users user = DBManager.getUser(email);
        if(user!=null && user.getPassword().equals(password)){
            resp.sendRedirect("/profile");
        }else{
            resp.sendRedirect("/login?error");
        }
    }
}

