<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update data</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String catagory = request.getParameter("catagory");
		String qunetity = request.getParameter("qunetity");
		String description = request.getParameter("description");
	%>
	<form action="UpdateServlet" method="post">
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
				<td>price : </td>
				<td><input type="text" id="price" name="price" value="<%=price%>" required></td>
			</tr>
			<tr>
				<td>catagory : </td>
				<td><input type="text" id="catagory" name="catagory" value="<%=catagory%>" required></td>
			</tr>
			<tr>
				<td>qunetity : </td>
				<td><input type="text" id="qunetity" name="qunetity" value="<%=qunetity%>" required></td>
			</tr>
			<tr>
				<td>description : </td>
				<td><input type="text" id="description" name="description" value="<%=description%>" required></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="submit"></td>
			</tr>
		</table>
	</form>

</body>
</html>