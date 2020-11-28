<%@ page import="com.Bank.AccountUser" %>
<!doctype html>
<%
	String errorMsg = session.getAttribute("errorMsg") != null ? (String) session.getAttribute("errorMsg") : "";
%>

<html>
<head>
	<meta charset="utf-8">
	<title>Login</title>
	<link href="style.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
</head>

<body id="body">
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="/__/firebase/8.0.2/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="/__/firebase/8.0.2/firebase-analytics.js"></script>

<!-- Initialize Firebase -->
<script src="/__/firebase/init.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<nav class="navbar navbar-light bg-light">
	  <a class="navbar-brand">
		<img src="earthImage.png" width="30" height="30" class="d-inline-block align-top" alt="">
		World Bank
	  </a>
	</nav>
<div class="h1 mx-sm-3">
	Login
</div>
<form action="LoginPage" method="post">
  <div class="form-group mx-sm-3">
    <label>Email address</label>
    <input type="text" class="form-control col-xs-2" name="usernameTextField" placeholder="Username">
    <small id="emailHelp" class="form-text text-muted">Enter in your username or email.</small>
  </div>
  <div class="form-group mx-sm-3">
    <label>Password</label>
    <input type="password" class="form-control  col-xs-2" name="passwordTextField" placeholder="Password">
	  <small id="passHelp" class="form-text text-muted">Enter password.</small>
  </div>
  <div class="form-group mx-sm-3">
		<%= errorMsg %>
  </div>
  <button type="submit" class="btn btn-primary mx-sm-3">Login</button>
</form>
</body>
</html>

