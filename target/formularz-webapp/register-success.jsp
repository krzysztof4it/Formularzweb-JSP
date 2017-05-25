<%--
  Created by IntelliJ IDEA.
  User: Krzysztof
  Date: 2017-05-24
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rejestracja Pomyślna</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container">
<div class="row">
    <nav>
        <ul class="nav nav-pills">
            <li role="presentation" ><a href="hello.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
            <li role="presentation" class="active"><a href="register.jsp"><span class="glyphicon glyphicon-registration-mark " aria-hidden="true"></span> Register</a></li>
            <li role="presentation" ><a href="login.jsp"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Login</a></li>
        </ul>
    </nav>
    <div class="page-header">
        <h1>Register to:  <small>Web App Java JSP!</small></h1>
    </div>
</div>


<div class="row">
<div class="col-xs-5 col-md-5 col-lg-5">
    <div class="alert alert-success" role="alert">Rejestracja pomyślna.</div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Twoje dane: </h3>
        </div>
        <div class="panel-body">
            <p>Imię: <%= request.getAttribute("name") %></p>
            <p>Nazwisko: <%= request.getAttribute("surname") %></p>
            <p>Email: <%= request.getAttribute("email") %></p>
            <p>Nazwa użytkownika: <%= request.getAttribute("username") %></p>
            <p>Hasło: <%= request.getAttribute("password")%></p>
        </div>
    </div>
    <ul class="nav nav-pills pull-right" >
        <li role="presentation" ><a href="register.jsp"></span>Powrót do rejestracji </a></li>
        <li role="presentation"  class="active"><a href="login.jsp"></span>Przejdz do logowania </a></li>
    </ul>
</div>
</div>



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>


</body>
</html>
