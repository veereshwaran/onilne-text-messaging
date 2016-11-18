<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SMS2.login" %>

<html>
  <head>
    <title>Welcome Online Department Notifiation</title>

	<!-- include css file here-->
    <link rel="stylesheet" href="loginStyle.css"/>
	
	<!-- include javascript file here-->
    <script src="login.js"></script> 
      
  </head>
  <body>
	<table align="center">
	<div class="container">
	  <div class="main">
		<h2>Login</h2><hr/>
 
		<form id="form_id" method="post" name="myform">
		
		  <label>User Name :</label></br>
		  <input type="text" name="username" id="username"/></br>
 
		  <label>Password :</label></br>
		  <input type="password" name="password" id="password"/></br>
 
		  <input type="button" value="Login" id="submit" onclick="validate()"/>
		</form>
		
		<span><b class="note">Note : </b>If you forgot username or password contact website administrator<br/>
	  </div>
	  
	</div>
</table>
 </body>
</html>