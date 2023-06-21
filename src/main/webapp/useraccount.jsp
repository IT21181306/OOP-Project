<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<style type="text/css">
	    
	    
		.button {
		  background-color: #2E86C1;
		  border: none;
		  color: white;
		  padding: 15px 32px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;
		  margin: 4px 2px;
		  cursor: pointer;
		}
		
		h1 {
	
	margin-bottom:4;
  background-color: blue;
     }
		    
	    body{
	     background-color: lightblue;
		  font-family: Hind SemiBold;
		}
	
	    
		table,th,td{
		   border: 1px solid black;
		}
		
		.button {
		    position: absolute;
		    top:50%;
		    background-color:#0a0a23;
		}
		
	</style>

</head>
<body >
<h1>Profile</h1>
	<table>
	<c:forEach var="adm" items="${adDetails}">
     
     <c:set var="id" value="${adm.id}"/>
     <c:set var="name" value="${adm.name}"/>
     <c:set var="email" value="${adm.email}"/>
     <c:set var="phone" value="${adm.phone}"/>
     <c:set var="username" value="${adm.userName}"/>
     <c:set var="password" value="${adm.password}"/>
     <c:set var="role" value="${adm.role}"/>
    
	<tr>
		<td>Admin ID</td> 
		<td>${adm.id}</td>
	</tr>
	
	<tr>
		<td>Admin Name</td> 
		<td>${adm.name}</td>
	</tr>
	
	<tr>
		<td>Admin Email</td> 
		<td>${adm.email}</td>
    </tr>
    
    <tr>
		<td>Admin Phone</td> 
		<td>${adm.phone}</td>
   </tr>

   <tr>
		<td>Admin User Name</td> 
		<td>${adm.userName}</td>
   </tr>
   <tr>
		<td>Admin Role</td> 
		<td>${adm.role}</td>
   </tr>
   


</c:forEach>
</table>
<br>

<c:url value="updateadmin.jsp" var="adupdate">
	<c:param name='id' value="${id}"/>
	<c:param name='name' value="${name}"/>
	<c:param name='email' value="${email}"/>
	<c:param name='phone' value="${phone}"/>
	<c:param name='uname' value="${username}"/>
	<c:param name='pass' value="${password}"/>
	<c:param name='role' value="${role}"/>
</c:url>


<a href="${adupdate}">
<input type="button"  name="update" value="Update Profile Data"><br>
</a>

<br>
<c:url value = "deleteadmin.jsp" var="addelete">
  <c:param name="id" value="${id}"/>
  <c:param name="name"  value="${name}"/>
  <c:param name="email" value="${email}"/>
  <c:param name="phone" value="${phone}"/>
  <c:param name="uname" value="${username}"/>
  <c:param name="pass" value="${password}"/>
  <c:param name="role" value="${role}"/>
</c:url>

<a href ="${addelete}">
<input type="button"  name="delete" value="Delete Profile" >
</a>

<br><br>
<c:url value="AdminHome.jsp" var="adhome">
	
</c:url>


<a href="${adhome}">
<input type="button"  class= "button" name="submit" value="Admin Home page">
</a>







</body>
</html>