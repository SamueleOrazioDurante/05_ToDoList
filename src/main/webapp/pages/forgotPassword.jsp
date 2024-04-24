<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 

<% 
  //controllo se l`utente è loggato (quindi sessione attiva), in caso contrario lo mando nella pagine di login 
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

  <div class="mx-auto flex flex-col items-center justify-center px-6 py-8 md:h-screen lg:py-0">
    <div class="w-full rounded-lg bg-white shadow sm:max-w-md md:mt-0 xl:p-0 dark:border dark:border-gray-700 dark:bg-gray-800">
      <div class="space-y-4 p-6 sm:p-8 md:space-y-6">
        <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">Recupera la tua password</h1>
        <form class="space-y-4 md:space-y-6" action="../forgotPassword" method="POST">
          <div>
            <label for="email" class="mb-2 block text-sm font-medium text-gray-900 dark:text-white">Email</label>
            <input type="email" name="email" id="email" class="focus:ring-primary-600 focus:border-primary-600 block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-gray-900 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500" placeholder="mario.rossi@gmail.com" required />
          </div>
          <button type="submit" class="flex w-full justify-center rounded-md bg-blue-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-blue-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600">Invia e-mail</button>
        </form>
      </div>
    </div>
  </div>
</section>
</body>
</html>
