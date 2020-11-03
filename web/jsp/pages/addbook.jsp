<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 02.11.2020
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>ADDBOOK</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/pages/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#addBook").click(function(){

                $.ajax({
                    url: 'http://localhost:8080/rest/books',
                    type: 'post',
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
                        alert("Added Successfully");
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
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/books">READERS</a>
                </li>

            </ul>
        </div>
    </nav>
</header>

<main>

    <div class="section">

        <div class="bookedit">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-default">ISBN</span>
                </div>
                <input type="text" id="isbn" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-default">Name</span>
                </div>
                <input type="text" id="name" name="name"  class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-default">Author</span>
                </div>
                <input type="text" id="author" name="author" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-default">Count</span>
                </div>
                <input type="text" id="countOfCopy" name="countOfCopy" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-default">URL</span>
                </div>
                <input type="text" id="url" name="url" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default">
            </div>
            <button type="button"  id="addBook" class="btn btn-primary">ADD</button>

        </div>
    </div>


</main>

<footer>
</footer>
</body>
</html>
