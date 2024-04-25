<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
 <% 
  //controllo se l`utente è loggato (quindi sessione attiva), in quel caso invalido la sessione
  if((session.getAttribute("username")!=null)){
	  session.invalidate();
  }  
%>
<% response.sendRedirect("../index.jsp"); %>