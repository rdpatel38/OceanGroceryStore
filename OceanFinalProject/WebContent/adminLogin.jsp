<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="styling.css">
<title>Admin Login</title>
</head>

<%
try{
	String a = request.getParameter("name");
	String b = new String(request.getParameter("pass"));
	String c = new String("ocean");
	if(a.equals(c) && b.equals(c)){
		response.sendRedirect("http://localhost:8080/DatabaseFinalProject/");
	}	
	else {
		response.sendRedirect("error.jsp");
	}
}
catch(Exception e) {
	e.printStackTrace();
}
%>
<body>
  <form  method="Post">
    <h1 style="text-align:center"><b>Login</b></h1><br>

    <label for="name"><b>User ID : </b></label>
    <input type="text" placeholder="Enter ID" name="name" required><br><br>
	
	<label for="password"><b>PASSWORD :</b></label>
    <input type="password" placeholder="Enter Password" name="pass" required><br><br>
    
   	<input type="submit" value="LOGIN" name="login">
   	<input type="reset" value="RESET">
  </form>
<br><br><a href="index.html" style="margin:20px">Go Back</a><br><br>
</body>
</html>