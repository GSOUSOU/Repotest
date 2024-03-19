<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><c:out value="${job.title}" /></title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <style>
        .card {
            border: 1px solid #dee2e6;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease-in-out;
        }

        .card:hover {
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-sm-10">
            <div class="d-flex align-items-center">
                <a href="/dashboard" class="btn btn-primary mr-2">Back</a>
                <a href="/logout" class="btn btn-danger">Logout</a>
            </div>
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-md-6 mx-auto">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">${job.title}</h5>
                    <p class="card-text">${job.description}</p>
                    <p class="card-text">Posted by: ${job.createdBy.firstName}</p>
                    <p class="card-text">Posted On: ${job.createdAt}</p>
                </div>
            </div>
        </div>
    </div>
</div>
<a href="/joinJob/${job.id}" class="btn btn-success">Add To My Jobs</a>
</body>
</html>
