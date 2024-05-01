<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-pink bg-lighten-smbg-pink bg-darken-xs" style="background-color:pink ;">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">Note Taker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       
       
       
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="add_notes.jsp">Add Note</a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link" href="all_notes.jsp">Show Notes</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="login.jsp">Login</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="register.jsp">Registration</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="all_notes.jsp">Admin</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<nav>
</body>
</html>