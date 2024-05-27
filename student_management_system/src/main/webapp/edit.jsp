<%@page import="student_management_system.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Student student=(Student)request.getAttribute("student"); %>
<form action="edit" method="post">
id:<input type="number" name="id" value="<%=student.getId()%>" readonly="true">
name:<input type="text" name="name" placeholder="enter name">
email:<input type="email" name="email" placeholder="enter email">
password:<input type="password" name="password" placeholder="enter password">

<input type="submit">

</form>
</body>
</html>