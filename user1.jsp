		<%@page import="java.util.*"%>
        <%@page import="java.sql.*"%>
        <%@page import="java.io.*"%>	

<!DOCTYPE HTML>
<html>
<head><title>customer page</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
	<table class="first">
		<tr>
		<td style="padding-left:30px"><img src="MEDLIFE.png" style="height:60px;width:120px""></td>
		<td><p style="font-size:35px;margin-left:450px"><b></b></p></td>
                <td><a href="cart.jsp"><button style="height:40px;width:100px;">My Cart</button></a></td>
                <td><a href="transactions.jsp"><button style="height:40px;width:100px;">Transactions</button></a></td>
		<td><a href="log.html"><button style="height:40px;width:100px;">Logout</button></a></td>
		<td><a href="pass.jsp"><button style="height:40px;width:100px;">Password</button></a></td>
		</tr>
	</table>
	
	<div class="ww">
			<%
  try{
		 Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","PHARMACY","123456");
     Statement st=con.createStatement();
	  String n=(String)session.getAttribute("uname"); 
	session.setAttribute("uname",n);	  
               ResultSet rs=st.executeQuery("select FIRSTNAME,LASTNAME from LOGIN where username='"+n+"'");
              while(rs.next())
              {
             %>
           <p style="padding-top: 2px" align="center"> FULL NAME:   <%=rs.getString(1).toUpperCase()%>  <%=rs.getString(2).toUpperCase()%></p>
                  
				
               <% 
                 
              }
       }
        catch(Exception e)
        {
        out.println(e);
        } 
              %> 
	</div>
	
        

          
        
        <div class="imag">
		<b><p style="font-size:20px;text-align:center;color:#221f87;padding-top:0px;font-family:Arial Black;">Featured Categories</p></b>
		<table align="center"  width="90%"  cellpadding="10" style="padding-bottom:40px;"  >
		<tr height="100px" align="center">
			<td  class="second"><a href="ayurvedic.jsp"><img class="pic" src="AYURVEDIC.jpg" style="height:200px; width:250px; border-color:#527a7a; " border="3"></a>
                            <p >AYURVEDIC</p></td>
			<td  class="second"><a href="https://www.icicibank.com"><img class="pic" src="BABY-MOTHER.jpg" style="height:200px; width:250px; border-color:#527a7a;" border="3"></a> <p >BABY-MOTHER</p></td>
			<td  class="second"><a href="https://www.sbi.co.in"><img class="pic" src="FIRST-AID.jpg" style="height:200px; width:250px; border-color:#527a7a; " border="3"></a><p >FIRST-AID</p></td>
			<td  class="second"><a href="https://www.icicibank.com"><img class="pic" src="PERSONAL-CARE.jpg" style="height:200px; width:250px; border-color:#527a7a;" border="3"></a><p >PERSONAL-CARE</p></a></td>
                </tr>	
                <tr height="100px" align="center">
                        <td  class="second"><a href="https://www.sbi.co.in"><img class="pic" src="HEALTH-EQUIPMENTS.jpg" style="height:200px;width:250px;border-color:#527a7a;" border="3"></a><p >HEALTH-EQUIPMENTS</p></td>
		
			<td  class="second"><a href="https://www.axisbank.com/"><img class="pic" src="GENERIC-MEDICINES.jpg" style="height:200px;width:250px;border-color:#527a7a; " border="3"></a><p >GENERIC-MEDICINES</p></td>
			<td  class="second"><a href="http://www.hdfcbank.com/"><img class="pic" src="HEALTH-CARE.jpg" style="height:200px;width:250px;border-color:#527a7a; " border="3"></a><p >HEALTH-CARE</p></td>
			<td  class="second"><a href="https://www.andhrabank.in/English/home.aspx#"><img class="pic" src="NUTRITION.jpg" style="height:200px;width:250px;border-color:#527a7a; " border="3"></a><p >NUTRITION</p></td>
		</tr>
		</table>
		</div>
	</body>

</html>

