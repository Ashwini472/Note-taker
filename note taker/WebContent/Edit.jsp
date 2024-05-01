<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.helper.*,org.hibernate.*,com.entities.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
 <%@include file="all_js_css.jsp" %>
</head>
<body>
 <div class="container">
     <%@include file="navbar.jsp" %>
     <h1>Edit your Note</h1>
     <br>
    <%
    
    int noteId=Integer.parseInt(request.getParameter("note_id").trim());
    Session s=factoryprovider.getfactory().openSession();
	Note note=s.get(Note.class, noteId);
    
    %>
     <form action="Updateserv" method="get">
     <input value="<%=note.getId() %>" name="noteId" type="hidden">
  <div class="mb-3">
    <label for="title" class="form-label" >Note title</label>
    <input type="text" class="form-control" id="title" name="title" placeholder="Enter here"
		value="<%=note.getTitle() %>"	aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  	</div>
 	 <div class="mb-3">
    <label for="content" class="form-label">Note content</label>
  	 <textarea id="content" placeholder="Enter your content"  name="content" 
    class="form-control" style="height:100px;"><%=note.getContent() %></textarea>
 	 </div>
	 <div class="container text-center">
 	 <button type="submit" class="btn btn-primary">save your note</button>
  	</div>
	</form>
    
    </div>
    
</body>
</html>