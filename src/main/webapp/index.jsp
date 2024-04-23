<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<%@ page import = "java.io.*,java.util.*" %>

<% 
  //controllo se l`utente è loggato (quindi sessione attiva), in caso contrario lo mando nella pagine di login 
  if((session.getAttribute("username")==null)){
    response.sendRedirect("pages/login.jsp");
  }  
%>

<%="Current Date="+ new java.util.Date()
%>
<%="Current Date="+ session.getAttribute("username")
%>

<!DOCTYPE html>
<html>
  <head>
    
  </head>
  <body>
    
    <a href="pages/login.jsp"> Login </a>
    <a href="pages/signup.jsp"> Signup </a>
    <a href="pages/logout.jsp"> Logout </a>
  </body>
</html>