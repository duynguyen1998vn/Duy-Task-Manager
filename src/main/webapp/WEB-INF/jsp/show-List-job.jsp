<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body{
	background-image: url("https://png.pngtree.com/png-clipart/20190516/original/pngtree-golden-dense-halo-background-design-png-image_3773120.jpg");
}
#home{
	color:black;
	outline: none;
	padding: 10px;
	font-size: 25px;
}
</style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="/home" id="home">HOME</a>
	<c:forEach items="${MyJob}" var="job"> 
		<div class="card" style="width: 18rem;">
			<img class="card-img-top" src="${job.img}" alt="https://codelearnstorage.s3.amazonaws.com/Upload/Blog/nao-thi-di-san-bug-phan-1-63714730089.9375.jpg">
			<div class="card-body">
				<h5 class="card-title">${job.title}</h5>
				<p class="card-text" class="btn btn-primary">${job.des}</p>
				<form action="/submitjob" method="POST">
					<input value="${job.id}" type="hidden" name="idJob">
					<input type="submit" class="btn btn-primary" value="Submit Job">
				</form>
			</div>
		</div>
		
	</c:forEach>

</body>
</html>