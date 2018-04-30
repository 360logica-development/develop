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
div {
	font-size: 30px;
	width: 1000px;
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
				<td>Date : --/--/----</td>
			</tr>
			<tr>
				<td>Branch-<%=request.getAttribute("branch")%></td>
				<td></td>
				<td>Max Time-:<%=request.getAttribute("time")%>Hours
				</td>
			</tr>
			<tr>
				<td><b>Note:</b></td>
				<td />
				<td />
			</tr>
			<tr>
				<td colspan=3>
					<ol>
						<li>All question are compulsary.
						<li>Moblie are not allowed in examination hall.
					</ol>
				</td>
			</tr>
			<tr>
				<th>Question 1:-</th>
				<th>Attempt All questions</th>
				<th>(2 marks)</th>
			</tr>
			<tr>
				<td></td>
				<td>
					<ol>
						<c:forEach var="question" items="${queEasy}">
							<li>${question.question}
						</c:forEach>
					</ol>
				</td>
				<td></td>
			</tr>
			<tr>
				<th>Question 2:-</th>
				<th>Attempt any 5 questions</th>
				<th>(5 marks)</th>
			</tr>
			<tr>
				<td></td>
				<td>
					<ol>
						<c:forEach var="question" items="${queMedium}">
							<li>${question.question}
						</c:forEach>
					</ol>
				</td>
				<td></td>
			</tr>
			<tr>
				<th>Question 3:-</th>
				<th>Attempt any 2 questions</th>
				<th>(10 marks)</th>
			</tr>
			<tr>
				<td></td>
				<td>
					<ol>
						<c:forEach var="question" items="${queHard}">
							<li>${question.question}
						</c:forEach>
					</ol>
				</td>
				<td></td>
			</tr>
		</table>
	</div>
</body>
</html>