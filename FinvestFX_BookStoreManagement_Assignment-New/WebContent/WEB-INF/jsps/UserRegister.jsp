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
	padding: 40px;
	background-color: lightgray;
}

body {
	vertical-align: center;
	margin: 0;
	padding: 100px 200px;
	background-color: lightblue;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration Page</title>
</head>
<body>
	<center>
		<div>
			<h1 style="color: hsl(0, 0%, 24%)">User Registration Page</h1>
			<hr>
			<form action="saveUser" method="post">
				<table cellpadding="5px" cellspacing="5px" align="center">
					<tr>
						<td>User Name</td>
						<td><input type="text" name="userName" required/></td>
					</tr>
					<tr>
						<td>User Email</td>
						<td><input type="text" name="userEmail" required/></td>
					</tr>
					<tr>
						<td>User Contact</td>
						<td><input type="text" name="userContact" required/></td>
					</tr>
					<tr>
						<td>User Password</td>
						<td><input type="text" name="userPwd" required/></td>
					</tr>
					<tr>
						<td>User Address</td>
						<td><input type="text" name="userAddrs" required/></td>
					</tr>
				</table>
				<input type="submit" value="Register" />
			</form>
			${msg}<br> Already Have an account? <a href="login">LogIn</a>
		</div>
	</center>
</body>
</html>