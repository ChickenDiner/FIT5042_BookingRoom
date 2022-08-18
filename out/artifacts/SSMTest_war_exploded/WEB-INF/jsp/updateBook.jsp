<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/8/17
  Time: 1:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h>
    Change Book here
</h>

<div class="container">
    <div class="col-md-6 colum">
        <form action="${pageContext.request.contextPath}/book/update" method="post">

            <input type="hidden" name="bookID" value="${QBook.bookID}">
            <div class="form-group">
                <label for="bookname">Meeting Name</label>
                <input type="text" name="bookName" class="form-control" value="${QBook.bookName}" id="bookname" required>
            </div>

            <div class="form-group">
                <label for="bookcount">Meeting Count</label>
                <input type="text" name="bookCounts" class="form-control" value="${QBook.bookCounts}" id="bookcount" required>
            </div>

            <div class="form-group">
                <label for="bookdetail">Meeting detail</label>
                <input type="text" name="detail" class="form-control" value="${QBook.detail}" id="bookdetail" required>
            </div>

            <div class="form-group">
                <label for="bookstart">Meeting Start</label>
                <input type="text" name="bookStart" class="form-control" id="bookstart">
            </div>

            <div class="form-group">
                <label for="bookend">Meeting End</label>
                <input type="text" name="bookEnd" class="form-control" id="bookend">
            </div>

            <div class="form-group">
                <label for="bookpeople">Meeting People</label>
                <input type="text" name="bookPeople" class="form-control" id="bookpeople">
            </div>

            <div class="form-group">
                <input type="submit" class="form-control" value="Change" required>
            </div>
        </form>
    </div>



</div>


</body>
</html>
