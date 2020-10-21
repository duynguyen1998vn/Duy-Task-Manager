<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!------ Include the above in your HEAD tag ---------->

<!--author:starttemplate-->
<!--reference site : starttemplate.com-->
<!DOCTYPE html>
<html lang="en">
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
/*author:starttemplate*/
/*reference site : starttemplate.com*/
@import url('https://fonts.googleapis.com/css?family=Mukta');

body {
	font-family: 'Mukta', sans-serif;
	height: 100vh;
	min-height: 550px;
	background-image:
		url(https://images-na.ssl-images-amazon.com/images/I/81-908zLW0L._AC_SL1200_.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	position: relative;
	overflow-y: hidden;
}

a {
	text-decoration: none;
	color: #444444;
}

.login-reg-panel {
	position: relative;
	top: 50%;
	transform: translateY(-50%);
	text-align: center;
	width: 70%;
	right: 0;
	left: 0;
	margin: auto;
	height: 400px;
	background-color: rgba(0, 255, 0, 0.3);
}

.white-panel {
	background-color: rgba(255, 255, 255, 1);
	height: 100%;
	position: absolute;
	top: -50px;
	width: 50%;
	right: calc(50% - 50px);
	transition: .3s ease-in-out;
	z-index: 0;
	box-shadow: 0 0 15px 9px #00000096;
	overflow: auto;
}

.login-reg-panel input[type="radio"] {
	position: relative;
	display: none;
}

.login-reg-panel {
	color: #B8B8B8;
}

.login-reg-panel #label-login, .login-reg-panel #label-register {
	border: 1px solid #9E9E9E;
	padding: 5px 5px;
	width: 150px;
	display: block;
	text-align: center;
	border-radius: 10px;
	cursor: pointer;
	font-weight: 600;
	font-size: 18px;
}

.login-info-box {
	width: 30%;
	padding: 0 50px;
	top: 20%;
	left: 0;
	position: absolute;
	text-align: left;
	color: #000000;
}

.register-info-box {
	width: 30%;
	padding: 0 50px;
	top: 20%;
	right: 0;
	position: absolute;
	text-align: left;
	color: #000000;
}

.right-log {
	right: 50px !important;
}

.login-show, .register-show {
	z-index: 1;
	display: none;
	opacity: 0;
	transition: 0.3s ease-in-out;
	color: #242424;
	text-align: left;
	padding: 50px;
}

.show-log-panel {
	display: block;
	opacity: 0.9;
}

.login-show input[type="text"], .login-show input[type="password"] {
	width: 100%;
	display: block;
	margin: 20px 0;
	padding: 15px;
	border: 1px solid #b5b5b5;
	outline: none;
}

.login-show input[type="submit"] {
	max-width: 150px;
	width: 100%;
	background: #444444;
	color: #f9f9f9;
	border: none;
	padding: 10px;
	text-transform: uppercase;
	border-radius: 2px;
	float: right;
	cursor: pointer;
}

.login-show a {
	display: inline-block;
	padding: 10px 0;
}

.register-show input[type="text"], .register-show input[type="password"]
	{
	width: 100%;
	display: block;
	margin: 20px 0;
	padding: 15px;
	border: 1px solid #b5b5b5;
	outline: none;
}

.register-show input[type="submit"] {
	max-width: 150px;
	width: 100%;
	background: #444444;
	color: #f9f9f9;
	border: none;
	padding: 10px;
	text-transform: uppercase;
	border-radius: 2px;
	float: right;
	cursor: pointer;
}

.credit {
	position: absolute;
	bottom: 10px;
	left: 10px;
	color: #3B3B25;
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	text-transform: uppercase;
	font-size: 12px;
	font-weight: bold;
	letter-spacing: 1px;
	z-index: 99;
}

a {
	text-decoration: none;
	color: black;
}

#erors {
	color: red;
}
</style>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="keywords"
	content="unique login form,leamug login form,boostrap login form,responsive login form,free css html login form,download login form">
<meta name="author" content="leamug">
<title>Unique Login Form | Bootstrap Templates</title>
<link href="css/style.css" rel="stylesheet" id="style">
<!-- Bootstrap core Library -->
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Dancing+Script"
	rel="stylesheet">
<!-- Font Awesome-->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="login-reg-panel">
		<div class="login-info-box">
			<h2>Create New Job</h2>
			<label id="label-register" for="log-reg-show">Create</label> <input
				type="radio" name="active-log-panel" id="log-reg-show"
				checked="checked">
		</div>

		<div class="register-info-box">
			<a style="color:black;" href="/home"><label id="label-login" for="log-login-show">Home</label></a> 
			
		</div>

		<div class="white-panel">
			<div class="login-show">
				<form action="/create-job" method="POST">
					<p>${message}</p>
					<form:form action="/create-job" method="POST" modelAttribute="Job">
						<form:errors path="*" id="erors">
						</form:errors>
						<form:input type="text" path="title" placeholder="Title Job" />
						<form:input type="text" path="des" placeholder="Description" />
						<form:input type="url" path="img" placeholder="Image Description" />
						<br>
						<br>
						<form:input type="date" path="timeEnd" />
						<br>
						<br>
						<p>Id Person 1:Developer, 2:Tester , 3:Deployment ,
							4:Maintenance</p>
						<form:input type="number" path="id1" placeholder="Id Person 1" />
						<br>
						<br>
						<form:input type="number" path="id2" placeholder="Id Person 2" />
						<br>
						<br>
						<form:input type="number" path="id3" placeholder="Id Person 3" />
						<br>
						<br>
						<form:input type="number" path="id4" placeholder="Id Person 4" />
						<br>
						<br>
						<input type="submit" value="submit">
					</form:form>
				</form>
			</div>
			<div class="register-show">
				
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('.login-info-box').fadeOut();
			$('.login-show').addClass('show-log-panel');
		});

		$('.login-reg-panel input[type="radio"]').on('change', function() {
			if ($('#log-login-show').is(':checked')) {
				$('.register-info-box').fadeOut();
				$('.login-info-box').fadeIn();

				$('.white-panel').addClass('right-log');
				$('.register-show').addClass('show-log-panel');
				$('.login-show').removeClass('show-log-panel');

			} else if ($('#log-reg-show').is(':checked')) {
				$('.register-info-box').fadeIn();
				$('.login-info-box').fadeOut();

				$('.white-panel').removeClass('right-log');

				$('.login-show').addClass('show-log-panel');
				$('.register-show').removeClass('show-log-panel');
			}
		});
	</script>
</body>
</html>


