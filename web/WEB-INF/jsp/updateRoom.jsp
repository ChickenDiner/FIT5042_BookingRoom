<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Update Room</title>
</head>
<body>
<h>
  Update Room Here
</h>

<div class="container">
  <div class="col-md-6 colum">
    <form action="${pageContext.request.contextPath}/room/update" method="post">

      <input type="hidden" name="roomID" value="${QRoom.roomID}">
      <div class="form-group">
        <label for="roomname">Room Name</label>
        <input type="text" name="roomName" class="form-control" value="${QRoom.roomName}" id="roomname" required>
      </div>

      <div class="form-group">
        <label for="roomcounts">Room Capacity</label>
        <input type="text" name="roomCounts" class="form-control" value="${QRoom.roomCounts}" id="roomcounts" required>
      </div>

      <div class="form-group">
        <label for="roomhasdesktp">Room Has Desktop</label>
        <input type="text" name="roomHasdesktp" class="form-control" value="${QRoom.roomHasdesktp}" id="roomhasdesktp" required>
      </div>

      <div class="form-group">
        <label for="roomhasproductor">Room Has Productor</label>
        <input type="text" name="roomHasprojector" class="form-control" value="${QRoom.roomHasprojector}" id="roomhasproductor" required>
      </div>

      <div class="form-group">
        <label for="roomcan">Room can book</label>
        <input type="text" name="roomCan" class="form-control" value="${QRoom.roomCan}" id="roomcan" required>
      </div>

      <div class="form-group">
        <input type="submit" class="form-control" value="Change" required>
      </div>
    </form>
  </div>



</div>


</body>
</html>
