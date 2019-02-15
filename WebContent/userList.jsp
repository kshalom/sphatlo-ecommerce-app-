<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Lists</title>
</head>
<body>
<h3>Welcome Users</h3>
	<div class="container">
		<table>
			<tr>
				<th>Name</th>
				<th>Surname</th>
				<th>Gender</th>
				<th>Mobile</th>
				<th>Email</th>
			</tr>
			
			<c:forEach var="user" items="${USER_LIST}">
				<c:url var="tempLink" value="UserControllerServlet">
					<c:param name="command" value="USER"></c:param>
					<c:param name="userId" value="${user.userId}"></c:param>
				</c:url>
				<c:url var="deleteLink" value="UserControllerServlet">
					<c:param name="command" value="DELETE"></c:param>
					<c:param name="userId" value="${user.userId}"></c:param>
				</c:url>
			<tr>
				<td>${user.name}</td>
				<td>${user.surname}</td>
				<td>${user.gender}</td>
				<td>${user.mobile}</td>
				<td>${user.email}</td>
				<td><a href="${tempLink}">Update</a></td>
				<td><a href="${deleteLink}">Delete</a></td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>