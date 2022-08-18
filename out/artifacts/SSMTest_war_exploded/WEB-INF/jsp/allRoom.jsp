<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Room Information(Admin)</title>

  <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
  <div class="row clearfix">
    <div class="col-md-12">
      <div class="page-header">
        <h1><span style="color: red; ">Rooms</span> &nbsp; Information
          (<span style="color: red; ">Admin</span>)</h1>
      </div>
    </div>

    <div class="col-md-4" colum>
      <a href="${pageContext.request.contextPath}/room/addNewRoom">New Room</a>
    </div>

    <div class="col-md-4" colum>
        <a href="${pageContext.request.contextPath}/book/addNewBook">Booking a New Meeting</a>
    </div>

    <div class="col-md-4" colum>
      <a href="${pageContext.request.contextPath}/book/allBook">Go to Meeting infomation</a>
    </div>

    <div class="col-md-4" colum>
      <form action="${pageContext.request.contextPath}/room/qurryRoomAdmin" method="post" style="float:right;display: flex">
        <input type="text" class="form-control" name="qurryRoomName" placeholder="Enter Room Name">
        <input type="submit" value="Qurry" class="btn btn-primary">
      </form>
    </div>

  <div class="row clearfix">
    <div class="col-md-12">
      <table class="table table-hover table-striped">
        <thead>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Capacity</th>
          <th>HasDeskTop</th>
          <th>HasProjector</th>
          <th>CanBook</th>
          <th>Option</th>
        </tr>
        </thead>
        <c:forEach var="room" items="${list}">
          <tr>
            <td>${room.roomID}</td>
            <td>${room.roomName}</td>
            <td>${room.roomCounts}</td>
            <td>${room.roomHasdesktp}</td>
            <td>${room.roomHasprojector}</td>
            <td>${room.roomCan}</td>
            <td>
              <a href="${pageContext.request.contextPath}/room/toUpdateRoom?id=${room.roomID}">Change</a>  &nbsp; | &nbsp;
              <a href="${pageContext.request.contextPath}/room/deletRoom?id=${room.roomID}">Delet</a>
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
