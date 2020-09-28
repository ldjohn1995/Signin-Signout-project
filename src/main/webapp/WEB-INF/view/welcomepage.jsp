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

	<div class = "container-fluid">
  <!-- <div class = "row">
   <div class ="col-9">
    empty col
  </div>
    <div class ="col-2">
      <input type = "text" id="searchbar" placeholder="search movie title..." >
    </div>
    <div class="col-1">
      <button type = "button" vaule ="search" id="searchbtn"> Search! </button>
 </div>
</div> -->

<div class= "row">



  <div class = "col-5">
    <!-- logo --> <a href ="/welcome"><h1>Flicks</h1></a>
  </div>
  
   <div class= "col-4">
     <!-- empty col -->
   </div>
   <div class = "col-1">
  <!--   <button type="button" class="btn btn-light" href="signup.html"> Sign Up</button>  -->
  <a class="btn btn-primary" href="/register" role="button">Sign up</a>
    </div>
    
    <div class = "col-2">
   <!--   <button type="button" class="btn btn-light" href="signup.html"> Sign Up</button>  -->
   <a class="btn btn-primary" href="/login
   " role="button">Login </a>
     </div>
 </div>
 <!-- movie search -->
<div class = "container">
  <div id = "movies" class = "row">

  </div>

</div>
</div>



	<c:choose>

		<c:when test="${mode=='MODE_HOME' }">

			<div class="container" id="homediv">

				<div class="jumbotron text-center">

					<h1>Welcome to Flicks</h1>

				</div>

			</div>



		</c:when>



		<c:when test="${mode=='MODE_REGISTER' }">

			<div class="container text-center">

				<h3>New Registration</h3>

				<hr>

				<form class="form-horizontal" method="POST" action="save-user">

					<input type="hidden" name="id" value="${user.id }" />

					<div class="form-group">

						<label class="control-label col-3">Username</label>

						<div class="col-12">

							<input type="text" class="form-control" name="username"

								value="${user.username }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-3">First Name</label>

						<div class="col-12">

							<input type="text" class="form-control" name="firstname"

								value="${user.firstname }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-3">Last Name</label>

						<div class="col-12">

							<input type="text" class="form-control" name="lastname"

								value="${user.lastname }" />

						</div>

					</div>

					

					<div class="form-group">

						<label class="control-label col-3">Password</label>

						<div class="col-12">

							<input type="password" class="form-control" name="password"

								value="${user.password }" />

						</div>

					</div>

					<div class="form-group ">

						<input type="submit" class="btn btn-primary" value="Register" />
s
					</div>

				</form>

			</div>

		</c:when>

		




		<c:when test="${mode=='MODE_LOGIN' }">

			<div class="container text-center">

				<h3>User Login</h3>

				<hr>

				<form class="form-horizontal" method="POST" action="/login-user">

					<c:if test="${not empty error }">

						<div class= "alert alert-danger">

							<c:out value="${error }"></c:out>

							</div>

					</c:if>

					<div class="form-group">

						<label class="control-label col-3">Username</label>

						<div class="col-12">

							<input type="text" class="form-control" name="username"

								value="${user.username }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-3">Password</label>

						<div class="col-12">

							<input type="password" class="form-control" name="password"

								value="${user.password }" />

						</div>

					</div>

					<div class="form-group ">

						<input type="submit" class="btn btn-primary" value="Login" />

					</div>

					</form>

					</div>

					</c:when>

	</c:choose>


</body>

</html>