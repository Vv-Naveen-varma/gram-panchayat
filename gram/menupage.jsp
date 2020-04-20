<!doctype html>
<html>
<head>  <title>MENU PAGE </title>
	<link rel="stylesheet" href="menupage.css">
</head>
<body>
	<%--<% 	
		String userid=session.getAttribute("userid").toString();
		session.setAttribute("userid",userid);
	%>  --%>

<h1> <center><u>GRAM PANCHAYAT</u></center> </h1>
<center class="menu">
	<a href="phonebill.jsp"><input type="button" class="button" value="Phone Bill"></a>
	<a href="waterbill.jsp"><input type="button" class="button" value="Water Bill"></a><br>
	<a href="electricbill.jsp"><input type="button" class="button" value="Electricity Bill"></a>
	<a href="history.jsp"><input type="button" class="button" value="History"></a><br>
	<a href="homelogin.jsp"><input type="button" class="button" value="Logout"></a>
</center>
</body>
</html>