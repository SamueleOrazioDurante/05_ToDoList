<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*"%>
<%@ page import = "model.UsersLists,model.Lista,model.Todo"%>

<!DOCTYPE html>
<html class="h-full bg-white dark:bg-gray-900">
<head>
<meta charset="UTF-8">
<title> Noirell </title>
<link rel="icon" href="img/Logo.png" type="image/png" />
<link rel="stylesheet" href="style/todo.css">
</head>
<body class="h-full">

<div class="antialiased bg-gray-50 dark:bg-gray-900">
    <nav class="bg-white border-b border-gray-200 px-4 py-1.5 dark:bg-gray-800 dark:border-gray-700 fixed left-0 right-0 top-0 z-50">
      <div class="flex flex-wrap justify-between items-center">
        <div class="flex justify-start items-center">
              <!-- INIZIO NAV BAR CON LOGO E NOME APPLICAAZIONE -->
          <a href="../index.jsp" class="flex items-center justify-between mr-4">
            <img
              src="img/Logo.png"
              class="mr-3 h-8"
              style="width: 4rem; height: 4rem;"
            />
          </a>
        </div>
        
          	<a href="account.jsp" class="flex mr-4">
              <!-- PROFILO UTENTE ( ICONA IN ALTO A DX ) -->
            <img
              class="w-8 h-8 rounded-full"
              src="img/noUserImage.png"
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
              href="../index.jsp"
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
              href="account.jsp"
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
              href="logout.jsp"
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
    
    <%
    	UsersLists usersLists = (UsersLists)session.getAttribute("usersLists");
    	int id_lista= Integer.parseInt(request.getParameter("id_lista"));
    	int id_todo= Integer.parseInt(request.getParameter("id_todo"));
    	Todo todo = usersLists.getTodoFromId(id_lista,id_todo);
    
    %>

<!--INIZIO PARTE LISTE  -->
    
    <main class="p-4 md:ml-64 h-auto pt-20 dark:bg-gray-900">
    <br>
    <a href="lista.jsp?id=<%=id_lista %>">
	    <button type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2.5 text-center inline-flex items-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
	    <svg xmlns="http://www.w3.org/2000/svg" width="1rem" class="mx-2" height="1rem" viewBox="0 0 24 24"><path fill="currentColor" d="M12 9.059V6.5a1.001 1.001 0 0 0-1.707-.708L4 12l6.293 6.207a.997.997 0 0 0 1.414 0A.999.999 0 0 0 12 17.5v-2.489c2.75.068 5.755.566 8 3.989v-1c0-4.633-3.5-8.443-8-8.941"/></svg>
	    </button>
     </a>
        <br><br><br><br>
    <form class="max-w-md mx-auto" method="POST" action="../modifyTodo">
      <input type="hidden" id="id_lista" name="id_lista" value="<%= id_lista%>"></input>
      <input type="hidden" id="id_todo" name="id_todo" value="<%= id_todo%>"></input>
      <div class="relative z-0 w-full mb-5 group">
          <input value="<%=todo.getTitolo() %>" type="text" name="titolo" id="titolo" class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer" placeholder=" " required />
          <label for="titolo" class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Titolo</label>
      </div>
      <div class="relative z-0 w-full mb-5 group">
          <textarea id="descrizione" name="descrizione" rows="4" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Descrizione"><%if(todo.getDescrizione()!=null){out.print(todo.getDescrizione());}%></textarea>
      </div>
      <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Modifica</button>
    </form>

    </main>
  </div>

</body>
</html>