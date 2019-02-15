<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update User</title>
</head>
<body>
	<div class="container">
		<form action="UserControllerServlet" method="GET">
		<input type="hidden" name="command" value="UPDATE" />
		<input type="hidden" name="userId" value="${USER.userId }" />
			<table>
				<tbody>
					<tr>
						<td><label>Name</label></td>
						<td><input type="text" name="name" value="${USER.name}"/></td>
					</tr>
					<tr>
						<td><label>Surname</label></td>
						<td><input type="text" name="surname" value="${USER.surname}"/></td>
					</tr>
					<tr>
						<td><label>Gender</label></td>
						<td><select name="gender">
								<option value="Male">${USER.gender}</option>
								<option value="Female">${USER.gender}</option>
							</select>					
						</td>
					</tr>
					<tr>
						<td><label>Mobile</label></td>
						<td><input type="text" name="mobile" value="${USER.mobile}"/></td>
					</tr>
					<tr>
						<td><label>Email</label></td>
						<td><input type="text" name="email" value="${USER.email}" /></td>
					</tr>
					<tr>
						<td><label>Password</label></td>
						<td><input type="password" name="password" value="${USER.password}"/></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Update" /></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>