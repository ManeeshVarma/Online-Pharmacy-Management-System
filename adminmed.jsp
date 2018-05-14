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
            ResultSet rs=mystmt.executeQuery("select * from medicine");%>
            <table>
                <tr><th>Medicine-Id</th>
            <th>Medicine-Name</th>
            <th>Count</th>
            <th>Expiry_date</th>
            <th>Company_name</th>
            <th>Description</th>
            <th>Cost</th></tr>
            
     <%               
   while(rs.next())
       {
   %>
           <tr><td><%=rs.getInt(1) %></td>
           <td><%=rs.getString(2)%></td>
           <td><%=rs.getInt(3) %></td>
           <td><%=rs.getDate(4) %></td>
           <td><%=rs.getString(5) %></td>
           <td><%=rs.getString(6) %></td>
           <td><%=rs.getInt(7) %></td>
           <td><input type="button" name="edit" value="Edit"  onclick="editRecord(<%=rs.getString(1)%>);" ></td>
           <td><input type="button" name="delete" value="Delete" onclick="deleteRecord(<%=rs.getString(1)%>);" ></td>
           
           </tr>

   <%
       }
%>
            </table>
    
    
</html>