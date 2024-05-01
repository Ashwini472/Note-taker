<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List" %>
<%@page import="com.entities.Note"%>
<%@page import="com.helper.factoryprovider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All notes : Note taker</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
		<div class="container">
		<%@include file="navbar.jsp" %>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>
		
		<% 
		Session s= factoryprovider.getfactory().openSession();
		Query q=s.createQuery("from Note");
			List<Note> list=q.list();
			for(Note note:list){
			/*/{
				out.pintln(note.getId()+":"+note.getTitle());
			}*/
		%>
		
		<div class="card mt-3" >
  <img class="card-img-top m-4 mx-auto" style="max-width:100px; "src="image/notebook.gif" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
   <p class="text-primary"><%=note.getAddedDate() %>
   <div class="container text-center">
   <a href="Deleteserv?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
   <a href="Edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
   </div>
   
   
  	</div>
	</div>
		<% 
			}
			
		s.close();	
		%>
		
		
		
		
		
		
		
		
		
		</div>


</body>
</html>