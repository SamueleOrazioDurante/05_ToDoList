
![Logo](https://github.com/SamOraDur/05_ToDoList/blob/main/doc/img/Logo.jpeg)

# 📝 Noirell

Questo progetto è stato sviluppato in seguito a un compito assegnatoci dal prof. **** ****** sviluppato in gruppi da 2 persone (contributi linkati alla fine della pagina) e tramite l'utilizzo dell'argomento teorico svolto sul *MVC in Java* e l'utilizzo di TailwindCSS.

## 📕 Manuale

### 🗄️ Server

Prima di procedere è necessario avere installato sul proprio dispositivo sia PhpMyAdmin sia Tomcat, oltre ovviamente una versione di Java superiore a Java 8 (nell'esempio dimostrativo viene utilizzato il JDK22). Il metodo più semplice per averli è accedere a questo sito [XAMPP](https://www.apachefriends.org/download.html), successivamente scaricare ed installare l`ultima versione. Una volta fatto tutto ciò aprire il pannello di controllo di XAMPP e abilitare le sezioni "Apache", "Phpmyadmin" e "Tomcat" come nello screenshot seguente.

<img src="https://github.com/SamOraDur/05_ToDoList/blob/main/doc/img/xampp.png" height="400" width="800">

Andare alla sezione "Release" di questa repository chiamata x.x-Noirell e scaricare il file 05_ToDoList.war e il database TPSITToDoList.sql.

Importare il database "TPSITToDoList.sql" all`interno della pagina di MySql (nel db deve anche essere presente un utente con privilegi di amministratore con nome utente: admin e password: admin).

<img src="https://github.com/SamOraDur/05_ToDoList/blob/main/doc/img/mysql.png" height="400" width="800">

Procedere infine con il deploy dell'applicazione tramite tomcat, importando il file "05_ToDoList.war", procedendo con l'avvio dell'applicazione.

<img src="https://github.com/SamOraDur/05_ToDoList/blob/main/doc/img/tomcat.png" height="400" width="800">

A questo punto andare sulla pagina [localhost](http://localhost:8080/05_ToDoList) e procedere con l'utilizzo dell'applicazione!

#### 🔐 Login

Procedere dunque con la registrazione di un nuovo account e successivamente il login all`interno della piattaforma.

<img src="https://github.com/SamOraDur/05_ToDoList/blob/main/doc/img/login.png">

#### 🗣️ Utilizzo

<img src="https://github.com/SamOraDur/05_ToDoList/blob/main/doc/img/index.png" height="400" width="800">

Una volta eseguito l'accesso sarà possibile navigare tra le proprie liste, crearne una nuova, visualizzare l'elenco di todo presenti in una lista, eliminare, modificare e checkare/uncheckare una todo o cancellare la lista stessa.

<img src="https://github.com/SamOraDur/05_ToDoList/blob/main/doc/img/lista.png" height="400" width="800">

## 🧑 Autori

- Durante -> [@SamOraDur](https://www.github.com/SamOraDur)
- Mingon -> [@SonMiCiao](https://github.com/SonMiCiao)


## ✍️ Documentazione

- [Presentazione](#)
- [Guida al deploy (pdf) ](#)

## ❌ Cose che non siamo riusciti a concludere in tempo

- Pagina account per aggiungere o modificare i propri dati e inserire una foto profilo
- Visualizzazione della foto profilo in tutte le pagine dell`applicativo
- Possibilità di aggiungere, vedere e scaricare allegati di una to-do
- Rifinitura della questione errori nella pagine ErrorPage.jsp e errori legati a password errate
- Ottimizzazioni generali per evitare tante chiamate al DB (che purtroppo sono presenti)