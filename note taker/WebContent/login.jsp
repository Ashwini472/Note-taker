<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>

		<%@include file="all_js_css.jsp" %>
</head>
<body>
		<div class="container">
		<%@include file="navbar.jsp" %>
		
		<section class="h-30 ">
  <div class="container py-2 h-50">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-6">
        <div class="card card-registration my-2">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase text-center"> Login form</h3>
                
                
                
				<form action="Regserv" method="get">
                <div class="row">
                  <div class="col-md-8 mb-4">
                 
				<div class="form-outline mb-6">
                <label class="form-label" for="form3Example97">Email ID</label>
                  <input type="email" name="email" class="form-control form-control-lg" />
                  
                </div>

		
					
				<div class="form-outline mb-6 justify-content-center pt-3">
                <label class="form-label" for="form3Example97"> Password</label>
                  <input type="password" name="pass" class="form-control form-control-lg" />
                  
                </div>

                <div class=" d-flex justify-content-center pt-3 ">
                <button type="button" class="btn btn-warning btn-lg ms-2">Submit </button>
                </div>
                </div>
                </div>
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
		
		
		
		</div>
		
</body>
</html>