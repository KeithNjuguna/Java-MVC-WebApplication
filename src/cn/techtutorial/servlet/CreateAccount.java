package cn.techtutorial.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.techtutorial.connection.DbCon;
import cn.techtutorial.dao.UserDao;
import cn.techtutorial.model.User;

@WebServlet("/create-account")
public class CreateAccount extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Get the form data from the request
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // Create a UserDao instance to handle database operations
            UserDao userDao = new UserDao(DbCon.getConnection());

            // Check if the email already exists
            User existingUser = userDao.getUserByEmail(email);
            if (existingUser != null) {
                // If user exists, show an error message
                request.setAttribute("errorMessage", "Email already exists. Please try a different one.");
                request.getRequestDispatcher("CreateAccount.jsp").forward(request, response);
            } else {
                // Create a new User object and save it to the database
                User user = new User();
                user.setName(name);
                user.setEmail(email);
                user.setPassword(password); // Consider hashing the password before saving

                // Save the user to the database
                userDao.createUser(user);

                // Redirect to login page after successful registration
                response.sendRedirect("login.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            // Handle the exceptions
            e.printStackTrace();
            response.getWriter().println("Error during account creation: " + e.getMessage());
        }
    }
}
