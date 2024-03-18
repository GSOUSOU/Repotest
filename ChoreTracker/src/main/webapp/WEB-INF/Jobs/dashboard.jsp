<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Chore Tracker Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid mt-3">
	<div class="row ">
   	   <div class="col-sm-10 ">
          <div class="d-flex align-items-center">
            <h5 class="mr-2 mb-0">welcome, ${loggedUser.getFirstName() }!</h5>
            <a href="/logout">Logout</a>
        </div>
       </div>
       <div class="col-sm-2 ">
        <a href="#">Add A Job</a>
       </div>
   </div>
 
   <div class="row">
   </div>
</div>
  
</body>
</html>