package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.factoryprovider;


@WebServlet("/Updateserv")
public class Updete extends HttpServlet {

    public Updete() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String title= request.getParameter("title");
		String content= request.getParameter("content");
		
		int noteId=Integer.parseInt(request.getParameter("noteId").trim());
		
		Session s= factoryprovider.getfactory().openSession();
		Transaction tx=s.beginTransaction();
		Note note=s.get(Note.class, noteId);
		note.setTitle(title);
		note.setContent(content);
		note.setAddedDate(new Date());
		
		
		tx.commit();
		s.close();
		
		response.sendRedirect("all_notes.jsp");
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
