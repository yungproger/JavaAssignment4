<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 01.11.2020
  Time: 1:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="headerr.jsp"%>

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
    <a href="addbook.jsp"><input id="q" type="submit" name="" value="ADD"><br></a>
</div>
            <!--book container -->
            <div class="row justify-content-center" data-aos="fade-up">
                <div class="col-lg-10">
                    <div class="info-wrap">
                        <div class="row">

                            <div class="col-lg-2 info">
                                <img style="width:200px" src="zz.jpg" alt="">
                            </div>

                            <div class="col-lg-4 info mt-4 mt-lg-0"><!--DESCCRIPTION-->
                                <h3>Hary Potar</h3>
                                <h8>Story about magician boy that leave alive</h8>
                            </div>

                            <div class="col-lg-4 info mt-4 mt-lg-0"><!-- STUDENTS LIST-->
                                <p>Story about magician boy that leave alive</p>
                            </div>

                            <div class="col-lg-2 info mt-4 mt-lg-0" ><!--BUTTONS-->
                                <a href="bookedit.jsp"><input id="q" type="submit" name="" value="EDIT"><br></a>
                                <a href="#"><input id="q" type="submit" name="" value="DELETE"><br></a>
                            </div>

                        </div>
                    </div>
                </div>
            </div><!--book container ends -->

            <!--book container -->
            <div class="row justify-content-center" data-aos="fade-up">
                <div class="col-lg-10">
                    <div class="info-wrap">
                        <div class="row">

                            <div class="col-lg-2 info">
                                <img style="width:200px" src="qqq.jpg" alt="">
                            </div>

                            <div class="col-lg-4 info mt-4 mt-lg-0"><!--DESCCRIPTION-->
                                <h3>Kniga</h3>
                                <h8>Kdsdsdsd</h8>
                            </div>

                            <div class="col-lg-4 info mt-4 mt-lg-0"><!-- STUDENTS LIST-->
                                <p>dvdfdfdfbf</p>
                            </div>

                            <div class="col-lg-2 info mt-4 mt-lg-0" ><!--BUTTONS-->
                                <a href="bookedit.jsp"><input id="q" type="submit" name="" value="EDIT"><br></a>
                                <a href="#"><input id="q" type="submit" name="" value="DELETE"><br></a>
                            </div>

                        </div>
                    </div>
                </div>
            </div><!--book container ends -->



        </div>
    </section><!--book list ends -->



</main><!-- End #main -->
<%@include file="footer.jsp"%>
