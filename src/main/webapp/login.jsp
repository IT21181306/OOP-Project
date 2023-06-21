<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<style type ="text/css">
	
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
		
		.form-box{
		width: 500px;
		background: rgba(0,0,0,0.8);
		margin: 12% auto;
		padding: 50px 0;
		color: #fff;
		box-shadow: 0 0 20px 2px rgba(0,0,0,0.5);
		}
	
	h1 {
	text-align: center;
	margin-bottom:4;
  background-color: blue;
     }
	
	body{
	  background-color: lightblue;
	  font-family: Hind SemiBold;
	  
			
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
  background-image: url("download1.jpg");    
}
	}
	
	</style>
</head>
<body >



<div class="form-box">
<h1>Login Here</h1>
<form action ="login" method = "post">
  User Name  <div class="input-box"><input type="text" name="username" placeholder="Enter your username" required> </div><br><br>
  Password    <div class="input-box"><input type ="password" name="password" placeholder="Enter your password" required></div><br><br>
  
  <input type="submit" class ="button" name="submit" value="Submit">
</form>

</div>
</body>
</html>