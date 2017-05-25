<!-- <%--
  Created by IntelliJ IDEA.
  User: Krzysztof
  Date: 2017-05-23
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
-->
<html>
<head>
    <title>Login</title>
        <!-- Bootstrap -->
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
    <h1>Login to:  <small>Web App Java JSP!</small></h1>
  </div>
</div>


<div class="row">
    <div class="col-xs-12 col-md-12 col-lg-5">
        <% if(request.getParameter("login")!= null || request.getParameter("login") == "false") { %>
        <div class="alert alert-danger" role="alert">
            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
            <span class="sr-only">Error:</span>
            Nieprawidłowe nazwa użytkownika lub hasło
        </div>
        <%}%>

        <form method="post" action="/login" id="login-form" >
            <div class="form-group">
                <label for="username">Nazwa użytkownika:</label>
                <input type="text" name="username" class="form-control" id="username">
                <p class="help-block hidden" id="username-error"></p>
            </div>
            <div class="form-group">
                <label for="pwd">Hasło:</label>
                <input type="password" name="password" class="form-control" id="pwd">
                <p class="help-block hidden"></p>
            </div>

            <button type="submit" class="btn btn-primary pull-right">Wyślij</button>
        </form>
    </div>

</div>
<br>

  
</div>





    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>