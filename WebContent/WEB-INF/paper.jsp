<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Automatic generation of Examination Papers</title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="keywords" content="">
<style type="text/css">
div{
	width:600px;
}
</style>
</head>
<body>

	<div>
	<table>
		<tr>
			<td colspan=3 align="center"><%=request.getAttribute("institute")%></td>
		</tr>
		<tr>
			<td colspan=3 align="center"><%=request.getAttribute("subject")%></td>
		</tr>
		<tr>
			<td>Paper Code-<%=request.getAttribute("paperCode")%></td>
			<td></td>
			<td>Date : --/--/----<td>
		</tr>
		<tr>
			<td>Branch-<%=request.getAttribute("branch")%></td>
			<td></td>
			<td>Max Time-:<%=request.getAttribute("time")%>Hours<td>
		</tr>
	</table>
		<hr>
		<b>Note:</b><br>
		<ol>
			<li>All question are compulsary.
			<li>Moblie are not allowed in examination hall.
		</ol>
		<hr>
	<table>
		<tr>
			<th>Ques 1:- </th>
			<th>All question are compulsary:</th>
			<th align="right">(2 marks)<th>
		</tr>
		<tr>
			<td/>
			<td>
				<ol>
				<c:forEach var="question" items="${que}">
		 		<li>${question.question}
		 		</c:forEach>
				</ol>
			</td>
			<td/>
		</tr>
		<tr>
			<th>Ques 2:- </th>
			<th>Attempt any 5 question:</th>
			<th align="right">(5 marks)<th>
		</tr>
		<tr>
			<td/>
			<td>
				<ol>
				<li>What is difference between C++ and java?
				<li>What is difference between encaptulation and abstraction?
				</ol>
			</td>
			<td/>
		</tr>
		<tr>
			<th>Ques. 3:- </th>
			<th>Attempt any 2 question:</th>
			<th align="right">(10 marks)<th>
		</tr>
		<tr>
			<td/>
			<td>
				<ol>
				<li>Write a program to find prime number?
				<li>Write a life cycle of Servlet?
			</ol>
			</td>
			<td/>
		</tr>
	</table>
	</div>
	<a href="PdfFile.jsp"><input type="button" value="Print"></a>
</body>
</html>