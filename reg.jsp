<%-- 
    Document   : regaction
    Created on : Aug 3, 2015, 9:14:33 PM
    Author     : CSE
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
            out.println("connected");
            String username=request.getParameter("username");
           String firstname=request.getParameter("firstname");
            String lastname=request.getParameter("lastname");
	String mobileno=request.getParameter("mobile_no");
	String address=request.getParameter("address");
        String email=request.getParameter("email"); 
        String pwd=request.getParameter("password");
        String pwd1=request.getParameter("password1");
        String pincode=request.getParameter("pincode");
            Statement mystmt = con.createStatement();
			session.setAttribute("username",username);
			String nss="insert into LOGIN ( FIRSTNAME,LASTNAME, MOBILE_NUMBER, EMAILID, ADDRESS,PINCODE, USERNAME, PASSWORD ) values('"+firstname+"','"+lastname+"', '"+mobileno+"','"+email+"', '"+address+"', '"+pincode+"','"+username+"', '"+pwd+"')";
			 
            int i=mystmt.executeUpdate(nss);
            
                out.println(i+"rows effected");
            response.sendRedirect("home.html");
        %>
        
    </body>
</html>
