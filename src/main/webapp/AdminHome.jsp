<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>




<!-- bootstrap -->
 <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
<style>
body{
	      background-color: lightblue;
	      background-position: center;
		  background-repeat: no-repeat;
		  background-attachment: fixed;
		  background-size: 100% 100%;
		  background-image: url("download2.jpg"); 
		  
		}
		
		h1 {
  background-color: blue;
     }
  h2 {text-align: center;}
</style>



</head>
<body >

<h1>EventPOP.lk</h1>
<br><h2>Admin HomePage</h2><br>

<!-- Navbar content -->
<nav class="navbar navbar-dark bg-dark">
  <div class="topnav">
  <a class="active"  href="AdminHome.jsp" >Home</a> \t
  <a href="aboutus.jsp">About</a>
</div>
</nav>

<br>
<br>
<br>
<!--   event add e -->
<div class="d-grid gap-2 col-6 mx-auto">

 <a href="Booking.jsp">
  <button class="btn btn-primary" type="button">View Booking</button>
  </a>
  
  <br>
  
  <a href="event.jsp">
  <button class="btn btn-primary" type="button">View Event</button>
   </a>
   
   <br>
   
  <a href="admininsert.jsp">
  <button class="btn btn-primary" type="button">Add to system</button>
 </a>
 
 <!-- ----------------------------------------------------------Footer start --------------------------------------------------------------->
<footer>
<br>
<br>
<br>
  <center>
      <div class="cpoy">
          <span class="c_text">
              copyright &copy; 2022 EventPOP.LK Allright Reserved
          </span>
      </div>
      </center>
</footer>	
<!-- -----------------------------------------------------------Footer end-------------------------------------------------- -->
 


</body>
</html>