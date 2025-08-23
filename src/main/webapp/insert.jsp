<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Entry Form</title>
</head>
<body>
	<h2>Enter Book Details</h2>
	<form action="InsertServlet" method="post">
		<table>
			<tr>
				<td>Name : </td>
				<td><input type="text" id="name" name="name" required></td>
			</tr>
			<tr>
				<td>price : </td>
				<td><input type="text" id="price" name="price" required></td>
			</tr>
			<tr>
				<td>catagory : </td>
				<td><input type="text" id="catagory" name="catagory" required></td>
			</tr>
			<tr>
				<td>qunetity : </td>
				<td><input type="text" id="qunetity" name="qunetity" required></td>
			</tr>
			<tr>
				<td>description : </td>
				<td><input type="text" id="description" name="description" required></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>