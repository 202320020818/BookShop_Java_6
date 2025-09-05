<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- display ekata adala data pass wenne eken -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/profile.css">
</head>
<body>
<div class="profile-card">
	<h1> Profile </h1>
	
	<p>ID: ${user.id}</p>
    <p>Name: ${user.name}</p>
    <p>Email: ${user.gmail}</p>
    <p>Password: ${user.password}</p>
    <p>Phone: ${user.phone}</p>
    
    <a href= "updateprofile.jsp?id=${user.id}&name=${user.name}&gmail=${user.gmail}&password=${user.password}&phone=${user.phone}">
						<button>Update</button>
					</a>
					
	<form action="AccountDeleteServlet" method = "post"> 
					<input type="hidden" name="id" value="${user.id}"/>
						<button>Delete</button>
					</form>
</div>
	

</body>
</html>