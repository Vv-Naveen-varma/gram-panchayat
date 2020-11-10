<html>

	<%@ page import="java.sql.*" %>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.lang.*"%>
 	<%
 		String housenumber=request.getParameter("housenumber");
 		String state=request.getParameter("state");
 		String amount=request.getParameter("usage");
 		String userid=session.getAttribute("userid").toString();
 		Class.forName("com.mysql.jdbc.Driver");
 		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","root");
 
	 	Statement st=conn.createStatement();
	 	int perunit=10;
	 	int i=st.executeUpdate("insert into waterbill values('"+housenumber+"','"+state+"','"+amount+"','"+"waterbill"+"',NOW(),'"+userid+"')");
 		int j=st.executeUpdate("insert into transaction values('"+userid+"','"+housenumber+"','"+amount+"','"+"waterbill"+"',NOW(),'"+"-"+"')");
	%>
 <head>
 	<style>
 		body{
		margin:0;
		padding:0;
		background-image:url(images/sample3.jpg);
		background-position:top;
		background-repeat:no-repeat;
		background-size:cover;
		}
 	 	.details{
		height: 500px;
		background:transparent;
		color:white;
		top: 35%;
		left: 50%;
		position: absolute;
		transform: translate(-50%,-50%);
		box-sizing: border-box;
		padding: 40px 30px;
		border-radius:20px;
 		}
 	</style>
 	<link rel="stylesheet" href="pay.css">
 </head>
 <body>
 	<div class="details">
 		<center>
 		<form action="menupage.jsp" method="post">
 		<h1 style="background-color:orange;color:black;border-radius:5px;width:400px">WATER BILL</h1>
 		<h2 style="background-color:orange;color:black;border-radius:5px;width:400px">PAYMENT DETAILS</h2>
		<%  out.print("<h2>HOUSE NUMBER: "+housenumber+"</h2>");
			out.print("<h2>CHARGE PER UNIT: "+perunit+".rs</h2>");
			out.print("<h2>AMOUNT PAID: "+amount+".rs");
 		%>
 			<br><br><input type="submit" value="Goto Menupage" name="submit"></a>
    	</form>
    	</center>
 </body>
 </html>