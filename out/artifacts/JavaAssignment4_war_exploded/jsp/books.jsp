<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 01.11.2020
  Time: 1:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="headerr.jsp"%>
<script>
    $(document).ready(function () {
       // $.ajax({
       //     url: 'http://localhost:8080/rest/books',
       //     dataType: 'json',
       //     type: 'post',
       //     data: JSON.stringify({
       //         "isbn": $('#isbn').val(),
       //         "name": $('#name').val(),
       //         "author": $('#author').val(),
       //         "countOfCopy": $('#countOfCopy').val(),
       //         "url": $('#url').val()
       //     }),
       //     success: function (data, textStatus) {
       //         $('#addbookmsg').html(JSON.stringify(data));
       //     },
       //     error: function (jqXhr, textStatus, errorThrown){
       //         $('#addbookmsg').html(textStatus);
       //     }
       // });

    });
</script>

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Books List</h2>

            </div>

        </div>
    </section><!-- End Breadcrumbs -->



    <section id="contact" class="contact">
        <div class="container">
<div >
    <a href="${pageContext.request.contextPath}/jsp/addbook.jsp">ADD<br></a>
</div>
            <!--book container -->
            <c:set var="books" value="${requestScope['books']}"/>
            <c:forEach var="book" items="${books}">
            <div class="row justify-content-center" data-aos="fade-up">
                <div class="col-lg-10">
                    <div class="info-wrap">
                        <div class="row">

                            <div class="col-lg-2 info">
                                <img style="width:200px" src="<c:out value="${book.url}"/>" alt="">
                            </div>

                            <div class="col-lg-4 info mt-4 mt-lg-0"><!--DESCCRIPTION-->
                                <h3><c:out value="${book.name}"/> </h3>
                                <br>
                                <h8>Author: <c:out value="${book.author}"/></h8>
                            </div>

                            <div class="col-lg-4 info mt-4 mt-lg-0"><!-- STUDENTS LIST-->
                                <p>Story about magician boy that leave alive</p>
                            </div>

                            <div class="col-lg-2 info mt-4 mt-lg-0" ><!--BUTTONS-->
                                <a href="bookedit.jsp">EDIT</a>
                                <a href="#">DELETE<br></a>
                            </div>

                        </div>
                    </div>
                </div>
            </div><!--book container ends -->
            </c:forEach>
            <!--book container -->


        </div>
    </section><!--book list ends -->



</main><!-- End #main -->
<%@include file="footer.jsp"%>
