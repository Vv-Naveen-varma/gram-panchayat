<html>
<head> <title> LOGIN FORM </title> </head>
  <body>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>

<%
  String userid=request.getParameter("Adhaar");
  String password=request.getParameter("password");
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","naveen44");

  Statement st=con.createStatement();
  
  String sql="select * from registration where userid=? and password=?";
  PreparedStatement ps;
  ps = con.prepareStatement(sql);
  ps.setString(1,userid);
  ps.setString(2,password);

  ResultSet rs= ps.executeQuery();
  
  if(rs.next()){
	  String user=rs.getString("userid");
	  String pass=rs.getString("password");
	  if(userid.equals(user) && password.equals(pass)){
      
      session.setAttribute("userid",user);
		  
      response.sendRedirect("menupage.jsp");
	  }
	}
	else{
%>
    <script>
      alert("Invalid Credentials Please Re-Enter");
      window.location.href="homelogin.jsp";
    </script>
<%
    /*response.sendRedirect("homelogin.html");*/
  }
%>
</body>
</html>