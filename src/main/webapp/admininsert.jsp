<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

h1 {
            background-color: blue;
     }

body{
	     background-color: lightblue;
		  
		}
		
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
		
</style>
</head>
<body>
  <h1>Add Details</h1>
  <form action="insert" method="post">
  
  Name <input type="text" name="name" required><br><br>
  Email <input type="email" name="email" required><br><br>
  Phone Number <input type="text" name="phone" required><br><br>
  User Name <input type="text" name="uid" required><br><br>
  Password <input type="password" name="psw" required><br><br>
  Role <input type="text" name="role" required><br><br>
 
  <input type ="submit" class="button" name="submit" value="Add">
  </form>

</body>
</html>