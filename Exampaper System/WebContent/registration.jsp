<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Automatic generation of Examination Papers</title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="keywords" content="">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<div class="wrap">
		<%@ include file="../jsp/header.jsp"%>
		<div class="container">

			<div class="left-side">
				<div class="heading">
					<h5>Login and Registration</h5>
				</div>
				<ul>
					<li><span>&#9733;</span><a href="registration.jsp">Registration</a></li>
					<li><span>&#9733;</span><a href="login.jsp">Login</a></li>
				</ul>
			</div>
			<div class="box2">
				<div class="form">
					<h2>Registration Form</h2>
					<form  action="UserController" method="post">
						<table>
						<tr><td></td><td><input type="hidden" name="actionRequest" value="register"></td></tr>
							<tr>
								<td><span>&#9733;</span><label for="name">Name:</label></td>
								<td><input type="text" id="name" name="name" placeholder="Name" required></td>
							</tr>
							<tr>
								<td><span>&#9733;</span><label for="email">Email:</label></td>
								<td><input type="email" id="email" name="emailId" placeholder="Email" required></td>
							</tr>
							<tr>
								<td><span>&#9733;</span><label for="userName">Username:</label></td>
								<td><input type="text" id="username" name="userName" placeholder="Username"
									required></td>
							</tr>
							<tr>
								<td><span>&#9733;</span><label for="password">Password:</label></td>
								<td><input type="password" id="password" name="password" placeholder="Password"
									required></td>
							</tr>
							<tr>
								<td><span>&#9733;</span><label for="phone">Contact
										Number:</label></td>
								<td><input type="text" id="phone" name="contactNumber" placeholder="Contact Number"
									required></td>
							</tr>
							<tr>
								<td></td>
								<td><input class="buttom" name="submit" id="submit"
									value="Register" type="submit"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="footer">
			<h4>Copyright 2016. All Rights Reserved. Designed And Developed
				By Rahul Kumar.</h4>
		</div>
	</div>
</body>
</html>
