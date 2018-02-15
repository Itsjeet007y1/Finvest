<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="Master.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.c2 {
	border: 2px solid black;
	padding: 5px;
	width: 170px;
	height: 160px;
	border-radius: 10%;
	text-align: center;
	background-color: lightgray;
}

.c1 {
	text-align: center;
	width: 170px;
	float: left;
	margin: 30px;
}
.c3 {
	text-align: center;
	border: 2px solid black;
	width: 100px;
	border-radius: 10px;
	padding: 10px;
	height:10px;
	background-color: lightgreen;
	text-decoration: none;
}
</style>
</head>
<body bgcolor="#585858">
	<h1 style="color: orange">
		&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<u>All Available Books in
			Store</u>
	</h1>
	<hr />
	<c:forEach var="books" items="${books}">
		<div class="c1">
			<table class="c2">
				<tr>
					<th colspan="2"><span style="color: red"><u>${books.name}</u></span></th>
				</tr>
				<tr>
					<td>ISBN</td>
					<td>${books.isbn}</td>
				</tr>
				<tr>
					<td>Hello</td>
					<td>${books.name}</td>
				</tr>
				<tr>
					<td>Publisher</td>
					<td>${books.publisher}</td>
				</tr>
			</table>
			<br>
			<a href="deleteBook?id=${books.id}" class="c3">Remove</a>
		</div>
	</c:forEach>
</body>
</html>