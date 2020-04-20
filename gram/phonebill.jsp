<html>
<head>
	<title>PHONE BILL</title>
	<link rel="shortcut icon" type="image/png" href="images/p2.jpg">
	<!--<link rel="stylesheet" href="phonebill.css">-->
</head>
<body>
	<div class="details">
		<h1><u style="color:black">PHONE BILL</u></h1>
		<p>&nbsp CONSUMER ID</p>
		<form action="phone.jsp" method="post">
		
		<input type="text" placeholder="enter number" name="consumerid" required="required"> 
		<p>&nbsp PHONE NUMBER</p>
		<input type="text" placeholder="enter phone number" name="phone" pattern="[0-9]{10}" title="enter 10 digit number" required="required"> 
		<p>&nbsp AMOUNT</p>
		<input type="number" id="units" placeholder="enter amount to be paid" name="usage" required="required">
		<br><br><br><input type="submit" class="button" value="Pay">
		
		</form>
	</div>
	<ul>
	<li><a href="history.jsp">History</a></li>
	<li><a href="electricbill.jsp">Electricity Bill</a></li>
	<li><a href="waterbill.jsp">Water Bill</a></li>
	<li style="float:right"><a class="active" href="homelogin.jsp">logout</a></li>
	</ul>
</body>
<style type="text/css">
	body{
		margin:0;
		padding:0;
		background-image:url(images/ph.jpg);
		background-repeat:repeat;
		background-position:absolute;
		background-size:650px;
		}
	.details{
		width: 315px;
		height: 420px;
		background: transparent ;
		color: #fff;
		top: 35%;
		left: 48%;
		position: absolute;
		transform: translate(-50%,-50%);
		box-sizing: border-box;
		padding: 40px 30px;
		}
		.details h1{
		margin:0;
		padding: 0 0 15px;
		text-align: center;
		font-color:black;
		font-size: 28px;
		}
		.details input{
		width: 100%; 
		margin-bottom: 15px;
		}
		.details input[type="text"],input[type="number"]{
		margin: 0;
		border: none;
		border-bottom: 1px solid;
		background:transparent;
		outline: none;
		height: 20px;
		width:250px;
		color: white;
		font-size: 18px;
		}
		.details input[type="text"]:hover,input[type="number"]:hover{
		height:30px;
		color:white;
		width:280px;
		border-bottom:2.4px solid;
		transition-duration:0.3s;
		}
		.details input[type="submit"]{
		margin: 0;
		border: 0;
		height: 40px;
		
		background: #fb2525;
		color: #fff;
		font-size: 20px;
		font-style:italic;
		border-radius: 20px;
		}
		.details input[type="submit"]:hover{
		border:0;
		background-color:orange;
		color: black;
		padding: 10px 5px;
		text-align:center;
		cursor:pointer;
		box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
		text-decoration: none;
		font-size: 22px;

		margin: 4px 2px;
		transition-duration: 0.3s;
		}
		.details p{
		color: black;
		font-size:25px;
		font-family: verdana;
		font-style:bold;
		}
		
	ul {
	text:center;
	list-style-type: none;
	margin: ;
	padding: 0;
	overflow:hidden;
	background-color:transparent;
	}
	li{
	float:left;
	}
	li a {
	display: block;
	color: white;
	padding: 8px 16px;
	text-decoration: none;
	font-size:25px;
	} 

	li a:hover {
	text-decoration:underline;
	background-color:transparent;
	color:white;
	padding: 10px 30px;
	text-align:center;
	cursor:pointer;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
	transition-duration:0.2s;
	}
</style>
</html>