<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*"%>
<%@ page import = "model.UsersLists,model.Lista"%>

<% 
  //controllo se l`utente è loggato (quindi sessione attiva), in caso contrario lo mando nella pagina di login 
  if((session.getAttribute("username")==null)){
    response.sendRedirect("pages/login.jsp");
  }  
%>

<!DOCTYPE html>
<html class="h-full bg-white dark:bg-gray-900">
<head>
<meta charset="UTF-8">
<title> Noirell </title>
<link rel="icon" href="pages/img/Logo.png" type="image/png" />
<link rel="stylesheet" href="pages/style/index.css">
</head>
<body class="h-full">

<div class="antialiased bg-gray-50 dark:bg-gray-900">
    <nav class="bg-white border-b border-gray-200 px-4 py-1.5 dark:bg-gray-800 dark:border-gray-700 fixed left-0 right-0 top-0 z-50">
      <div class="flex flex-wrap justify-between items-center">
        <div class="flex justify-start items-center">
              <!-- INIZIO NAV BAR CON LOGO E NOME APPLICAAZIONE -->
          <a href="#" class="flex items-center justify-between mr-4">
            <img
              src="pages/img/Logo.png"
              class="mr-3 h-8"
              style="width: 4rem; height: 4rem;"
            />
          </a>
        </div>
        
          	<a href="pages/account.jsp" class="flex mr-4">
              <!-- PROFILO UTENTE ( ICONA IN ALTO A DX ) -->
            <img
              class="w-8 h-8 rounded-full"
              src="pages/img/noUserImage.png"
              alt="user photo"
            />
            </a>
            <!-- INIZIO DROPDOWN  -->

        </div>
      </div>
    </nav>

    <!-- INIZIO SIDEBAR -->
	
	
    <aside
      class="fixed top-0 left-0 z-40 w-64 h-screen pt-14 transition-transform -translate-x-full bg-white border-r border-gray-200 md:translate-x-0 dark:bg-gray-800 dark:border-gray-700"
      aria-label="Sidenav"
      id="drawer-navigation"
    ><br>
      <div class="overflow-y-auto py-5 px-3 h-full bg-white dark:bg-gray-800">
        <ul class="space-y-2">
        <!-- INIZIO SIDEBAR LISTA -->
          <li>     
            <a
              href="#"
              class="flex items-center p-2 text-base font-medium text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
            >
             <!-- IMMAGINE LISTA -->
              <svg  
                aria-hidden="true"
                class="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 group-hover:text-gray-900 dark:text-gray-400 dark:group-hover:text-white"
                fill="currentColor"
                viewBox="0 0 20 20"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  fill-rule="evenodd"
                 d="M7 3a1 1 0 000 2h6a1 1 0 100-2H7zM4 7a1 1 0 011-1h10a1 1 0 110 2H5a1 1 0 01-1-1zM2 11a2 2 0 012-2h12a2 2 0 012 2v4a2 2 0 01-2 2H4a2 2 0 01-2-2v-4z"
                  clip-rule="evenodd"
                ></path> 
                 <!-- FINE IMMAGINE LISTA -->
              </svg>
              <span class="ml-3">Liste</span>
            </a>
          </li> 
          <!-- FINE SIDEBAR LISTA -->
          <!-- INIZIO SIDEBAR ACCOUNT -->
          <li>     
            <a
              href="pages/account.jsp"
              class="flex items-center p-2 text-base font-medium text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
            >
            
             <!-- IMMAGINE ACCOUNT -->
              <svg  
                aria-hidden="true"
                class="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 group-hover:text-gray-900 dark:text-gray-400 dark:group-hover:text-white"
                fill="currentColor"
                viewBox="0 0 16 16"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  fill-rule="evenodd"
                 d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"
                  clip-rule="evenodd"
                ></path> 
                 <!-- FINE IMMAGINE ACCOUNT -->
              </svg>
              <span class="ml-3">Account</span>
            </a>
          </li> 
          <!-- FINE SIDEBAR ACCOUNT -->
          
          <!-- INIZIO SIDEBAR LOGOUT -->
          <li>     
            <a
              href="pages/logout.jsp"
              class="flex items-center p-2 text-base font-medium text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
            >
            
             <!-- IMMAGINE LOGOUT -->
              <svg  
                aria-hidden="true"
                class="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 group-hover:text-gray-900 dark:text-gray-400 dark:group-hover:text-white"
                fill="currentColor"
                viewBox="0 0 16 16"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  fill-rule="evenodd"
                 d="M12.5 15a.5.5 0 0 1-.5-.5v-13a.5.5 0 0 1 1 0v13a.5.5 0 0 1-.5.5zM10 8a.5.5 0 0 1-.5.5H3.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L3.707 7.5H9.5a.5.5 0 0 1 .5.5z"
                  clip-rule="evenodd"
                ></path> 
                 <!-- FINE IMMAGINE LOGOUT -->
              </svg>
              <span class="ml-3">Logout</span>
            </a>
          </li> 
          <!-- FINE SIDEBAR LOGOUT -->     
        
        </div>
      </div>
    </aside>

