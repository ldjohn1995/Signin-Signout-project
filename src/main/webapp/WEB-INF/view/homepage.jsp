<!DOCTYPE html >

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>

<meta charset="utf-8">



<title>flicks</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/quick.css">
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="crossorigin="anonymous"></script>
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src = "js/quick.js"></script>


</head>
<body>
<div class= "row">



  <div class = "col-5">
    <!-- logo --> <a href ="/welcome"><h1>Flicks</h1></a>
  </div>
  
   <div class= "col-4">
     <!-- empty col -->
   </div>
   <div class = "col-1">
  <!--  empty space -->
    </div>
    
    <div class = "col-2">
   <!--   <button type="button" class="btn btn-light" href="welcomepage.jsp"> Sign Up</button>  -->
   <a class="btn btn-primary" href="/login
   " role="button">sign out </a>
     </div>
 </div>
 <!-- movie search -->
<div class = "container">
  <div id = "movies" class = "row">

  </div>

</div>
</div>

<div class="container" id="homediv">

				<div class="jumbotron text-center">

					<h1>Welcome to Flicks</h1>
					<h3> ${user.username} </h3>

				</div>

			</div>

<div class = alert alert-success>
</div>

</body>

