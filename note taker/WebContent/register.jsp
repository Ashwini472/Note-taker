<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
     <%@include file="navbar.jsp" %>
    
     <section class="h-30 ">
  <div class="container py-2 h-50">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-8">
        <div class="card card-registration my-2">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-2 text-black">
                <h3 class="mb-5 text-uppercase text-center"> Registration form</h3>
                
                
                
				<form action="Registerserv" method="post">
                <div class="row">
                  <div class="col-md-6 mb-4">
                  
                    <div class="form-outline">
                     <label class="form-label" for="form3Example1m">First name</label>
                      <input type="text" name="fname" class="form-control form-control-lg" />
                     
                    </div>
                  </div>
                  <div class="col-md-6 mb-2">
                    <div class="form-outline">
                     <label class="form-label" for="form3Example1n">Last name</label>
                      <input type="text" name="lname" class="form-control form-control-lg" />
                     
                    </div>
                  </div>
                </div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example8">Address</label>
                  <input type="text" name="add" class="form-control form-control-lg" />
                
                </div>

                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                  <h6 class="mb-0 me-4">Gender: </h6>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender" id="femaleGender"
                      value="option1" />
                    <label class="form-check-label" for="femaleGender">Female</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender" id="maleGender"
                      value="option2" />
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline mb-0">
                    <input class="form-check-input" type="radio" name="gender" id="otherGender"
                      value="option3" />
                    <label class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div>

               
				<div class="form-outline mb-4">
                <label class="form-label" for="form3Example97">Email ID</label>
                  <input type="email" name="email" class="form-control form-control-lg" />
                  
                </div>

				<!--   <div>
  					<label for="formFileLg mb-4" class="form-label">ID proff</label>
 					 <input class="form-control form-control-lg" name="id_proff" type="file">
						</div>   -->
					
				<div class="form-outline mb-4">
                <label class="form-label" for="form3Example97">Create Password</label>
                  <input type="password" name="pass" class="form-control form-control-lg" />
                  
                </div>

                <div class=" d-flex justify-content-center pt-3 ">
                <button type="submit" class="btn btn-warning btn-lg ms-2">Submit form</button>
                </div><br>
                <div class="container-fluid"><h6>If Already register then <a href="login.jsp">Login</a></h6></div>
                
                
 		  </form>
 		  </div> 
 		  </div>
 		  </div>
 		  </div>
 		  </div>
 		  </div>
 		  </div>
 		  </section>
 		  </div> 
</body>
</html>