<!--INIZIO PARTE LISTE  -->
    <main class="p-4 md:ml-64 h-auto pt-20 dark:bg-gray-900"><br>
    
      <div class="grid grid-cols-4 gap-4">
      
      	<%
      		if(session.getAttribute("usersLists")!=null){
      			UsersLists usersLists = (UsersLists)session.getAttribute("usersLists");
      			ArrayList<Lista> liste = usersLists.getAllUsersLists();
      			
      			for(int i = 0;i<liste.size();i++){		
      	
      	
      	%>
        <a href="pages/lista.jsp?id=<%=liste.get(i).getId() %>" class="block max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
        <img class="w-96" src="https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg" alt="ListsImage" /><br>
        <h5 class="mb-2 text-xl font-bold tracking-tight text-gray-900 dark:text-white"><%=liste.get(i).getTitolo() %></h5>
        </a>
        
    	<% }}%>

        <details class="open">
            <!-- Parte visibile (bottone) -->
            <summary 
                <a href="#" class="block max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800  dark:border-gray-700 dark:hover:bg-gray-700">
                  <img class="w-96" src="https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg" alt="ListsImage" /><br>
                  <h5 class="mb-2 text-xl font-bold tracking-tight text-gray-900 dark:text-white">Crea una nuova lista 😊</h5>
                </a>
            </summary>

            <!-- Parte invisibile -->
            <div class="w-full rounded-lg bg-white shadow sm:max-w-md md:mt-0 xl:p-0 dark:border dark:border-gray-700 dark:bg-gray-800 my-5 mx-auto absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2  inset-0 rounded-2xl w-[40%] h-[27%]">
              <div class="space-y-4 p-6 sm:p-8 md:space-y-6">
                <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">Crea una nuova lista</h1>
                <form class="space-y-4 md:space-y-6" action="addLista" method="POST">
                  <div>
                    <label for="titolo" class="mb-2 block text-sm font-medium text-gray-900 dark:text-white">Titolo</label>
                    <input type="text" name="titolo" id="titolo" class="focus:ring-primary-600 focus:border-primary-600 block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-gray-900 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500" placeholder="Lista1" required="" />
                  </div>
                  <div class="grid grid-cols-2 gap-4">
                    <button type="submit" class="flex w-full justify-center rounded-md bg-blue-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-blue-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600">Crea</button>
                    <button onclick="document.querySelector('details').removeAttribute('open')" type="button" class="flex w-full justify-center rounded-md bg-red-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-red-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-red-600">Chiudi</button>
                  </div>
                </form>
              </div>
            </div>
        </details>
      </div>
    </main>
  </div>

</body>
</html>