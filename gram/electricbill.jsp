<html>
<head>
	<title>ELECTRIC BILL</title>
	<link rel="shortcut icon" type="image/png" href="images/bulb3.png">
	<!--<link rel="stylesheet" href="electricbill.css"> -->
</head>
<body>
	<!-- 	String userid=session.getAttribute("userid").toString();	session.setAttribute("userid",userid); -->
	<div class="details">
		<h1><u>ELECTRIC BILL</u></h1>
		<p>CONSUMER NUMBER</p>
		<form action="electric.jsp" method="post">
		
		<input type="text" placeholder="enter number" name="consumerid" required="required"> 
		<p>STATE</p>
		<input type="text" placeholder="enter state" name="state" required="required"> 
		<p>AMOUNT</p>
		<input type="number" id="units" placeholder="enter amount to be paid" name="usage" required="required">
		<br><br><br><input type="submit" class="button" value="Pay">

		</form>
	</div>
	<ul>
	<li><a href="history.jsp">History&nbsp</a></li>&nbsp&nbsp
	<li><a href="phonebill.jsp">Phone Bill&nbsp</a>&nbsp</li>
	<li><a href="waterbill.jsp">Water Bill</a></li>
	<li style="float:right"><a class="active" href="login.jsp">logout</a></li>
	</ul>
</body>
<style type="text/css">
	body{
		margin:0;
		padding:0;
		background-image:url(images/epic.jpg);
		background-position: center;
		background-repeat: no-repeat;
		background-size: cover;
		}
	.details{
		width: 315px;
		height: 420px;
		background: transparent;
		color: white;
		top: 45%;
		left: 40%;
		position: absolute;
		transform: translate(-50%,-50%);
		box-sizing: border-box;
		padding: 40px 30px;
		}
		.details h1{
		margin:0;
		padding: 0 0 15px;
		text-align: center;
		font-color:white;
		font-size: 25px;
		}
		.details input{
		width: 100%; 
		margin-bottom: 15px;
		}
		.details input[type="text"],input[type="number"]{
		margin: 0;
		border: none;
		border-bottom: 1px solid;
		background: transparent;
		outline: none;
		height: 22px;
		width:250px;
		color: silver;
		font-size: 20px;
		}
		.details input[type="text"]:hover,input[type="number"]:hover{
		height:32px;
		color:white;
		width:280px;
		border-bottom:2.4px solid;
		transition-duration:0.4s;
		}
		.details input[type="submit"]{
		margin: 0;
		border: 0;
		height: 38px;
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
		height:40px;
		margin:2px 2px;
		transition-duration: 0.2s;
		}
		.details p{
		color: white;
		font-size:18px;
		font-family: verdana;
		font-style:italic;
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
	padding: 10px 30px;
	text-align:center;
	cursor:pointer;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
	transition-duration:0.2s;
	}
</style>
</html>