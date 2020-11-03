<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 02.11.2020
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/pages/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title></title>
</head>
<body>
<div class="box">
    <div class="login">
        <form class="form-signin" action="${pageContext.request.contextPath}/login" method="post">
            <h1 class="h3 mb-3 font-weight-normal">Log In</h1>
            <label for="inputEmail" class="sr-only">Username</label>
            <input type="text" name="username" id="inputEmail" class="form-control" placeholder="Username" required autofocus><br>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required><br>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
        </form>
    </div>
</div>
</body>
</html>
