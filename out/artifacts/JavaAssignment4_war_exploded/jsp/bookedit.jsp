<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 01.11.2020
  Time: 1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Edit book</h2>

            </div>

        </div>
    </section><!-- End Breadcrumbs -->




    <section id="contact" class="contact">
        <div class="container">

            <div class="row mt-5 justify-content-center" data-aos="fade-up">
                <div class="col-lg-10">
                    <form action="" method="post" role="form" class="php-email-form">

                        <div class="col-md-12" id="input">
                            <input type="text" class="form-control" name="imgurl" id="imgurl" placeholder="img url" data-rule="minlen:4" data-msg="" />
                            <div class="validate"></div>
                        </div>

                        <div class="col-md-12" id="input">
                            <input type="text" class="form-control" name="bookname" id="bookname" placeholder="Book name" data-rule="minlen:4" data-msg="" />
                            <div class="validate"></div>
                        </div>

                        <div class="col-md-12" id="input">
                            <input type="text" class="form-control" name="author" id="author" placeholder="Author" data-rule="minlen:4" data-msg="" />
                            <div class="validate"></div>
                        </div>

                        <div class="col-md-12" id="input">
                            <input type="text" class="form-control" name="quantity" id="quantity" placeholder="Quantity" data-rule="minlen:4" data-msg="" />
                            <div class="validate"></div>
                        </div>

                        <div class="col-md-12" id="input">
                            <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="" placeholder="Description"></textarea>
                            <div class="validate"></div>
                        </div>

                        <div class="text-center">
                            <button type="submit">EDIT</button>
                        </div>
                    </form>
                </div>

            </div>

        </div>
    </section><!-- End Contact Section -->

</main><!-- End #main -->

<%@include file="footer.jsp"%>
