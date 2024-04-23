<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<%@ page import = "java.io.*,java.util.*" %>

<% 
  //controllo se l`utente è loggato (quindi sessione attiva), in caso contrario lo mando nella pagine di login 
  if((request.getSession(false) == null)){
    response.sendRedirect("pages/login.jsp");
  }  
%>

<%="Current Date="+ new java.util.Date()
%>

<!DOCTYPE html>
<html>
  <head>
    
  </head>
  <body>
    
    <a href="pages/login.jsp"> Test </a>
    <a href="pages/signup.jsp"> Test2 </a>
  </body>
</html>