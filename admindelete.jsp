<%-- 
    Document   : admindelete
    Created on : 17 Apr, 2018, 5:04:50 PM
    Author     : Dasari Anusha Reddy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MedLife</title>
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
            try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","PHARMACY","123456");
            Statement mystmt = con.createStatement();
            String id=request.getParameter("id");
            mystmt.executeUpdate("DELETE FROM LOGIN WHERE USERNAME = '"+id+"'");
            response.sendRedirect("adminuser.jsp");
            }
        catch(Exception e)
        {
            
        }
%>
    </body>
</html>


