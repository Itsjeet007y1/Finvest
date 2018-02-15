<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@include file="Master.jsp" %>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
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
	<h1 style="color:orange">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<u>Book Search Page</u></h1>
	<hr/>
	<form action="searchBook" method="post">
		<br>
			<span style="color:white">Enter Book Name:</span> <input type="text" name="name" required/>
		<input type="submit" value="Search"/>
	</form>
	<br><br>
	<h3 style="color:orange"><u>Book Details</u></h3>
	<h4>ISBN:	<span style="color:red">${isbn.get(0)}</span></h4>
	<h4>BOOK Name:		<span style="color:red">${name.get(0)}</span></h4>
	<h4>AUTHOR Name:	 <span style="color:red">${author.get(0)}</span></h4>
	<h4>Publisher:	 <span style="color:red">${publisher.get(0)}</span></h4>
	${msg}
</body>
</html>