<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

					<li><span>&#9733;</span><a href="addQuestion.jsp">Add
							Questions</a></li>
					<li><span>&#9733;</span><a href="createPaper.jsp">Create
							Question Paper</a></li>
					<li><span>&#9733;</span><a href="showQuestion.jsp">Show
							Questions</a></li>
					<li><a href="logout.jsp"><button>Logout</button></a></li>
				</ul>
			</div>

			<div class="box2">
				<table border=1>
		<tr>
			<th>Institute</th>
			<th>Question</th>
			<th>DOQ</th>
			<th>Model</th>
			<th>Subject</th>
			<th>Semester</th>
			<th>Branch</th>
		</tr>
		<c:forEach var="question" items="${Que}">
		<tr>
			<td>${question.institute}</td>
			<td>${question.question}</td>
			<td>${question.doq}</td>
			<td>${question.module}</td>
			<td>${question.subject}</td>
			<td>${question.semester}</td>
			<td>${question.branch}</td>
		</tr>
		</c:forEach>
	</table>
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