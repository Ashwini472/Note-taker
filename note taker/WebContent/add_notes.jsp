<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add notes</title>
	 <%@include file="all_js_css.jsp" %>

</head>
<body>

 <div class="container">
     <%@include file="navbar.jsp" %>
    <h1>Please fill your note detail</h1>
    <br>
    <!-- this is add form -->
    <form action="saveNoteserv" method="get">
  <div class="mb-3">
    <label for="title" class="form-label" >Note title</label>
    <input type="text" class="form-control" id="title" name="title" placeholder="Enter here" aria-describedby="emailHelp">
    
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Note content</label>
   <textarea id="content" placeholder="Enter your content"  name="content"
    class="form-control" style="height:100px;"></textarea>
  </div>
 <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
</form>
    
    
 </div>
    
    
    
</body>
</html>