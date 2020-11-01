<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 01.11.2020
  Time: 1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="headerr.jsp"%>
<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Add reader</h2>

            </div>

        </div>
    </section><!-- End Breadcrumbs -->


    <div class="limiter">
        <div class="container-table100">
            <div class="wrap-table100">
                <div class="table100 ver1 m-b-110">

                    <div class="table100-head">
                        <table>
                            <thead>
                            <tr class="row100 head">
                                <th class="cell100 column1">Name</th>
                                <th class="cell100 column2">Surname</th>
                                <th class="cell100 column3">Telephone</th>
                                <th class="cell100 column4">Email</th>
                                <th class="cell100 column5"></th>
                            </tr>
                            </thead>
                        </table>
                    </div>

                    <div class="table100-body js-pscroll">
                        <table>
                            <tbody>
                            <tr class="row100 body">
                                <td class="cell100 column1"> <input type="text" name="" placeholder="Name" value=""> </td>
                                <td class="cell100 column2"> <input type="text" name="" placeholder="Surname" value=""> </td>
                                <td class="cell100 column3"> <input type="text" name="" placeholder="Number" value=""> </td>
                                <td class="cell100 column4"> <input type="text" name="" placeholder="Address" value=""> </td>
                                <td class="cell100 column5"> <a href=""><button type="button" name="button">ADD</button></a></button> </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                </body>

                <section id="breadcrumbs" class="breadcrumbs">
                    <div class="container">

                        <div class="d-flex justify-content-between align-items-center">
                            <h2>Borrowed books</h2>

                        </div>

                    </div>
                </section>



                <section id="contact" class="contact">
                    <div class="container">

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
                                            <a href="#"><input id="q" type="submit" name="" value="ADD"><br></a>
                                            <a href="#"><input id="q" type="submit" name="" value="EDIT"><br></a>
                                            <a href="#"><input id="q" type="submit" name="" value="BORROW"><br></a>
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
                                            <a href="#"><input id="q" type="submit" name="" value="ADD"><br></a>
                                            <a href="#"><input id="q" type="submit" name="" value="EDIT"><br></a>
                                            <a href="#"><input id="q" type="submit" name="" value="BORROW"><br></a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div><!--book container ends -->
                    </div>
                </section><!--book list ends -->
</main><!-- End #main -->
<%@include file="footer.jsp"%>