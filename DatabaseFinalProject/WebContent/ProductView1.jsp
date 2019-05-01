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
<br><br>
<table BORDER=5 ALIGN="CENTER">
  <tr><th CLASS="TITLE"><h3>Store Database Operation</h3></table>
<br><br>
<table ALIGN="CENTER">
<tr><td>Status : </td><td> <%= (String)session.getAttribute("operation") %> </td></tr>
<tr><td>ID : </td><td> <%= (String)session.getAttribute("sid") %> </td></tr>
<tr><td>Name : </td><td> <%= (String)session.getAttribute("sname") %> </td></tr>
<tr><td>Category : </td><td> <%= (String)session.getAttribute("scat") %> </td></tr>
<tr><td>Description : </td><td> <%= (String)session.getAttribute("sdesc") %> </td></tr>
<tr><td>Size : </td><td> <%= (String)session.getAttribute("ssize") %> </td></tr>
<tr><td>Cost Price : </td><td> <%= (String)session.getAttribute("suprice") %> </td></tr>
<tr><td>Regular Price : </td><td> <%= (String)session.getAttribute("srprice") %> </td></tr>
<%session.invalidate(); %> 
</table>
<br><br>
<tr><a HREF="DBchoices.jsp">Go Back</a> </tr>
<br><br>
</body>
</html>
