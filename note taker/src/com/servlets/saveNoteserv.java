package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
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


@WebServlet("/saveNoteserv")
public class saveNoteserv extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String title=request.getParameter("title");
		String content= request.getParameter("content");
		
		Note note= new Note(title, content, new Date());
		/*System.out.println(note.getId()+""+ note.getTitle());*/
		
		Session s=factoryprovider.getfactory().openSession();
		Transaction tx=s.beginTransaction();
		s.save(note);
		tx.commit();
		s.close();
		
		out.print("<h1 style='text-align:center;'>Note is added successfully</h1>");
		out.print("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all notes</h1>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
