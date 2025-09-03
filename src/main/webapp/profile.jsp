<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- display ekata adala data pass wenne eken -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> Profile </h1>
	
	<p>ID: ${user.id}</p>
    <p>Name: ${user.name}</p>
    <p>Email: ${user.gmail}</p>
    <p>Password: ${user.password}</p>
    <p>Phone: ${user.phone}</p>

</body>
</html>