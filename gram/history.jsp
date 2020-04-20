<html>
<head>
	<link rel="stylesheet" href="history.css">
</head>
<body>
<form>
	<center class="menu">
		<h1 style="position:static;">TRANSACTION HISTORY</h1>
	<a href="phonehistory.jsp"><input type="button" class="button" value="Phone Bill"></a>
	<a href="waterhistory.jsp"><input type="button" class="button" value="Water Bill"></a>
	<a href="electrichistory.jsp"><input type="button" class="button" value="Electricity Bill"></a>
	</center>
</form>
<ul>
	<li style="position:fixed"><a href="menupage.jsp">Menu&nbsp</a></li>&nbsp&nbsp
	<li id="rightside" style="float:right"><a class="active"  href="homelogin.jsp">logout</a></li>
</ul>

</body>
	<style>
		body{
		margin:0;
		padding:0;
		background-image:url(images/sample4.jpg);
		background-repeat: no-repeat;
		background-size: cover;
		background-attachment: fixed;
		}
		.button{
	text:center;
	margin:10px;
	border: 0;
	background:orange;
	color:black;
	font-size: 32px;
	font-style:italic;
	padding:5px 20px;
	border-radius:5px;
	}
	.button:hover{
	margin:0;
	border:0;
	background-color:orange;
	color: white;
	padding: 10px 30px;
	text-align:center;
	cursor:pointer;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
	text-decoration: none;
	font-size: 40px;
	margin: 4px 2px;
	border-radius:6px;
	transition-duration: 0.3s;
	}
	.menu{
	width:;
	height:;
	background:transparent;
	color:black;
	top: 25%;
	left: 50%;
	position: absolute;
	transform: translate(-50%,-50%);
	box-sizing: border-box;
	padding: 40px 30px;
	border-radius:10px;
	}
	h1{
		color:white;
		font-size: 43px;
	}
	</style>
</html>