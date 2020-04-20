<!doctype html>
<html>
	<head>
		<title> HOME LOGIN  </title>
		<link rel="shortcut icon" type="image/png" href="images/titlelogo.jpg">
		<!--	<link rel="stylesheet" href="homelogin.css">	-->
	</head>
	<body>
	<div class="loginbox">
		<img src="images/person.png" class="imglog">
		<h1> LOGIN </h1>
		<p> Adhaar Number </p>
		<form action="loginvalid.jsp" method="post">
		<input type="number" placeholder="enter Adhaar Number" name="Adhaar" required="required">
		<p> Password </p>
		<input type="password" placeholder="enter password" name="password" required="required"> <br><br>
		<input type="submit" class="button" value="Log In">
		</form>
		<a href="registration.html"><input type="submit" value="Register"></a>
	</div>
	</body>
		<style type="text/css">
		body{
		margin:0;
		padding:0;
		background-image:url(images/dig.jpg);
		background-repeat:no-repeat;
		background-position:;
		background-size:750px 660px;
		}
		.loginbox{
		width: 315px;
		height: 400px;
		background:silver;
		color:black;
		top: 45%;
		left: 75%;
		position: absolute;
		transform: translate(-50%,-50%);
		box-sizing: border-box;
		padding: 40px 30px;
		border-radius:10px;
		}
		.imglog{
		width:80px;
		height: 80px;
		border-radius: 50%;
		position: absolute;
		top: -50px;
		left:117px;
		}
		.loginbox h1{
		margin:0;
		padding: 0 0 0px;
		text-align: center;
		font-size: 22px;
		}
		.loginbox input{
		width: 100%; 
		margin-bottom: 15px;
		}
		.loginbox input[type="text"],input[type="password"],input[type="number"]{
		margin: 0;
		border: none;
		border-bottom: 1px solid;
		background: transparent;
		outline: none;
		height: 20px;
		color: black;
		font-size: 18px;
		}
		.loginbox input[type="text"]:hover,input[type="password"]:hover,input[type="number"]:hover{
		height:35px;
		border-bottom:2.4px solid;
		transition-duration:0.2s;
		}
		.loginbox input[type="submit"]{
		margin: 5px;
		border: 0;
		height: 45px;
		background: #fb2525;
		color: #fff;
		font-size: 17px;
		font-style:italic;
		border-radius: 20px;
		}
		.loginbox input[type="submit"]:hover{
		border:0;
		background-color:orange;
		color:black;
		padding: 10px 5px;
		text-align:center;
		cursor:pointer;
		box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
		text-decoration: none;
		font-size: 20px;
		margin: 4px 2px;
		transition-duration: 0.3s;
		}
		.loginbox p{
		color:black;
		font-size:20px;
		font-family: verdana;
		font-style:italic;
		}
	</head>
</html>