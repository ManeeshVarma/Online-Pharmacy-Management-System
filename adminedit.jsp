<%-- 
    Document   : edit
    Created on : Apr 17, 2018, 12:33:22 AM
    Author     : Maneesh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MedLife</title>
	<link rel="stylesheet" type="text/css" href="style.css"/>
    </head>

<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
 <%@page import="java.io.*"%>
<body>
<form method="post" action="adminupdate.jsp">
    <table class="first">
		<tr>
                    <td style="padding-left:30px"><img src="MEDLIFE.png" style="height:60px;width:120px"></td>
                    <td><p style="font-size:35px;margin-left:270px"><b>MEDLIFE</b></p></td>
		<td><a href="admin.html"><button style="height:40px;width:100px;">Logout</button></a></td>
		</tr>
	</table>
<table border="1">
    <tr><th>Medicine-Id</th>
            <th>Medicine-Name</th>
            <th>Count</th>
            <th>Expiry_date</th>
            <th>Company_name</th>
            <th>Description</th>
            <th>Cost</th></tr>
<%
String id=request.getParameter("id");
int no=Integer.parseInt(id);
int sumcount=0;
try {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","PHARMACY","123456");
String query = "select * from medicine where medicine_id='"+no+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
out.println("FGfhg");
while(rs.next()){
%>
<tr>
<td><input type="text" name="id" value="<%=rs.getInt(1)%>"></td>
<td><input type="text" name="mname" value="<%=rs.getString(2)%>"></td>
<td><input type="text" name="count" value="<%=rs.getInt(3)%>"></td>
<td><input type="text" name="expiry" value="<%=rs.getDate(4)%>"></td>
<td><input type="text" name="cname" value="<%=rs.getString(5)%>"></td>
<td><input type="text" name="description" value="<%=rs.getString(6)%>"></td>
<td><input type="text" name="cost" value="<%=rs.getInt(7)%>"></td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="Update" ></td>
</tr>
<%
}
}
catch(Exception e){}
%>
</table>
</form>
</body>
</html>