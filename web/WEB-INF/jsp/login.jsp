
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        html {
            height: 100%;
            width: 100%;
            overflow: hidden;
            margin: 0;
            padding: 0;
            background: url(background.png) no-repeat 10px 10px;
            background-repeat: no-repeat;
            background-size: 100% 100%;
            -moz-background-size: 100% 100%;
        }

        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
        }

        #loginDiv {
            width: 400px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 400px;
            background-color: rgba(75, 81, 95, 0.3);
            box-shadow: 7px 7px 17px rgba(52, 56, 66, 0.5);
            border-radius: 250px;
        }


        p {
            margin-top: 30px;
            margin-left: 20px;
            color: azure;
        }

        input {
            margin-left: 15px;
            border-radius: 5px;
            border-style: hidden;
            height: 30px;
            width: 140px;
            background-color: rgba(216, 191, 216, 0.5);
            outline: none;
            color: #f0edf3;
            padding-left: 10px;
        }

        .button {
            border-color: cornsilk;
            background-color: rgba(100, 149, 237, .7);
            color: aliceblue;
            border-style: hidden;
            border-radius: 5px;
            width: 100px;
            height: 31px;
            font-size: 16px;
        }
    </style>
    <style type="text/css">
        input::-ms-input-placeholder{text-align: center;}
        input::-webkit-input-placeholder{text-align: center;}
    </style>
</head>


<%--<div class="container">--%>
<%--    <div class="col-md-6 colum">--%>
<%--        <form action="${pageContext.request.contextPath}/user/loginjudge" method="post">--%>

<%--            <div class="form-group">--%>
<%--                <label for="username">User Name</label>--%>
<%--                <input type="text" name="userName" class="form-control" id="username" required>--%>
<%--            </div>--%>

<%--            <div class="form-group">--%>
<%--                <label for="userpassword">Book Count</label>--%>
<%--                <input type="text" name="userPassword" class="form-control" id="userpassword" required>--%>
<%--            </div>--%>

<%--            <div class="form-group">--%>
<%--                <input type="submit" class="form-control" value="Login" required>--%>
<%--            </div>--%>
<%--        </form>--%>
<%--    </div>--%>



<%--</div>--%>


<div id="loginDiv">
    <form action=${pageContext.request.contextPath}/user/loginjudge id="post">
        <h1 style="text-align: center;color: aliceblue;">Login in</h1>
        <p>User:
            <input type="text" name="userName" class="form-control" id="username" required>
        </p>

        <p>Password:
            <input type="text" name="userPassword" class="form-control" id="userpassword" required>
        </p>
        <div style="text-align: center;margin-top: 30px;">
            <input type="submit" class="button" value="Login">
        </div>
    </form>

</div>



</body>
</html>
