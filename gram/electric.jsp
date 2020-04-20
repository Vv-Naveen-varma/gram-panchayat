<html>
 <head>
 	<title>electric bill</title>
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

	<%@ page import="java.sql.*" %>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.lang.*"%>
 	<%
 		String consumerid=request.getParameter("consumerid");
 		String state=request.getParameter("state");
 		String amount=request.getParameter("usage");
 		String userid=session.getAttribute("userid").toString();
 		Class.forName("com.mysql.jdbc.Driver");
 		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","naveen44");
 		
	 	Statement st=conn.createStatement();
		int perunit=5;
		int i=st.executeUpdate("insert into electricbill values('"+consumerid+"','"+state+"','"+amount+"','"+"electricbill"+"',NOW(),'"+userid+"')");
 		int j=st.executeUpdate("insert into transaction values('"+userid+"','"+consumerid+"','"+amount+"','"+"electricbill"+"',NOW(),'"+"-"+"')");
		
	%>

 	<div class="details">
 		<center>
 		<form action="menupage.jsp" method="post">
 		<h1 style="background-color:orange;color:black;border-radius:5px;width:400px">ELECTRIC BILL</h1>
 		<h2 style="background-color:orange;color:black;border-radius:5px;width:400px">PAYMENT DETAILS</h2>
		<%  out.print("<h2>CONSUMER ID: "+consumerid+"</h2>");
			out.print("<h2>CHARGE PER UNIT: "+perunit+".rs</h2>");
			out.println("<h2>AMOUNT PAID: "+amount+".rs");
 		%>
 		<br><br><input type="submit" value="Goto Menupage" name="submit"></a>
    	</form>
 		</center>
 	</div>
 </body>
 </html>