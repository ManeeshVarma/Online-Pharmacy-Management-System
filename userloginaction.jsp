<%-- 
    Document   : signin
    Created on : 26 May, 2017, 4:37:14 PM
    Author     : PAVANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@page import="java.util.*"%>
        <%@page import="java.sql.*"%>
        <%@page import="java.io.*"%>
        
        <%
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","PHARMACY","123456");
            //out.println("connected");
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            Statement mystmt = con.createStatement();
             session.setAttribute("uname",username);
            ResultSet rs;
            rs=mystmt.executeQuery("select * from LOGIN where USERNAME='"+username+"' and PASSWORD='"+password+"'");
            if(rs.next())
            {
                response.sendRedirect("user1.jsp");
            }
            else
            {
                out.println("<p>Invalid username or password </p> ");
                out.println("<a href='log.html' >Try again</a>");
                
            }
         %>
    </body>
</html>
