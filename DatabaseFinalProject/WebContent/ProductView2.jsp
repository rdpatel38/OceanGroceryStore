<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style1.css">
<title>View</title>
</head>
<body>
<body>
<br><br>
<table BORDER=5 ALIGN="CENTER">
  <tr><th CLASS="TITLE"><h3>Store Database Operation</h3></table>
<div style="align:center">
Status :<%= (String)session.getAttribute("operation") %><br> 
Data : <br> <%= (String)session.getAttribute("result") %>
</div>
<%session.invalidate(); %>
<br><br>
<a HREF="DBchoices.jsp " >Go Back</a> 
<br><br>       
</body>
</html>