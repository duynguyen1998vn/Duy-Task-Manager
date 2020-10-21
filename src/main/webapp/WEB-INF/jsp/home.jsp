<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.18.0/dist/bootstrap-table.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
@import
	url('https://fonts.googleapis.com/css?family=Quicksand:400,500,700');

html, body {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Quicksand", sans-serif;
	font-size: 62.5%;
	font-size: 10px;
}
/*-- Inspiration taken from abdo steif -->
/* --> https://codepen.io/abdosteif/pen/bRoyMb?editors=1100*/

/* Navbar section */
.nav {
	width: 100%;
	height: 65px;
	position: fixed;
	line-height: 65px;
	text-align: center;
}

.nav div.logo {
	float: left;
	width: auto;
	height: auto;
	padding-left: 3rem;
}

.nav div.logo a {
	text-decoration: none;
	color: #fff;
	font-size: 2.5rem;
}

.nav div.logo a:hover {
	color: #00E676;
}

.nav div.main_list {
	height: 65px;
	float: right;
}

.nav div.main_list ul {
	width: 100%;
	height: 65px;
	display: flex;
	list-style: none;
	margin: 0;
	padding: 0;
}

.nav div.main_list ul li {
	width: auto;
	height: 65px;
	padding: 0;
	padding-right: 3rem;
}

.nav div.main_list ul li a {
	text-decoration: none;
	color: #fff;
	line-height: 65px;
	font-size: 2.4rem;
}

.nav div.main_list ul li a:hover {
	color: #00E676;
}

