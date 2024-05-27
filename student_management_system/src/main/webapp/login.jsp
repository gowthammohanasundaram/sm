<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String message=(String)request.getAttribute("message"); %>
<%if(message!=null){ %>
<h1><%=message%></h1>
<%} %>
<form action="login" method="post">
email:<input type="email" name="email" placeholder="enter email">
password:<input type="password" name="password" placeholder="enter password">

<input type="submit">
</form>
</body>
</html>