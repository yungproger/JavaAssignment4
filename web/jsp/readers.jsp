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
                <h2>Readers List</h2>

            </div>

        </div>
    </section><!-- End Breadcrumbs -->

    <section id="contact" class="contact">
    <div class="container">
        <div style="display: flex;margin-left: 45%">
            <a href="addreader.jsp"><button id ="q">ADD</button><br></a>
        </div>
    </div>
    </section>


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
                                <td class="cell100 column1">Mind & Body</td>
                                <td class="cell100 column2">Yoga</td>
                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                <td class="cell100 column4">Adam Stewart</td>
                                <td class="cell100 column5"><a href="readeredit.jsp">EDIT</a></td>
                            </tr>

                            <tr class="row100 body">
                                <td class="cell100 column1">Crit Cardio</td>
                                <td class="cell100 column2">Gym</td>
                                <td class="cell100 column3">9:00 AM - 10:00 AM</td>
                                <td class="cell100 column4">Aaron Chapman</td>
                                <td class="cell100 column5"><a href="readeredit.jsp">EDIT</a></td>
                            </tr>

                            <tr class="row100 body">
                                <td class="cell100 column1">Wheel Pose Full Posture</td>
                                <td class="cell100 column2">Yoga</td>
                                <td class="cell100 column3">7:00 AM - 8:30 AM</td>
                                <td class="cell100 column4">Donna Wilson</td>
                                <td class="cell100 column5"><a href="readeredit.jsp">EDIT</a></td>
                            </tr>

                            <tr class="row100 body">
                                <td class="cell100 column1">Wheel Pose Full Posture</td>
                                <td class="cell100 column2">Yoga</td>
                                <td class="cell100 column3">7:00 AM - 8:30 AM</td>
                                <td class="cell100 column4">Donna Wilson</td>
                                <td class="cell100 column5"><a href="readeredit.jsp">EDIT</a></td>
                            </tr>
                            <tr class="row100 body">
                                <td class="cell100 column1">Wheel Pose Full Posture</td>
                                <td class="cell100 column2">Yoga</td>
                                <td class="cell100 column3">7:00 AM - 8:30 AM</td>
                                <td class="cell100 column4">Donna Wilson</td>
                                <td class="cell100 column5"><a href="readeredit.jsp">EDIT</a></td>
                            </tr>
                            <tr class="row100 body">
                                <td class="cell100 column1">Wheel Pose Full Posture</td>
                                <td class="cell100 column2">Yoga</td>
                                <td class="cell100 column3">7:00 AM - 8:30 AM</td>
                                <td class="cell100 column4">Donna Wilson</td>
                                <td class="cell100 column5"><a href="readeredit.jsp">EDIT</a></td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

</body>
</html>



</main><!-- End #main -->

<%@include file="footer.jsp"%>
