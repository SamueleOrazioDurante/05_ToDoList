<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
</head>
<body>
<h1>Errore<h1>

<% if(exception.getMessage()=="login"){ %>
	<a href="http://localhost:8080/ToDoListMVC/index.html">Torna al Login</a>
<% } %>

<% if(exception.getMessage()==""){ %>
	<a href="http://localhost:8080/ToDoListMVC/index.html">Torna alla home</a>
<% } %>

<%=exception.getMessage()%>

</body>
</html>