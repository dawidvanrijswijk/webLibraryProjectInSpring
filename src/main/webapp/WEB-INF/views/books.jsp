<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="webjars/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">#ID</th>
        <th scope="col">Title</th>
        <th scope="col">ISBN</th>
        <th scope="col">Author</th>
        <th scope="col">Type</th>
        <th scope="col">Release</th>
        <th scope="col">Pages</th>
        <th scope="col">Borrower</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <c:forEach var="book" items="${books}" varStatus="loop">
    <tr>
        <th scope="row">${loop.index+1}</th>
        <td>${book.title}</td>
        <td>${book.isbn}</td>
        <td>${book.author.displayName}</td>
        <td>${book.category}</td>
        <td>${book.release}</td>
        <td>${book.pages}</td>
        <td><input class="form-check-input" type="radio" name="bookId" value="${book.id}" checked</td>
        </c:forEach>
    </tr>
    </tbody>
</table>
<a href="/add-new-book">
    <button class="btn btn-outline-success">Add</button>
</a>
<button type="button" class="btn btn-outline-primary">Edit</button>
<button type="button" class="btn btn-outline-danger">Delete</button>
</body>
</html>