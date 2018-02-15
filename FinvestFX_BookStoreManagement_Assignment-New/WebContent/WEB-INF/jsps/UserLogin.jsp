<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
div {
	text-align: center;
	border: 2px solid black;
	width: 400px;
	border-radius: 10px;
	padding:50px;
	align:center;
	background-color:lightblue;
}
body {
    vertical-align: center;
    margin: 0;
    padding: 100px 200px; 
    background-color:Gray;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<form action="loginCheck" method="post">
			<div>
				<h1 style="color: hsl(0, 0%, 24%)">Book Search Login Page</h1>
				<hr>
				<table cellpadding="10px" align="center" cellspacing="10px">
					<tr>
						<td>UserName</td><td><input type="text" name="un" required/></td>
					</tr>
					<tr>
						<td>Password</td><td><input type="password" name="pwd" required/></td>
				</table>
				<input type="submit" value="Login"><br>
				<br> No Account? <a href="regUser"> Click Here </a>for SignUp <br>
				<br>${msg}
			</div>
		</form>
	</center>
</body>
</html>