/* Home section */
.home {
	width: 100%;
	height: 100vh;
	background-image:
		url(https://images.unsplash.com/photo-1498550744921-75f79806b8a7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b0f6908fa5e81286213c7211276e6b3d&auto=format&fit=crop&w=1500&q=80);
	background-position: center top;
	background-size: cover;
}

.navTrigger {
	display: none;
}

.nav {
	padding-top: 20px;
	padding-bottom: 20px;
	-webkit-transition: all 0.4s ease;
	transition: all 0.4s ease;
}

/* Media qurey section */
@media screen and (min-width: 768px) and (max-width: 1024px) {
	.container {
		margin: 0;
	}
}

@media screen and (max-width:768px) {
	.navTrigger {
		display: block;
	}
	.nav div.logo {
		margin-left: 15px;
	}
	.nav div.main_list {
		width: 100%;
		height: 0;
		overflow: hidden;
	}
	.nav div.show_list {
		height: auto;
		display: none;
	}
	.nav div.main_list ul {
		flex-direction: column;
		width: 100%;
		height: 100vh;
		right: 0;
		left: 0;
		bottom: 0;
		background-color: #111;
		/*same background color of navbar*/
		background-position: center top;
	}
	.nav div.main_list ul li {
		width: 100%;
		text-align: right;
	}
	.nav div.main_list ul li a {
		text-align: center;
		width: 100%;
		font-size: 3rem;
		padding: 20px;
	}
	.nav div.media_button {
		display: block;
	}
}

/* Animation */
/* Inspiration taken from Dicson https://codemyui.com/simple-hamburger-menu-x-mark-animation/ */
.navTrigger {
	cursor: pointer;
	width: 30px;
	height: 25px;
	margin: auto;
	position: absolute;
	right: 30px;
	top: 0;
	bottom: 0;
}

.navTrigger i {
	background-color: #fff;
	border-radius: 2px;
	content: '';
	display: block;
	width: 100%;
	height: 4px;
}

.navTrigger i:nth-child(1) {
	-webkit-animation: outT 0.8s backwards;
	animation: outT 0.8s backwards;
	-webkit-animation-direction: reverse;
	animation-direction: reverse;
}

.navTrigger i:nth-child(2) {
	margin: 5px 0;
	-webkit-animation: outM 0.8s backwards;
	animation: outM 0.8s backwards;
	-webkit-animation-direction: reverse;
	animation-direction: reverse;
}

.navTrigger i:nth-child(3) {
	-webkit-animation: outBtm 0.8s backwards;
	animation: outBtm 0.8s backwards;
	-webkit-animation-direction: reverse;
	animation-direction: reverse;
}

.navTrigger.active i:nth-child(1) {
	-webkit-animation: inT 0.8s forwards;
	animation: inT 0.8s forwards;
}

.navTrigger.active i:nth-child(2) {
	-webkit-animation: inM 0.8s forwards;
	animation: inM 0.8s forwards;
}

.navTrigger.active i:nth-child(3) {
	-webkit-animation: inBtm 0.8s forwards;
	animation: inBtm 0.8s forwards;
}

@
-webkit-keyframes inM { 50% {
	-webkit-transform: rotate(0deg);
}

100%
{
-webkit-transform








:




 




rotate








(45
deg






);
}
}
@
keyframes inM { 50% {
	transform: rotate(0deg);
}

100%
{
transform








:




 




rotate








(45
deg






);
}
}
@
-webkit-keyframes outM { 50% {
	-webkit-transform: rotate(0deg);
}

100%
{
-webkit-transform








:




 




rotate








(45
deg






);
}
}
@
keyframes outM { 50% {
	transform: rotate(0deg);
}

100%
{
transform








:




 




rotate








(45
deg






);
}
}
@
-webkit-keyframes inT { 0% {
	-webkit-transform: translateY(0px) rotate(0deg);
}

50%
{
-webkit-transform








:




 




translateY








(9
px






)
rotate








(0
deg






);
}
100%
{
-webkit-transform








:




 




translateY








(9
px






)
rotate








(135
deg






);
}
}
@
keyframes inT { 0% {
	transform: translateY(0px) rotate(0deg);
}

50%
{
transform








:




 




translateY








(9
px






)
rotate








(0
deg






);
}
100%
{
transform








:




 




translateY








(9
px






)
rotate








(135
deg






);
}
}
@
-webkit-keyframes outT { 0% {
	-webkit-transform: translateY(0px) rotate(0deg);
}

50%
{
-webkit-transform








:




 




translateY








(9
px






)
rotate








(0
deg






);
}
100%
{
-webkit-transform








:




 




translateY








(9
px






)
rotate








(135
deg






);
}
}
@
keyframes outT { 0% {
	transform: translateY(0px) rotate(0deg);
}

50%
{
transform








:




 




translateY








(9
px






)
rotate








(0
deg






);
}
100%
{
transform








:




 




translateY








(9
px






)
rotate








(135
deg






);
}
}
@
-webkit-keyframes inBtm { 0% {
	-webkit-transform: translateY(0px) rotate(0deg);
}

50%
{
-webkit-transform








:




 




translateY








(-9
px






)
rotate








(0
deg






);
}
100%
{
-webkit-transform








:




 




translateY








(-9
px






)
rotate








(135
deg






);
}
}
@
keyframes inBtm { 0% {
	transform: translateY(0px) rotate(0deg);
}

50%
{
transform








:




 




translateY








(-9
px






)
rotate








(0
deg






);
}
100%
{
transform








:




 




translateY








(-9
px






)
rotate








(135
deg






);
}
}
@
-webkit-keyframes outBtm { 0% {
	-webkit-transform: translateY(0px) rotate(0deg);
}

50%
{
-webkit-transform








:




 




translateY








(-9
px






)
rotate








(0
deg






);
}
100%
{
-webkit-transform








:




 




translateY








(-9
px






)
rotate








(135
deg






);
}
}
@
keyframes outBtm { 0% {
	transform: translateY(0px) rotate(0deg);
}

50%
{
transform








:




 




translateY








(-9
px






)
rotate








(0
deg






);
}
100%
{
transform








:




 




translateY








(-9
px






)
rotate








(135
deg






);
}
}
.affix {
	padding: 0;
	background-color: #111;
}

.myH2 {
	text-align: center;
	font-size: 4rem;
}

.myP {
	text-align: justify;
	padding-left: 15%;
	padding-right: 15%;
	font-size: 20px;
}

@media all and (max-width:700px) {
	.myP {
		padding: 2%;
	}
}
</style>
</head>
<body>
	<nav class="nav">
	<div class="container">
		<div class="logo">
			<a href="https://www.facebook.com/truongduy.nguyen.52090/">Contact
				Facebook</a>
		</div>
		<div id="mainListDiv" class="main_list">
			<ul class="navlinks">
				<c:forEach items="${MENU}" var="menu">
					<li><a href="${menu.url}">${menu.namme}</a></li>
				</c:forEach>
			</ul>
		</div>



		





		<span class="navTrigger"> <i></i> <i></i> <i></i>
		</span>
	</div>
	</nav>

	<section class="home"> </section>




	<!-- Jquery needed -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="js/scripts.js"></script>

	<!-- Function used to shrink nav bar removing paddings and adding black background -->
	<script>
		$(window).scroll(function() {
			if ($(document).scrollTop() > 50) {
				$('.nav').addClass('affix');
				console.log("OK");
			} else {
				$('.nav').removeClass('affix');
			}
		});
	</script>
</body>
</html>