<%@ page import="java.util.Date"%>
<!doctype html>
<% Date time = new Date();%>
<html>
	
<head>
	<meta charset="utf-8">
	<title>Home</title>
	<link href="style.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
</head>

<body id="body" style="text-align: center">
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
  <a class="navbar-brand" href="#">
    <img src="earthImage.png" width="30" height="30" class="d-inline-block align-top" alt="">
    World Bank
  </a>
</nav>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Hello!</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="homePane">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" id="home" href="Banking.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="smoney" href="SReceiveMoney.jsp">Send Money</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="viewTrans" href="ViewTransactions.jsp">View Transactions</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="logout" href="index.jsp">Logout</a>
                </li>
            </ul>
        </div>
</nav>

<div class="alert alert-primary" role="alert">
      Welcome to your banking session! <div class="font-weight-bold">Current time: <%= time %></div> </div>
</div>


<div class="card-group">
  <div class="card">
    <img class="card-img-top" src="sendMoney.jpg" alt="1 of 3">
    <div class="card-body">
      <h5 class="card-title">Send Money</h5>
      <p class="card-text">Send money to friends and family with availability to the desired account observed in minutes.</p>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="viewTransactions.jpeg" alt="2 of 3">
    <div class="card-body">
      <h5 class="card-title">View Transactions</h5>
      <p class="card-text">View the latest transactions organized in accounts with the ability to organize by date or amount.</p>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="locations.png" alt="3 of 3">
    <div class="card-body">
      <h5 class="card-title">Locations</h5>
      <p class="card-text">With more than 50 locations worldwide, World Bank is the bank that consumers turn to for fast, secure, and efficient banking, anytime.</p>
    </div>
  </div>
</div>
</body>
</html>
