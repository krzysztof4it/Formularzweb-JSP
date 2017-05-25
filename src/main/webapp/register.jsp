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
    <title>Register</title>
    <meta charset="UTF-8">
        <!-- Bootstrap -->
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
    <div class="col-xs-12 col-md-12 col-lg-5">
        <div class="panel panel-default">
            <div class="panel-body">
            <form method="post" action="/register" id="register-form" >
                <div class="form-group" id="name-group">
                    <label for="name">Imię:</label>
                    <input type="text" class="form-control" name="name" id="name" value="<%= request.getAttribute("name1")%>" >
                </div>
                <div class="form-group">
                    <label for="surname">Nazwisko:</label>
                    <input type="text" name="surname" class="form-control" id="surname">
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" name="email" class="form-control" id="email">

                </div>
                <div class="form-group">
                    <label for="username">Nazwa użytkownika:</label>
                    <input type="text" name="username" class="form-control" id="username">
                </div>
                <div class="form-group">
                    <label for="pwd">Hasło:</label>
                    <input type="password" name="password" class="form-control" id="pwd">
                </div>
                <div class="form-group">
                    <label for="pwd2">Powtórz hasło:</label>
                    <input type="password" name="password2" class="form-control" id="pwd2">
                </div>
                <button type="submit" class="btn btn-primary pull-right">Wyślij</button>
            </form>
            </div>
        </div>
    </div>
        <div class="col-xs-5 col-md-5 col-lg-5">
                        <% if(request.getParameter("error")!= null) { %>
                            <div class="alert alert-danger" role="alert">
                                <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                                <span class="sr-only">Error:</span>
                                Formularz zawiera puste pola
                            </div>
                        </h3>
                    <% } %>
        </div>
</div>

	






    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>