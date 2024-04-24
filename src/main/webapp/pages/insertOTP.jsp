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

<!DOCTYPE html>
<html class="h-full bg-white">
<head>
<title> Noirell </title>
<link rel="icon" href="img/Logo.png" type="image/png" />
<link rel="stylesheet" href="style/login.css">
<link rel="stylesheet" href="style/alert.css">
</head>
<body class="h-full">

	<script type="text/javascript">
	function submit(){
        let OTP = <%=session.getAttribute("codiceOTP")%>;
        let codice = document.getElementById("codice").value;
        
        if(OTP == codice){
        	<% session.setAttribute("resetPassword","1"); %>
        	window.location.href = "resetPassword.jsp";
        }else{
        	alert("Codice errato! Riprova.");
        }
}			
	</script>

	<section class="bg-gray-50 dark:bg-gray-900">
	
	<div class="flex items-center p-4 mb-4 text-sm text-green-800 border border-green-300 rounded-lg bg-green-50 dark:bg-gray-800 dark:text-green-400 dark:border-green-800" role="alert">
	  <svg class="flex-shrink-0 inline w-4 h-4 me-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
	    <path d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5ZM9.5 4a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM12 15H8a1 1 0 0 1 0-2h1v-3H8a1 1 0 0 1 0-2h2a1 1 0 0 1 1 1v4h1a1 1 0 0 1 0 2Z"/>
	  </svg>
	  <span class="sr-only">Info</span>
	  <div>
	    <span class="font-medium">Controlla il tuo indirizzo di posta elettronica!</span> E inserisci il codice.
	  </div>
	</div>
	
  <div class="mx-auto flex flex-col items-center justify-center px-6 py-8 md:h-screen lg:py-0">
    <div class="w-full rounded-lg bg-white shadow sm:max-w-md md:mt-0 xl:p-0 dark:border dark:border-gray-700 dark:bg-gray-800">
      <div class="space-y-4 p-6 sm:p-8 md:space-y-6">
        <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">Verifica la tua identità</h1>
        <form class="space-y-4 md:space-y-6" action="javascript: submit()">
          <div>
            <label for="codice" class="mb-2 block text-sm font-medium text-gray-900 dark:text-white">Codice OTP</label>
            <input type="text" name="codice" id="codice" class="focus:ring-primary-600 focus:border-primary-600 block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-gray-900 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500" minlength="6" maxlength="6" placeholder="012345" required />
          </div>
          <button type="submit" class="flex w-full justify-center rounded-md bg-blue-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-blue-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600">Conferma</button>
        </form>
      </div>
    </div>
  </div>
</section>
</body>
</html>
