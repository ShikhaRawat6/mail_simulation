<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">================Sent===============</h1>
<hr>
<hr>
<button align="right"><a   href="Home">Home</a></button>|<button align="left" ><a   href="deletedsent">Show_Deleted_Sent</a></button>
<table style="background-color: blue"; border='1' align='center'>
<tr><th>Sent</th> <th>Message</th><th>Delete</th></tr>
<c:forEach var="dto" items="${msg}">
<tr>
<td><a href="sentfetch?did=${dto.getMid()}" style="color:black">${dto.getSent()}</a></td>
<td>${dto.getInbox()}</td>
<td ><a href="delete_sent?id=${dto.getMid()}"><button style="color:black">Delete</button></a></td>
</tr>
</c:forEach>
</table>
<hr>
<hr>
</body>
</html>
<%-- <tr><td>${dto.getMid()}</td><td>${dto.getDraft_message()}</td><td><a href="draftfetch?did=${dto.getDraft_message()}" style="color:black">${dto.getDraft()}</a></td><td ><a href="delete_draft?id=${dto.getMid()}"><button style="color:black">Delete</button></a></td></tr>
</c:forEach> --%>
<%-- <tr><td>${dto.getMid()}</td><td>${dto.getInbox()}</td><td><a href="inboxfeth" style="color:black">${dto.getMailFrom()}</a></td><td ><a href="delete?id=${dto.getMid()}"><button style="color:black">Delete</button></a></td></tr>
</c:forEach> --%>

