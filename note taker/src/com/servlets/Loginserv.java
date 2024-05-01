package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.entities.User;
import com.helper.factoryprovider;

@WebServlet("/Loginserv")
public class Loginserv extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Loginserv() {
        super();
    }

    protected void doget(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String pass = request.getParameter("pass");

        Session s = factoryprovider.getfactory().openSession();
        
        String queryStr = "FROM User WHERE email = :email AND pass = :pass";
        
        Query<User> query = s.createQuery(queryStr, User.class);
        query.setParameter("email", email);
        query.setParameter("pass", pass);

        User user = null;
        try {
            user = query.getSingleResult();
        } catch (Exception e) {
            e.printStackTrace();
        }

        s.close();

        if (user != null) {
            // Create a session and store user data
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("user", user);
            response.sendRedirect("welcome.jsp");
        } else {
            out.println("Invalid credentials! Please try again.");
            response.sendRedirect("login.jsp");
        }
    }

    protected void dopost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

}
