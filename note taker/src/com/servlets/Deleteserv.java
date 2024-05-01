package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.factoryprovider;


@WebServlet("/Deleteserv")
public class Deleteserv extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		int noteId=Integer.parseInt(request.getParameter("note_id").trim());
		Session s=factoryprovider.getfactory().openSession();
		Transaction tx=s.beginTransaction();
		
		Note note=s.get(Note.class, noteId);
		s.delete(note);
		tx.commit();
		s.close();
		response.sendRedirect("all_notes.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
