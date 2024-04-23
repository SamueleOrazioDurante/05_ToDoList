<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
 <% 
  //controllo se l`utente è loggato (quindi sessione attiva), in caso contrario lo mando nella pagine di login 
  if((session.getAttribute("username")==null)){
    response.sendRedirect("../index.jsp");
  }  
%>
    
<% session.invalidate(); %>
<% response.sendRedirect("../index.jsp"); %>