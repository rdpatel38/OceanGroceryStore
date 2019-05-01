<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="style1.css">
		<title>Admin Choices</title>
	</head>
<body>

<%
String val1="";
String val2="";
String val3="";
String val4="";
String val5="";
String val6="";
String val7="";

if(session.getAttribute("val1")!=null)
	  val1=(String)session.getAttribute("val1");
if(session.getAttribute("val2")!=null)
	   val2=(String)session.getAttribute("val2");
if(session.getAttribute("val3")!=null)
	   val3=(String)session.getAttribute("val3");
if(session.getAttribute("val4")!=null)
	   val4=(String)session.getAttribute("val4");
if(session.getAttribute("val5")!=null)
	   val5=(String)session.getAttribute("val5");
if(session.getAttribute("val6")!=null)
	   val6=(String)session.getAttribute("val6");
if(session.getAttribute("val7")!=null)
	   val7=(String)session.getAttribute("val7");

%>
<body>
<br><br>
<form  method="Post" action="command"? name=action>
	<br><br>
	<table BORDER=5 ALIGN="CENTER">
  		<tr><th CLASS="TITLE"><h3>Store Database Operation</h3></table><br><br>	
  	<table border=0 align="center">  
    <tr><td>ID :</td><td><input type="number" name="val1" value=<%=val1%> ></td></tr>
    <tr><td>Name :</td><td><textarea name="val2" rows="1"><%=val2%></textarea></td></tr>
    <tr><td>Category :</td><td><select name="val3">
    								<option><%=val3%></option>
    								<option>Dairy</option>
    								<option>Grocery</option>
  									<option>Soda</option>
  									<option>Snack</option>
  									<option>Candy</option>
  									<option>IceCream</option></select></td></tr>
    <tr><td>Description :</td><td><textarea name="val4" rows="2"><%=val4%></textarea></td></tr>
    <tr><td>Size:</td><td><textarea name="val5" rows="1"><%=val5%></textarea></td></tr>
    <tr><td>Cost Price($) :</td><td><input type="number" name="val6" step="0.01" value=<%=val6%>></td></tr>
    <tr><td>Regular Price($) :</td><td><input type="number" name="val7" step="0.01" value=<%=val7%>></td></tr>
  	</table>
  	<br><br>
  	<table border=0 align="center">
  	<tr><td><input type = "submit" name="action" value="Insert"></td>
  	<td><input type="submit" name="action" value="Find"></td>
    <td><input type="submit" name="action" value="Update"></td>
    <td><input type = "submit" name="action" value="Delete"></td>
    <td><input type = "submit" name="action" value="Display"></td></tr>
    </table>
</form>
<br><br><a href="http://localhost:8080/OceanFinalProject/" style="margin:20px">Go Back</a>
</body>
</html>
