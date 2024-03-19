<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
    <title>Job Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-10">
                <div class="d-flex align-items-center">
                    <a href="/dashboard" class="btn btn-primary mr-2">Back</a>
                    <a href="/logout" class="btn btn-danger">Logout</a>
                </div>
            </div>
        </div>
        <h1>Add a Job</h1>
        <form:form action="/jobs" method="post" modelAttribute="job">
            <div class="mb-3">
                <form:label path="title" class="form-label">Title</form:label>
                <form:errors path="title" class="text-danger"/>
                <form:input path="title" class="form-control"/>
            </div>
            <div class="mb-3">
                <form:label path="description" class="form-label">Description</form:label>
                <form:errors path="description" class="text-danger"/>
                <form:input path="description" class="form-control"/>
            </div>
            <div class="mb-3">
                <form:label path="location" class="form-label">Location</form:label>
                <form:errors path="location" class="text-danger"/>
                <form:input path="location" class="form-control"/>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form:form>  
    </div>
</body>
</html>
