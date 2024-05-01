package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.User;
import com.helper.factoryprovider;


@WebServlet("/Registerserv")
public class Registerserv extends HttpServlet {
	
    public Registerserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
			String fname= request.getParameter("fname");
			String lname= request.getParameter("lname");
			String address= request.getParameter("address");
			String gender= request.getParameter("gender");
			String email= request.getParameter("email");
			String pass=request.getParameter("pass");
		
			User user= new User(fname,lname,address,gender,email,pass);
		
			Session s=factoryprovider.getfactory().openSession();
			
			Transaction tx= s.beginTransaction();
			
			s.save(user);
			
			tx.commit();
			s.close();
			out.print("user registered succesfully");
			response.sendRedirect("login.jsp");
		
	}

	
	protected void doget(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
