<%-- 
    Document   : adminupdate
    Created on : Apr 17, 2018, 12:41:00 AM
    Author     : Maneesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>

<%
String id=request.getParameter("id");
int num=Integer.parseInt(id);
String mname=request.getParameter("mname");
String count=request.getParameter("count");
String expiry=request.getParameter("expiry");
String cname=request.getParameter("cname");
String description=request.getParameter("description");
String cost=request.getParameter("cost");
try{
Connection conn = null;
 Class.forName("oracle.jdbc.driver.OracleDriver");
 conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","PHARMACY","123456");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update medicine set medicine_id='"+id+"',medicine_name='"+mname+"',count="+count+",expiry_date='"+expiry+"',company_name='"+cname+"',description='"+description+"',cost='"+cost+"' where id='"+num+"'");
response.sendRedirect("adminmed.jsp");
}
catch(Exception e){
System.out.println(e);
    }
%>
    </body>
</html>
