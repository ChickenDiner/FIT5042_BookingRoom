<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Books show</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1><span style="color: red; ">Meeting</span> &nbsp; Information
                (<span style="color: red; ">Admin</span>)</h1>
            </div>
        </div>

        <div class="col-md-4" colum>
            <a href="${pageContext.request.contextPath}/room/allRoom">Return to Room</a>
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
                        <th>Option</th>
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
                            <td>
                                <a href="${pageContext.request.contextPath}/book/toUpdateRoom?id=${book.bookID}">Change</a>  &nbsp; | &nbsp;
                                <a href="${pageContext.request.contextPath}/book/deletBook?id=${book.bookID}">Delet</a>
                            </td>
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
