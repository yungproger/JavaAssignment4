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
    <title>BOOK</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/pages/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){

            // $("#delete").click(function(){
            //     var isbn = $(this).prev().attr("isbn");
            //     $.ajax({
            //         url: 'http://localhost:8080/rest/borrows/' + isbn,
            //         type: 'delete',
            //         contentType:'application/json;charset=utf-8',
            //         success: function (data, textStatus) {
            //             alert("Deleted Successfully");
            //         },
            //         error: function (jqXhr, textStatus, errorThrown){
            //             alert(textStatus);
            //         }
            //     });
            // });

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
                    <a class="nav-link" href="${pageContext.request.contextPath}/readers">READERS</a>
                </li>
                <c:set value="${requestScope['username']}" var="username"/>
                <c:set value="${sessionScope['user']}" var="user"/>
                <c:choose>
                    <c:when test="${user!=null}">
                        <li class="nav-item">
                            <p class="text-white">${username}</p>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/jsp/pages/login.jsp">Login</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </nav>
</header>

<main>
    <div class="buttons">
        <a href="${pageContext.request.contextPath}/jsp/pages/addbook.jsp"><button type="button" class="btn btn-primary">ADD</button></a><br>
        <a href="${pageContext.request.contextPath}/books?action=sort"><button type="button" class="btn btn-primary">SORT</button></a>

    </div>

    <div class="section">


        <c:set var="books" value='${requestScope["books"]}'/>
        <c:forEach var="book" items="${books}">
        <div class="book">
            <div class="row">

                <div class="col-sm">
                    <img style="width: 100px;" src="${book.url}" alt="">
                </div>

                <div class="col-sm">
                    <h2>${book.name}</h2>
                    <h3>${book.author}</h3>
                    <h4>ISBN: ${book.isbn}</h4>
                    <p>Count of Copies: ${book.countOfCopy}</p>
                </div>

                <div class="col-sm">
                    <a href="${pageContext.request.contextPath}/books?action=edit&id=${book.isbn}"><button type="button" class="btn btn-primary">EDIT</button></a><br>
                    <a href="${pageContext.request.contextPath}/books?action=delete&id=${book.isbn}"><button type="button" id="delete"  class="btn btn-primary">REMOVE</button></a>
                </div>
            </div>
        </div>
        </c:forEach>

</main>

<footer>
</footer>
</body>
</html>
