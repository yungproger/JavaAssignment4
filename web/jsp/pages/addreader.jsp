<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>ADDREADER</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/pages/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#addReader").click(function(){

                $.ajax({
                    url: 'http://localhost:8080/rest/readers',
                    type: 'post',
                    dataType: 'json',
                    contentType:'application/json;charset=utf-8',
                    data: JSON.stringify(
                        {
                            firstName:  $('#firstName').val(),
                            lastName: $('#lastName').val(),
                            phoneNumber: $('#phoneNumber').val(),
                            address: $('#address').val(),
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
    <div class="readerediting">

        <div class="section">
            <div class="readers">
                <div class="reader">

                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Surname</th>
                            <th scope="col">Number</th>
                            <th scope="col">Address</th>
                            <th scope ="col"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input id="firstName" type="text" name="" value=""></td>
                            <td><input id="lastName" type="text" name="" value=""></td>
                            <td><input id="phoneNumber" type="text" name="" value=""></td>
                            <td><input id="address" type="text" name="" value=""></td>
                            <td><button type="button" id="addReader" class="btn btn-primary">ADD</button></td>
                        </tr>
                        </tbody>
                    </table>


                </div>

            </div>
        </div>

    </div>
</main>

<footer>
</footer>
</body>
</html>

