
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h>
  add a room here
</h>

<div class="container">
  <div class="col-md-6 colum">

    <form action="${pageContext.request.contextPath}/room/addRoom" method="post">

      <div class="form-group">
        <label for="roomname">Room Name</label>
        <input type="text" name="roomName" class="form-control" id="roomname" required>
      </div>

      <div class="form-group">
        <label for="roomcounts">Room Capacity</label>
        <input type="text" name="roomCounts" class="form-control" id="roomcounts" required>
      </div>

      <div class="form-group">
        <label for="roomhasdesktp">Room Has Desktop</label>
        <input type="text" name="roomHasdesktp" class="form-control" id="roomhasdesktp" required>
      </div>

      <div class="form-group">
        <label for="roomhasproductor">Room Has Productor</label>
        <input type="text" name="roomHasprojector" class="form-control" id="roomhasproductor" required>
      </div>

      <div class="form-group">
        <label for="roomcan">Room can book</label>
        <input type="text" name="roomCan" class="form-control" id="roomcan" required>
      </div>

      <div class="form-group">
        <input type="submit" class="form-control" value="Change" required>
      </div>
    </form>

  </div>



</div>


</body>
</html>
