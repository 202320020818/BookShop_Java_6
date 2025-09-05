<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String gmail = request.getParameter("gmail");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
	%>
	<form action="UpdateProfileServlet" method="post">
		<table>
			<tr>
				<td>ID : </td>
				<td><input type="text" id="id" name="id" value="<%=id%>" readonly></td>
			</tr>
			<tr>
				<td>Name : </td>
				<td><input type="text" id="name" name="name" value="<%=name%>" required></td>
			</tr>
			<tr>
				<td>Email : </td>
				<td><input type="text" id="gmail" name="gmail" value="<%=gmail%>" required></td>
			</tr>
			<tr>
				<td>Password : </td>
				<td><input type="text" id="password" name="password" value="<%=password%>" required></td>
			</tr>
			<tr>
				<td>Phone : </td>
				<td><input type="text" id="phone" name="phone" value="<%=phone%>" required></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="submit"></td>
			</tr>
		</table>
	</form>

</body>
</html>