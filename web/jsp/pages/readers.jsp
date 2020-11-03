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
    <title>READERS</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/pages/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-primary">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/books">ADMINPRIKIN</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav uu">
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/books">BOOKS</a>
                </li>
                <li class="nav-item active">
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
        <a href="${pageContext.request.contextPath}/jsp/pages/addreader.jsp"><button type="button" name="button"class="btn btn-primary">ADD</button></a>
    </div>

    <div class="section">
        <div class="readers">
            <div class="reader">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Surname</th>
                        <th scope="col">Phone Number</th>
                        <th scope="col">Address</th>
                        <th scope ="col"></th>
                    </tr>
                    </thead>
                    <tbody class="tbody">
                    <c:set var="readers" value='${requestScope["readers"]}'/>
                    <c:forEach var="reader" items="${readers}">
                    <tr>
                        <td>${reader.firstName}</td>
                        <td>${reader.lastName}</td>
                        <td>${reader.phoneNumber}</td>
                        <td>${reader.address}</td>
                        <td><a href="${pageContext.request.contextPath}/readers?action=edit&id=${reader.id}"><button type="button"class="btn btn-primary" name="button">EDIT</button></a></td>
                        <td><a href="${pageContext.request.contextPath}/readers?action=delete&id=${reader.id}"><button type="button"class="btn btn-primary" name="button">REMOVE</button></a></td>
                    </tr>
                    </c:forEach>

                    </tbody>
                </table>

            </div>

        </div>
    </div>



</main>

<footer>
</footer>
</body>
</html>
