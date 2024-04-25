<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-full bg-white dark:bg-black">
<head>
<meta charset="UTF-8">
<title> Noirell </title>
<link rel="icon" href="img/Logo.png" type="image/png" />
<link rel="stylesheet" href="style/index.css">
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
          <button
            type="button"
            class="flex mx-3 text-sm bg-gray-800 rounded-full md:mr-0 focus:ring-4 focus:ring-gray-300 dark:focus:ring-gray-600"
            id="user-menu-button"
            aria-expanded="false"
            data-dropdown-toggle="dropdown"
          >
          	<a href="account.jsp" class="flex mr-4">
              <!-- PROFILO UTENTE ( ICONA IN ALTO A DX ) -->
            <img
              class="w-8 h-8 rounded-full"
              src="img/noUserImage.png"
              alt="user photo"
            />
            </a>
          </button>
            <!-- INIZIO DROPDOWN  -->

        </div>
      </div>
    </nav>

    <!-- INIZIO SIDEBAR -->

    <aside
      class="fixed top-0 left-0 z-40 w-64 h-screen pt-14 transition-transform -translate-x-full bg-white border-r border-gray-200 md:translate-x-0 dark:bg-gray-800 dark:border-gray-700"
      aria-label="Sidenav"
      id="drawer-navigation"
    >
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

<!--INIZIO PARTE LISTE  -->
    <main class="p-4 md:ml-64 h-auto pt-20 dark:bg-gray-900">
      <button class="rounded-md bg-rose-500 px-4 py-2 text-white transition hover:bg-rose-700" onclick="openModal('modelConfirm')">Click to Open modal</button>

<div id="modelConfirm" class="fixed inset-0 z-50 hidden h-full w-full overflow-y-auto bg-gray-900 bg-opacity-60 px-4">
  <div class="relative top-40 mx-auto max-w-md rounded-md bg-white shadow-xl">
    <div class="flex justify-end p-2">
      <button onclick="closeModal('modelConfirm')" type="button" class="ml-auto inline-flex items-center rounded-lg bg-transparent p-1.5 text-sm text-gray-400 hover:bg-gray-200 hover:text-gray-900">
        <svg class="h-5 w-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path>
        </svg>
      </button>
    </div>

    <div class="p-6 pt-0 text-center">
      <svg class="mx-auto h-20 w-20 text-red-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
      </svg>
      <h3 class="mb-6 mt-5 text-xl font-normal text-gray-500">Are you sure you want to delete this user?</h3>
      <a href="#" onclick="closeModal('modelConfirm')" class="mr-2 inline-flex items-center rounded-lg bg-red-600 px-3 py-2.5 text-center text-base font-medium text-white hover:bg-red-800 focus:ring-4 focus:ring-red-300"> Yes, I'm sure </a>
      <a href="#" onclick="closeModal('modelConfirm')" class="inline-flex items-center rounded-lg border border-gray-200 bg-white px-3 py-2.5 text-center text-base font-medium text-gray-900 hover:bg-gray-100 focus:ring-4 focus:ring-cyan-200" data-modal-toggle="delete-user-modal"> No, cancel </a>
    </div>
  </div>
</div>

<script type="text/javascript">
  window.openModal = function(modalId) {
      document.getElementById(modalId).style.display = 'block'
      document.getElementsByTagName('body')[0].classList.add('overflow-y-hidden')
  }

  window.closeModal = function(modalId) {
      document.getElementById(modalId).style.display = 'none'
      document.getElementsByTagName('body')[0].classList.remove('overflow-y-hidden')
  }

  // Close all modals when press ESC
  document.onkeydown = function(event) {
      event = event || window.event;
      if (event.keyCode === 27) {
          document.getElementsByTagName('body')[0].classList.remove('overflow-y-hidden')
          let modals = document.getElementsByClassName('modal');
          Array.prototype.slice.call(modals).forEach(i => {
              i.style.display = 'none'
          })
      }
  };
</script>

   
    </main>
  </div>
  
  

</body>
</html>