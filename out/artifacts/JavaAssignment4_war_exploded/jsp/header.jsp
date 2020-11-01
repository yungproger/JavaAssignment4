<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 01.11.2020
  Time: 0:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>AdminPrikin</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <link href="jsp/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="jsp/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="jsp/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="jsp/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="jsp/assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="jsp/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="jsp/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="jsp/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="jsp/assets/css/style.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){

           $("addBook").click(function(){
              $.ajax({
                  url: 'http://localhost:8080/rest/books',
                  dataType: 'json',
                  type: 'post',
                  data: JSON.stringify({
                      "isbn": $('#isbn').val(),
                      "name": $('#name').val(),
                      "author": $('#author').val(),
                      "countOfCopy": $('#countOfCopy').val(),
                      "url": $('#url').val()
                  }),
                  success: function (data, textStatus) {
                      $('#addbookmsg').html(JSON.stringify(data));
                  },
                  error: function (jqXhr, textStatus, errorThrown){
                      $('#addbookmsg').html(textStatus);
                  }
              });
           });
        });
    </script>

</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">
        <h1 class="logo mr-auto"><a href="${pageContext.request.contextPath}/books"><span>ADMIN</span>PRIKIN</a></h1>
        <nav class="nav-menu d-none d-lg-block">
            <ul>
                <li><a href="${pageContext.request.contextPath}/books">Books</a></li>
                <li><a href="${pageContext.request.contextPath}/readers">Readers</a></li>
                <li><a href="#">Info</a></li>
            </ul>
        </nav>
    </div>
</header><!-- End Header -->
