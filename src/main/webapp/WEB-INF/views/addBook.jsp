<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="webjars/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<div class="container"></div>
<form action="/save-book" , method="post">
    <div class="form-group">
        <label for="title">Enter title: </label>
        <input type="text" class="form-control" id="title" name="title">
    </div>
    <div class="form-group">
        <label for="isbn">Enter ISBN: </label>
        <input type="text" class="form-control" id="isbn" name="isbn">
    </div>
    <div class="form-group">
        <label for="type">Enter Type: </label>
        <input type="text" class="form-control" id="type" name="category">
    </div>
    <div class="form-group">
        <label for="release">Enter Release date: </label>
        <input type="date" class="form-control" id="release" name="release">
    </div>
    <div class="form-group">
        <label for="pages">Enter number of pages: </label>
        <input type="number" class="form-control" id="pages" name="pages">
    </div>
    <button type="submit" class="btn btn-primary">Add new book</button>
</form>
</body>
</html>