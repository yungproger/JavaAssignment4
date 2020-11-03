<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 02.11.2020
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>BOOKEDIT</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/pages/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#editBook").click(function(){

                $.ajax({
                    url: 'http://localhost:8080/rest/books/update',
                    type: 'put',
                    dataType: 'json',
                    contentType:'application/json;charset=utf-8',
                    data: JSON.stringify(
                        {
                            isbn:  $('#isbn').val(),
                            name: $('#name').val(),
                            author: $('#author').val(),
                            countOfCopy: $('#countOfCopy').val(),
                            url: $('#url').val()
                        }
                    ),
                    success: function (data, textStatus) {
                        alert("Updated Successfully");
                    },
                    error: function (jqXhr, textStatus, errorThrown){
                        alert(textStatus);
                    }
                });
            });
        });
    </script>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-primary">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/books">ADMINPRIKIN</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/books">BOOKS</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/readers">READERS</a>
                </li>

            </ul>
        </div>
    </nav>

</header>

<main>

    <div class="section">
        <c:set value="${requestScope['book']}" var="book"/>
        <div class="bookedit">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-default">ISBN</span>
                </div>
                <input type="text" id="isbn" value="${book.isbn}" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" disabled>
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-default">Name</span>
                </div>
                <input type="text" id="name" value="${book.name}" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-default">Author</span>
                </div>
                <input type="text" id="author" value="${book.author}" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-default">Count</span>
                </div>
                <input type="text" id="countOfCopy" value="${book.countOfCopy}" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-default">URL</span>
                </div>
                <input type="text" id="url" value="${book.url}" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default">
            </div>
            <button type="button" id="editBook" class="btn btn-primary">EDIT</button>

        </div>
    </div>


</main>

<footer>
</footer>
</body>
</html>
