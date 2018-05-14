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
        <script language="javascript">
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='adminedit.jsp?id='+id;
    f.submit();
}
function deleteRecord(id){
    var f=document.form;
    f.method="post";
    f.action='admindelete.jsp?id='+id;
    f.submit();
}
</script>
    </head>
		<%@page import="java.util.*"%>
        <%@page import="java.sql.*"%>
        <%@page import="java.io.*"%>	

<body>
	<table class="first" align="center">
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
            ResultSet rs=mystmt.executeQuery("select * from login");%>
            <table border='1'>
                <tr>   
                    <th>Username</th>
                <th>First Name</th>
            <th>Last Name</th>
            
            <th>Email_Id</th>
            <th>Mobile number</th>
            <th>Address</th>
            <th>Pincode</th></tr>
            
     <%               
   while(rs.next())
       {
           
   %>
   <form  action="admindelete.jsp"  name="myform" method="post" style="padding-top:10px;" >
           <tr><td ><input type="text" name="id" value="<%=rs.getString(3) %>"readonly></td>
           <td ><%=rs.getString(1) %></td>
           <td><%=rs.getString(2)%></td>
           <td><%=rs.getString(5) %></td>
           <td><%=rs.getString(6) %></td>
           <td><%=rs.getString(7) %></td>
           <td><%=rs.getString(8) %></td>
           
           
           <td> 
                   <input type="submit" name="submit" value="Delete" style="height:40px;width:100px;"></form></td>
           </tr>

   <%
       }
%>
            </table>
    
    
</html>