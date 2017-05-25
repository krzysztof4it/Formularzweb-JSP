<!-- <%--
  Created by IntelliJ IDEA.
  User: Krzysztof
  Date: 2017-05-23
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
-->
<html>
<head>
    <title>Hello user</title>
        <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container">
  <div class="row">
  <nav>
    <ul class="nav nav-pills">
      <li role="presentation" class="active"><a href="hello.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
      <li role="presentation"><a href="register.jsp"><span class="glyphicon glyphicon-registration-mark " aria-hidden="true"></span> Register</a></li>
      <li role="presentation" ><a href="login.jsp"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Login</a></li> 
    </ul>
  </nav>
    <div class="page-header">
    <h1>Welcome to:  <small>Web App Java JSP!</small></h1>
  </div>
  <div class="jumbotron">
    <h1>Hello <% if (request.getParameter("name") !=null){ %>
        <%= request.getParameter("name") %>
        <% }%>
        to our website!</h1>

    <p>
      <a class="btn btn-primary btn-lg" href="#" role="button">Więcej info</a>
      <a class="btn btn-primary btn-lg" href="register.jsp" role="button">Register</a>
      <a class="btn btn-primary btn-lg" href="login.jsp" role="button">Login</a>
    </p>
  </div>
<div class="row">
    <% if (request.getParameter("name") == null) {%>
    <div class="col-xs-12 col-md-12 col-lg-5">
        <form method="get" action="/hello" id="hello-form" >
            <div class="form-group" id="name-group">
                <label for="name">Enter your name:</label>
                <input type="text" class="form-control" name="name" id="name">
                <p class="help-block hidden"></p>
            </div>
            <button type="submit" class="btn btn-primary pull-right">Confirm</button>
        </form>
    </div>
    <% }%>
</div>
      <% if (request.getParameter("name") !=null) {%>
<div class="row">
    <div class="col-xs-12 col-md-12 col-lg-5">
    <div class="panel">
        <p>Serwer: <%= request.getAttribute("serwer")%></p>
        <p>IDE: <%= request.getAttribute("ide")%></p>
        <p>SDK: <%= request.getAttribute("sdk")%></p>
        <p>Browser: <%= request.getAttribute("browser")%></p>
    </div>
    </div>
</div>
      <% }%>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
