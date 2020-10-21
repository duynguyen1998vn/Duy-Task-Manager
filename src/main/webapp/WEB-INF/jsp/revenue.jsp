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
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.18.0/dist/themes/bootstrap-table/bootstrap-table.min.css">




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
		url(https://thuphaplaotroc.files.wordpress.com/2014/03/light-wood-background.jpg);
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
	color: #2c7715;
}

#home{
	color:black;
	outline: none;
	padding: 10px;
	font-size: 25px;
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
	<a href="/home" id="home">HOME</a>
	<div class="login-reg-panel">
		<div class="login-info-box">
			<h2>Create Revenue</h2>
			<label id="label-register" for="log-reg-show">Click</label> <input
				type="radio" name="active-log-panel" id="log-reg-show"
				checked="checked">
		</div>

		<div class="register-info-box">
			<h2>Show Table Revenue</h2>
			<label id="label-login" for="log-login-show">Click</label> <input
				type="radio" name="active-log-panel" id="log-login-show">
		</div>

		<div class="white-panel">
			<div class="login-show">
				<form action="/revenue" method="POST">
					<p>Day Start Revenue</p>
					<input name="day_start" type="date"><br>
					<p>Day End Revenue</p>
					<input name="day_end" type="date"><br> <input
						type="submit" value="Submit">
				</form>
			</div>
			<div class="register-show">
				<table data-toggle="table">
					<thead>
						<tr>
							<th>ID</th>
							<th>Day Start</th>
							<th>Day End</th>
							<th>Point</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${MyRevenue.idUser}</td>
							<td>${MyRevenue.dayStart}</td>
							<td>${MyRevenue.dayEnd}</td>
							<td>${MyRevenue.point}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"
		integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg=="
		crossorigin="anonymous"></script>
	<script
		src="https://unpkg.com/bootstrap-table@1.18.0/dist/bootstrap-table.min.js"></script>
	<script
		src="https://unpkg.com/bootstrap-table@1.18.0/dist/themes/bootstrap-table/bootstrap-table.min.js"></script>
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


