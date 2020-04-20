<html>
<head>
	<style>
		body{
		margin:0;
		padding:0;
		background-image:url(images/sample4.jpg);
		background-repeat: no-repeat;
		background-size: cover;
		background-attachment: fixed;
		}
	</style>
	<link rel="stylesheet" href="history.css">
</head>
<body>
<div class="details">
	<h1 style="position:static;">WATER BILL HISTORY</h1>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<table align="center" cellpadding="8" cellspacing="2" border="1">

<tr align="center" bgcolor="#A52A2A" style="color:black;font-size:20px">
<td><b>CONSUMER ID</b></td>
<td><b>AMOUNT</b></td>
<td><b>BILL</b></td>
<td><b>DATE</b></td>
<td><b>ADHAAR NUMBER</b></td>

</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","naveen44");
Statement st=con.createStatement();

String user=session.getAttribute("userid").toString();

String sql="select * from transaction order by date desc";
ResultSet rs= st.executeQuery(sql);
String ifbill="waterbill";

while(rs.next()) {
if( user.equals(rs.getString("userid")) ){
if( ifbill.equals(rs.getString("bill")) ){
%>
<tr bgcolor="#DEB887" align="center" style="font-size:20px">

<td><%=rs.getString("consumerid") %></td>
<td><%=rs.getString("amount") %></td>
<td><%=rs.getString("bill") %></td>
<td><%=rs.getString("date") %></td>
<td><%=rs.getString("userid") %></td>

</tr>
<% } } }%>
</table>
</div>
<ul>
	<li style="position:fixed"><a href="history.jsp">Back&nbsp</a></li>&nbsp&nbsp
	<li id="rightside" style="float:right"><a class="active"  href="homelogin.jsp">logout</a></li>
</ul>

</body>
</html>