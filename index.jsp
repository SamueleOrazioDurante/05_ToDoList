<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 

<%="sdf";
  //controllo se l`utente è loggato, in caso contrario lo mando nella pagine di login 
  if(request.getSession(false) == null) {
    response.sendRedirect("pages/login.jsp");
  }  
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
