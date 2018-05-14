<%-- 
    Document   : adminuser
    Created on : Apr 16, 2018, 8:05:38 PM
    Author     : Maneesh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin user Page</title>
	<link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
		<%@page import="java.util.*"%>
        <%@page import="java.sql.*"%>
        <%@page import="java.io.*"%>	

<body>
	<table class="first">
		<tr>
                    <td style="padding-left:30px"><img src="MEDLIFE.png" style="height:60px;width:120px"></td>
                    <td><p style="font-size:35px;margin-left:270px"><b>MEDLIFE</b></p></td>
		<td><a href="admin.html"><button style="height:40px;width:100px;">Logout</button></a></td>
		</tr>
	</table>
    <%
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","PHARMACY","123456");
            Statement mystmt = con.createStatement();
            ResultSet rs=mystmt.executeQuery("select * from orders");%>
            <table>
                <tr><th>Medicine-Id</th>
            <th>Medicine-Name</th>
            <th>Quantity</th>
            <th>Username</th>
            <th>Bill</th></tr>
            
     <%               
   while(rs.next())
       {
   %>
           <tr><td><%=rs.getInt(1) %></td>
           <td><%=rs.getString(2)%></td>
           <td><%=rs.getInt(3) %></td>
           <td><%=rs.getString(4) %></td>
           <td><%=rs.getInt(5) %></td></tr>

   <%
       }
%>
            </table>
    
    
</html>