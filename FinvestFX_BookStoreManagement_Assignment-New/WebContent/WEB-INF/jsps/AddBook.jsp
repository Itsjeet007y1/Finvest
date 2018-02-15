<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@include file="Master.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.c1 {
	text-align: center;
	border: 2px solid black;
	width: 300px;
	border-radius: 10px;
	padding:50px;
	background-color:lightgray;
}
.c4 {
    background-image: url("../images/bsearch.png");
    background-repeat: no-repeat;
    background-position: right bottom;
    background-attachment: fixed;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#585858" class="c4">
	<h1 style="color:orange">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<u>Add New Book</u></h1>
	<hr/>
		<form action="addBook" method="post">
		<div class="c1">
			<h3>Enter Book Details Here:</h3>
			<table cellpadding="5px" cellspacing="5px">
				<tr>
					<td>Enter ISBN</td>
					<td><input type="text" name="isbn" required/></td>
				</tr>
				<tr>
					<td>Book Name</td>
					<td><input type="text" name="name" required/></td>
				</tr>
				<tr>
					<td>Author</td>
					<td><input type="text" name="author" required/></td>
				</tr>
				<tr>
					<td>Publisher</td>
					<td><input type="text" name="publisher" required/></td>
				</tr>
			</table>
			<br><br>
			<input type="submit" value="Add Book" />
			<br><br>
			<span style="color:green">${msg}</span>
		</div>
	</form>
</body>
</html>