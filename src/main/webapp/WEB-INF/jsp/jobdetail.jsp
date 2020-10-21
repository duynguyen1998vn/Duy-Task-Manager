<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${MyJob}" var="job">
		<Table>

			<tr>
				<td>Id Job: ${job.id}</td>
			</tr>

			<tr>
				<td>Id Leader Create Job: ${job.idLeader}</td>
			</tr>
			<tr>
				<td>Title: ${job.title}</td>
			</tr>
			<tr>
				<td><img
					alt="https://i.pinimg.com/236x/c7/f6/e4/c7f6e4692bca4de126a739d873b18847--himuoto-umaru-chan-umaru-doma.jpg"
					src="${job.img}"></td>
			</tr>
			<tr>
				<td>Description: ${job.des}</td>
			</tr>

			<tr>
				<td>Time Create: ${job.timeCreate}</td>
			</tr>

			<tr>
				<td>Time Complete: ${job.timeEnd}</td>
			<tr>
			<tr>
				<td>Status: ${job.status}</td>
			</tr>
		</Table>
		<br>
		<form action="/submitjob">
			<input type="hidden" name="idJob" value="${job.id}">
			<input type="submit" value="Submit This Job">
		</form>
	</c:forEach>
</body>
</html>