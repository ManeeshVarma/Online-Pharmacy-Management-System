		<%@page import="java.util.*"%>
        <%@page import="java.sql.*"%>
        <%@page import="java.io.*"%>	

<!DOCTYPE HTML>
<html>
<head>
	<title>admin page</title>
	<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
	<table class="first">
		<tr>
                    <td style="padding-left:30px"><img src="MEDLIFE.png" style="height:60px;width:120px"></td>
                    <td><p style="font-size:35px;margin-left:270px"><b>MEDLIFE</b></p></td>
		<td><a href="admin.html"><button style="height:40px;width:100px;">Logout</button></a></td>
		</tr>
	</table>
	
	
	
     <br><br>
	<div class="main">
	<br><br>
	<a href="adminuser.jsp"><button style="height:40px;width:200px;margin-left:350px;">User Info</button></a><br><br>
	<a href="adminmed.jsp"><button style="height:40px;width:200px;margin-left:350px;">Medicines Info</button></a><br><br>
	<a href="adminorders.jsp"><button style="height:40px;width:200px;margin-left:350px;">View Orders </button></a><br><br>


	</div>
	</body>

</html>

