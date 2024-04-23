<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style/login.css">
</head>
<body>
<section class="bg-gray-50 dark:bg-gray-900">
  <div class="mx-auto flex flex-col items-center justify-center px-6 py-8 md:h-screen lg:py-0">
    <a href="#" class="mb-6 flex items-center text-2xl font-semibold text-gray-900 dark:text-white">
      <img class="mr-2 h-8 w-8" src="https://static.gamberorosso.it/media/k2/items/src/09b0e609e1ff4f27f946f49926d89c21.jpg" alt="logo" />
      Nome APP
    </a>
    <div class="w-full rounded-lg bg-white shadow sm:max-w-md md:mt-0 xl:p-0 dark:border dark:border-gray-700 dark:bg-gray-800">
      <div class="space-y-4 p-6 sm:p-8 md:space-y-6">
        <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">Accedi al tuo account</h1>
        <form class="space-y-4 md:space-y-6" action="#">
          <div>
            <label for="username" class="mb-2 block text-sm font-medium text-gray-900 dark:text-white">Username</label>
            <input type="username" name="username" id="username" class="focus:ring-primary-600 focus:border-primary-600 block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-gray-900 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500" placeholder="mario.rossi@gmail.com" required="" />
          </div>
          <div>
            <label for="password" class="mb-2 block text-sm font-medium text-gray-900 dark:text-white">Password</label>
            <input type="password" name="password" id="password" placeholder="********" class="focus:ring-primary-600 focus:border-primary-600 block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-gray-900 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500" required="" />
          </div>
          <div class="flex items-center justify-between">
            <div class="flex items-start">
              <div class="flex h-5 items-center">
                <input id="ricorda" aria-describedby="ricorda" type="checkbox" class="focus:ring-3 focus:ring-primary-300 dark:focus:ring-primary-600 h-4 w-4 rounded border border-gray-300 bg-gray-50 dark:border-gray-600 dark:bg-gray-700 dark:ring-offset-gray-800" />
              </div>
              <div class="ml-3 text-sm">
                <label for="remember" class="text-gray-500 dark:text-gray-300">Ricordami</label>
              </div>
            </div>
            <a href="#" class="text-primary-600 dark:text-white text-sm font-medium hover:underline">Password dimenticata?</a>
          </div>
          <button type="submit" class="flex w-full justify-center rounded-md bg-blue-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-blue-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600">Sign in</button>
          <p class="text-sm font-light text-gray-500 dark:text-gray-400">Non hai ancora un account? <a href="#" class="text-primary-600 dark:text-primary-500 font-medium hover:underline">Iscriviti</a></p>
        </form>
      </div>
    </div>
  </div>
</section>
</body>
</html>
