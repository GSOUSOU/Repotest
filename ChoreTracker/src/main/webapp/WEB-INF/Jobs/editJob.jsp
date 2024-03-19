<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <!-- YOUR own local CSS -->
    <link rel="stylesheet" href="/css/main.css"/>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <title>Edit Your Job Posting</title>
   
</head>
<body>
<div class="row">
        <div class="col-sm-10">
            <div class="d-flex align-items-center">
                <a href="/dashboard" class="btn btn-primary mr-2">Back</a>
                <a href="/logout" class="btn btn-danger">Logout</a>
            </div>
        </div>
    </div>
    <h3>Edit Your Job Posting</h3>
        <form:form action="/edit/${job.id}" method="post" modelAttribute="job" class="col-md-6">
            <input type="hidden" name="_method" value="put">
            <div class="form-group">
                <form:label path="title">Title:</form:label>
                <form:errors path="title" class="text-danger"/>
                <form:input path="title" id="title" class="form-control"/>
            </div>
            <div class="form-group">
                <form:label path="description">Description:</form:label>
                <form:errors path="description" class="text-danger"/>
                <textarea id="description" name="description" class="form-control">${job.description}</textarea>
            </div>
            <div class="form-group">
                <form:label path="location">Location :</form:label>
                <form:errors path="location" class="text-danger"/>
                <form:input path="location" id="location" class="form-control"/>
            </div>   
            <button type="submit" class="btn btn-dark">Submit</button>
        </form:form>  
    </div>
</body>
</html>
