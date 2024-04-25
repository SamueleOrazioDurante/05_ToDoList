<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<%@ page import="model.SMTP" %>

<% 
	//controllo se l`utente non è loggato (quindi sessione non attiva), in caso contrario lo mando nella pagina di index
  if((session.getAttribute("username")!=null)){
    response.sendRedirect("../index.jsp");
  }  
%>

<!DOCTYPE html>
<html class="h-full bg-white">
<head>
<title> Noirell </title>
<link rel="icon" href="img/Logo.png" type="image/png" />
<link rel="stylesheet" href="style/login.css">
<link rel="stylesheet" href="style/alert.css">
</head>

<body class="h-full">
	<section class="bg-gray-50 dark:bg-gray-900">
	
	<%
		//FORWARD DA REGISTRAZIONE CON ALERT DI OK PER LA REGISTRAZIONE EFFETTUATA
		
		if(request.getParameter("reg") != null){
	
	%>
	
	<div class="flex items-center p-4 mb-4 text-sm text-green-800 border border-green-300 rounded-lg bg-green-50 dark:bg-gray-800 dark:text-green-400 dark:border-green-800" role="alert">
	  <svg class="flex-shrink-0 inline w-4 h-4 me-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
	    <path d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5ZM9.5 4a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM12 15H8a1 1 0 0 1 0-2h1v-3H8a1 1 0 0 1 0-2h2a1 1 0 0 1 1 1v4h1a1 1 0 0 1 0 2Z"/>
	  </svg>
	  <span class="sr-only">Info</span>
	  <div>
	    <span class="font-medium">Registrazione effettuata con successo!</span> Procedi con il login.
	  </div>
	</div>
	<% 
		SMTP mail = new SMTP();
		mail.sendEmail(request.getParameter("reg"), "Benvenuto nella Noirell`s family!", "Grazie per aver effettuato la registrazione presso il nostro servizio."); 
	%>
	<% } %>
	
	<%
		//FORWARD DA RESETPASSWORD CON ALERT DI OK PER IL RESET EFFETTUATO
		
		if(request.getParameter("res") != null){
	
	%>
	
	<div class="flex items-center p-4 mb-4 text-sm text-green-800 border border-green-300 rounded-lg bg-green-50 dark:bg-gray-800 dark:text-green-400 dark:border-green-800" role="alert">
	  <svg class="flex-shrink-0 inline w-4 h-4 me-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
	    <path d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5ZM9.5 4a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM12 15H8a1 1 0 0 1 0-2h1v-3H8a1 1 0 0 1 0-2h2a1 1 0 0 1 1 1v4h1a1 1 0 0 1 0 2Z"/>
	  </svg>
	  <span class="sr-only">Info</span>
	  <div>
	    <span class="font-medium">Reimpostazione password effettuata con successo!</span> Procedi con il login.
	  </div>
	</div>
	<% } %>

  <div class="mx-auto flex flex-col items-center justify-center px-6 py-8 md:h-screen lg:py-0">
    <a href="#" class="mb-6 flex items-center text-2xl font-semibold text-gray-900 dark:text-white">
      <img class="mr-2" src="img/Logo.png" alt="logo" style="width: 14rem; height: 14rem;"/>
    </a>
    <div class="w-full rounded-lg bg-white shadow sm:max-w-md md:mt-0 xl:p-0 dark:border dark:border-gray-700 dark:bg-gray-800">
      <div class="space-y-4 p-6 sm:p-8 md:space-y-6">
        <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">Accedi al tuo account</h1>
        <form class="space-y-4 md:space-y-6" action="../login" method="POST">
          <div>
            <label for="username" class="mb-2 block text-sm font-medium text-gray-900 dark:text-white">Username</label>
            <input type="text" name="username" id="username" class="focus:ring-primary-600 focus:border-primary-600 block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-gray-900 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500" placeholder="mario.rossi@gmail.com" required="" />
          </div>
          <div>
            <label for="password" class="mb-2 block text-sm font-medium text-gray-900 dark:text-white">Password</label>
            <input type="password" name="password" id="password" placeholder="********" class="focus:ring-primary-600 focus:border-primary-600 block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-gray-900 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500" required="" />
          </div>
          <div class="flex items-center justify-between">
            <div class="flex items-start">
              <!-- <div class="flex h-5 items-center">
                <input id="ricorda" aria-describedby="ricorda" type="checkbox" class="focus:ring-3 focus:ring-primary-300 dark:focus:ring-primary-600 h-4 w-4 rounded border border-gray-300 bg-gray-50 dark:border-gray-600 dark:bg-gray-700 dark:ring-offset-gray-800" />
              </div> -->
              <div class="ml-3 text-sm">
                <label for="remember" class="text-gray-500 dark:text-gray-300"></label>
              </div>
            </div>
            <a href="forgotPassword.jsp" class="text-primary-600 dark:text-white text-sm font-medium hover:underline">Password dimenticata?</a>
          </div>
          <button type="submit" class="flex w-full justify-center rounded-md bg-blue-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-blue-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600">Log in</button>
          <p class="text-sm font-light text-gray-500 dark:text-gray-400">Non hai ancora un account? <a href="signup.jsp" class="text-primary-600 dark:text-white font-medium hover:underline">Iscriviti</a></p>
        </form>
      </div>
    </div>
  </div>
</section>
</body>
</html>
