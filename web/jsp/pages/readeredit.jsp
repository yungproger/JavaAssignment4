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
    <title>READEREDIT</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/pages/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#editReader").click(function(){

                $.ajax({
                    url: 'http://localhost:8080/rest/readers/update',
                    type: 'put',
                    dataType: 'json',
                    contentType:'application/json;charset=utf-8',
                    data: JSON.stringify(
                        {
                            id: $("#reader_id").val(),
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
                        alert(errorThrown);
                    }
                });
            });



            $("#addBorrow").click(function(){

                $.ajax({
                    url: 'http://localhost:8080/rest/borrows',
                    type: 'post',
                    dataType: 'json',
                    contentType:'application/json;charset=utf-8',
                    data: JSON.stringify(
                        {
                            reader_id: $("#reader_id").val(),
                            book_isbn: $("#book_isbn").val()
                        }
                    ),
                    success: function (data, textStatus) {
                        alert("Added Successfully");
                    },
                    error: function (jqXhr, textStatus, errorThrown){
                        if(textStatus==="parsererror") {
                            $.ajax({
                                url: "http://localhost:8080/rest/books/" + $("#book_isbn").val(),
                                contentType: "application/json",
                                dataType: 'json',
                                success: function (data) {
                                    $("#bookUrl").attr('src', data.url);
                                    $("#bookName").text(data.name);
                                    $("#bookAuthor").text(data.author);
                                    $("#bookISBN").text(data.isbn)
                                }
                            })
                        }else{
                            alert(textStatus);
                        }
                    }
                });
            });

            // $("#deleteBorrow").click(function(){
            //     var isbn = $(this).data("isbn");
            //     $.ajax({
            //         url: 'http://localhost:8080/rest/borrows/' + $("#reader_id").val() + '/' + isbn,
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
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/readers">READERS</a>
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
                            <c:set var="reader" value="${requestScope['reader']}"/>
                            <td><input id="firstName" type="text" name="" value="${reader.firstName}"></td>
                            <td><input id="lastName" type="text" name="" value="${reader.lastName}"></td>
                            <td><input id="phoneNumber" type="text" name="" value="${reader.phoneNumber}"></td>
                            <td><input id="address" type="text" name="" value="${reader.address}"></td>
                            <td><button type="button" id="editReader" class="btn btn-primary">SAVE</button></td>
                        </tr>
                        </tbody>
                    </table>

                    <div class="booklist">

                        <div class="book">
                            <div class="bookedit">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default">ISBN</span>
                                    </div>
                                    <input id="reader_id" value="${reader.id}" type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" hidden>
                                    <input id="book_isbn" type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default">
                                </div>

                                <button type="button" id="addBorrow" class="btn btn-primary">BORROW</button>

                            </div>
                        </div>

                        <div class="book newbook">
                            <div class="row">

                                <div class="col-sm">
                                    <img id="bookUrl" src="http://cdn.f.kz/prod/1666/1665486_550.jpghttp://cdn.f.kz/prod/1666/1665486_550.jpg" style="width: 100px;" alt="New book img">
                                </div>

                                <div class="col-sm">
                                    <h2 id="bookName">New book name</h2>
                                    <h3 id="bookAuthor">New book Author</h3>
                                    <h4 id="bookISBN">ISBN: isbn</h4>
                                </div>

                                <div class="col-sm">
                                    <a><button   type="button" class="btn btn-primary">REMOVE</button></a>
                                </div>
                            </div>
                        </div>
                        <c:set var="books" value='${requestScope["books"]}'/>
                        <c:forEach var="book" items="${books}">
                        <div class="book">
                            <div class="row">

                                <div class="col-sm">
                                    <img src="${book.url}" style="width: 100px;" alt="">
                                </div>

                                <div class="col-sm">
                                    <h2>${book.name}</h2>
                                    <h3>${book.author}</h3>
                                    <h4>ISBN: ${book.isbn}</h4>
                                </div>

                                <div class="col-sm">
                                    <a href="${pageContext.request.contextPath}/borrows?action=delete&readerId=${reader.id}&id=${book.isbn}"><button id="deleteBorrow" data-isbn="${book.isbn}" type="button" class="btn btn-primary">REMOVE</button></a>
                                </div>
                            </div>
                        </div>
                        </c:forEach>

                    </div>

                </div>

            </div>
        </div>

    </div>



</main>

<footer>
</footer>
</body>
</html>
