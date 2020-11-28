<%
    String transactions = session.getAttribute("transactions") != null ? (String) session.getAttribute("transactions") : "";
    String errorMsgAcct = session.getAttribute("errorMsgAcct") != null ? (String) session.getAttribute("errorMsgAcct") : "";
    String errorMsgOrder = session.getAttribute("errorMsgOrder") != null ? (String) session.getAttribute("errorMsgOrder") : "";
%>

<!doctype html>
<html>
	
<head>
	<meta charset="utf-8">
	<title>Send Money</title>
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
  <a class="navbar-brand" href="#">
    <img src="earthImage.png" width="30" height="30" class="d-inline-block align-top" alt="">
    World Bank
  </a>
</nav>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  		<a class="navbar-brand" id="userWelcome" href="#">Hello!</a>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
   		<span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="homePane">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" id="home" href="Banking.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="smoney" href="SReceiveMoney.jsp">Send Money</a>
      </li>
	  <li class="nav-item active">
        <a class="nav-link" id="viewTrans" href="ViewTransactions.jsp">View Transactions</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" id="logout" href="index.jsp">Logout</a>
      </li>
    </ul>
  </div>
</nav>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
  <form action="ViewTransactionsPage" method="post">
	<div style="text-align: center">
        <div style="text-align: center">
            <label class="form-check-label">View Account Information For</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="acctOptions" id="option1" value="checking">
            <label class="form-check-label">Checking</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="acctOptions" id="option2" value="savings">
            <label class="form-check-label">Savings</label>
        </div>
        <div class="form-group">
            <%= errorMsgAcct %>
        </div>
		<div style="text-align: center">
			<label class="form-check-label">Order Transactions By</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="orderOptions" id="option3" value="option1">
			<label class="form-check-label">Date</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="orderOptions" id="option4" value="option2">
		  <label class="form-check-label">Amount</label>
		</div>
        <div class="form-group">
            <%= errorMsgOrder %>
        </div>
	</div>
    <div style="text-align: center">
        <button type="submit" class="btn btn-outline-dark mx-sm-3">Confirm</button>
    </div>
  </form>
  </div>
</div>

<div class="list-group">
    <%= transactions %>
</div>
	
<nav aria-label="...">
  <ul class="pagination">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item active">
      <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
    </li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>
</body>
</html>
