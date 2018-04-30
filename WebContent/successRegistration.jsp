<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>COFEPOSA</title>
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
				<h3>
					Welcome:
					<%=request.getAttribute("name")%></h3>
				<p>You are Register Succesfully Thanks...</p>
				<p>
					<span>&#9733;</span> <a href="login.jsp"><button>Login</button></a>
				</p>
			</div>




			<div class="clear"></div>
		</div>
		<div class="footer">
			<h4>Copyright 2016. All Rights Reserved. Designed And Developed
				By Ishaq.</h4>
		</div>
	</div>
</body>
</html>
