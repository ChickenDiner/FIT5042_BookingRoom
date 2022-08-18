<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>You are custom you can only add meeting</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1><span style="color: deepskyblue; ">Meeting</span> &nbsp; Information
                    (<span style="color: deepskyblue; ">Customer</span>)
                <p>
                    You are customer you can only add meeting
                </p>
                </h1>
            </div>
        </div>

        <div class="col-md-4" colum>
            <a href="${pageContext.request.contextPath}/book/addNewBookCustom">Booking a New Meeting</a>
        </div>

        <div class="col-md-4" colum>
            <a href="${pageContext.request.contextPath}/room/allRoomCustom">Go to Room Information</a>
        </div>

    </div>

    <div class="row clearfix">
        <div class="col-md-12">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Capacity</th>
                    <th>Topic</th>
                    <th>Start</th>
                    <th>End</th>
                    <th>People</th>
                </tr>
                </thead>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>${book.bookStart}</td>
                        <td>${book.bookEnd}</td>
                        <td>${book.bookPeople}</td>
                    </tr>
                </c:forEach>
                <tbody>


                </tbody>
            </table>
        </div>
    </div>




</div>


</body>
</html>
