<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div >
            <a href="${pageContext.request.contextPath}/jsp/addreader.jsp">ADD<br></a>
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
                                <th class="cell100 column4">Address</th>
                                <th class="cell100 column5"></th>
                            </tr>
                            </thead>
                        </table>
                    </div>

                    <div class="table100-body js-pscroll">
                        <table>
                            <tbody>
                            <c:set var="readers" value='${requestScope["readers"]}'/>
                            <c:forEach var="reader" items="${readers}">
                            <tr class="row100 body">
                                <td class="cell100 column1">${reader.firstName}</td>
                                <td class="cell100 column2">${reader.lastName}</td>
                                <td class="cell100 column3">${reader.phoneNumber}</td>
                                <td class="cell100 column4">${reader.address}</td>
                                <td class="cell100 column5"><a href="${pageContext.request.contextPath}/jsp/readeredit.jsp">EDIT</a></td>
                            </tr>
                            </c:forEach>
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
