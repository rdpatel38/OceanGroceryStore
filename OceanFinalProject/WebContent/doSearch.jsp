<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="styling.css">
<title> <%=request.getParameter("value") %></title>
</head>
<body>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<h1>Product Details</h1>
<h2>CATEGORY :  <%=request.getParameter("value") %></h2>
<table border="1">
<tr>
<td><h3>ID</h3></td>
<td><h3>Name</h3></td>
<td><h3>Description</h3></td>
<td><h3>Size</h3></td>
<td><h3>Price($)</h3></td>
</tr>
<%
String data = request.getParameter("value");
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OceanDB", "root", "password");
    String exp="select p_id, p_name, p_desc, p_size, p_rprice from Store_Product WHERE p_cat = ?";
    PreparedStatement ps = con.prepareStatement(exp);
    ps.setString(1, data);
    ResultSet rs = ps.executeQuery();
    while (rs.next()) {
%>
<tr>
<td><%=rs.getInt("p_id")%></td>
<td><%=rs.getString("p_name")%></td>
<td><%=rs.getString("p_desc")%></td>
<td><%=rs.getString("p_size")%></td>
<td><%=rs.getFloat("p_rprice")%></td>
</tr>
<%
  }
  con.close();
} catch (Exception e) { e.printStackTrace(); }
%>
</table>
<br><br><a href="index.html" style="margin:20px">Go Back</a><br><br>
</body>
</html>