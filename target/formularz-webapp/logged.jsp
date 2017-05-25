<%@ page import="pl.krzysztof4it.beans.User" %><%--
  Created by IntelliJ IDEA.
  User: Krzysztof
  Date: 2017-05-24
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logged to App</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container">
<div class="row">
    <nav>
        <ul class="nav nav-pills">
            <li role="presentation" ><a href="hello.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
            <li role="presentation" ><a href="register.jsp"><span class="glyphicon glyphicon-registration-mark " aria-hidden="true"></span> Register</a></li>
            <li role="presentation" class="active"><a href="login.jsp"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Login</a></li>
        </ul>
    </nav>
    <div class="page-header">
<%--        <%
            User user = (User) request.getSession().getAttribute("user");
        %>
        <h1>Hello, <%= user.getLogin()%></h1>--%>
        <div class="alert alert-success" role="alert">
            <strong>Well done, <%= session.getAttribute("user")%>!</strong>

            You successfully login to Webb App.
        </div>
    </div>
</div>


<div class="row">
    <div class="col-xs-12 col-md-12 col-lg-5">

    </div>
</div>





<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>