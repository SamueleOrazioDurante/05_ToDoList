<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 

<% 
  //controllo se l`utente non è loggato (quindi sessione non attiva), in caso contrario lo mando nella pagina di index
  if((session.getAttribute("username")!=null)){
    response.sendRedirect("../index.jsp");
  }  

//controllo se l`utente ha richiesto un reset della password con un`email valida (quindi sessione attiva), in caso contrario lo mando nella pagina di login 
  if((session.getAttribute("codiceOTP")==null)){
    response.sendRedirect("../index.jsp");
  }
%>
<%=session.getAttribute("resetPassword")%> //CONTROLLARE CHE L`ATTRIBUTO ESISTA (CON VALORE 1) PER GARANTIRE ACCESSO SOLO A CHI È AUTORIZZATO
<%=session.getAttribute("email")%> //DA CAMBIARE NEL PROSPETTO DELL`INPUT //DA FARE LA SERVLET DI RESETPASSWORD CON LA QUERY DI UPDATE DENTRO IL DAO (INVALIDARE TUTTE LE SESSIONE PER EVITARE CONFLITTI FUTURI TRA DATI)
<!DOCTYPE html>
<html class="h-full bg-white">
<head>
<title> Noirell </title>
<link rel="icon" href="img/Logo.png" type="image/png" />
<link rel="stylesheet" href="style/login.css">
</head>
<body class="h-full">
	
	<section class="bg-gray-50 dark:bg-gray-900">
  <div class="mx-auto flex flex-col items-center justify-center px-6 py-8 md:h-screen lg:py-0">
    <div class="w-full rounded-lg bg-white shadow sm:max-w-md md:mt-0 xl:p-0 dark:border dark:border-gray-700 dark:bg-gray-800">
      <div class="space-y-4 p-6 sm:p-8 md:space-y-6">
        <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">Reimposta la tua password</h1>
        <form class="space-y-4 md:space-y-6" action="../resetPassword" method="POST">
        	<div>
            <label for="email" class="mb-2 block text-sm font-medium text-gray-900 dark:text-white only-read">Indirizzo e-mail</label>
            <input type="email" name="email" id="email" class="focus:ring-primary-600 focus:border-primary-600 block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-gray-900 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500" disabled value="<%=session.getAttribute("email") %>" />
          </div>
          <div>
            <label for="password" class="mb-2 block text-sm font-medium text-gray-900 dark:text-white">Password</label>
            <input type="password" name="password" id="password" placeholder="********" class="focus:ring-primary-600 focus:border-primary-600 block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-gray-900 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500" required="" />
          	<span id = "message" style="color:red"> </span> 
          </div>
          <div>
            <label for="confermaPassword" class="mb-2 block text-sm font-medium text-gray-900 dark:text-white">Conferma password</label>
            <input type="password" name="confermaPassword" id="confermaPassword" placeholder="********" class="focus:ring-primary-600 focus:border-primary-600 block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-gray-900 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500" required="" />
          </div>
          <button type="submit" class="flex w-full justify-center rounded-md bg-blue-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-blue-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600" >Reset</button>
        </form>
      </div>
    </div>
  </div>
</section>

<script>  
	function verifyPassword() {  
	  var pw = document.getElementById("password").value; 
	  var cfpw = document.getElementById("confermaPassword").value; 
	  
	  //check empty password field  
	  if(pw == "") {  
	     document.getElementById("message").innerHTML = "**Inserisci la password";  
	     return false;  
	  }else{
		//minimum password length validation  
		  if(pw.length < 8) {  
		     document.getElementById("message").innerHTML = "**La password deve avere una lunghezza minima di 8 caratteri!";  
		     return false;  
		  }else{
				//maximum password length validation  
			  if(pw.length > 128) {  
			     document.getElementById("message").innerHTML = "**La password deve avere una lunghezza massima di 128 caratteri!";  
			     return false;  
			  }else{
				  //check if password coincidono
				  if(pw != cfpw) {  
				     document.getElementById("message").innerHTML = "**Le password devono coincidere!";  
				     return false;  
				  }
			  }
		  }
	  }
	   return true; 
	}  
</script>  

</body>
</html>
