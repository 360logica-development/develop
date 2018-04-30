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
					<h5>Login</h5>
				</div>
				<ul>

					<li><span>&#9733;</span><a href="registration.jsp">Registration</a></li>
					<li><span>&#9733;</span><a href="login.jsp">Login</a></li>


				</ul>
			</div>

			<div class="box2">
				<div class="form">
					<h2>Login Form</h2>
					<form action="UserController" method="post">
						<table>
							<tr>
								<td></td>
								<td><input type="hidden" name="actionRequest" value="login"></td>
							</tr>
							<tr>
								<td><span>&#9733;</span><label for="username">Username:</label></td>
								<td><input type="text" id="username" name="userName"
									required></td>
							</tr>
							<tr>
								<td><span>&#9733;</span><label for="password">Password:</label></td>
								<td><input type="password" id="password" name="password"
									required></td>
							</tr>

							<tr>
								<td></td>
								<td><input class="buttom" name="submit" id="submit"
									value="Login" type="submit"></td>
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
