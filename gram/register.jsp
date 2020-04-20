<html>
<head> <title> REGISTRATION FORM </title> </head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
 <%
 String userid=request.getParameter("Adhaar");
 String name=request.getParameter("name");
 String state=request.getParameter("state");
 String phone=request.getParameter("phone");
 String password=request.getParameter("password");

 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","naveen44");
 
 Statement st=conn.createStatement();

  String sql="select * from registration where userid=?";
  PreparedStatement ps;
  ps = conn.prepareStatement(sql);
  ps.setString(1,userid);

  ResultSet rs= ps.executeQuery();
  
	if(rs.next()){
	  String user=rs.getString("userid");
	  if(userid.equals(user)){
%>	    <script>
      			alert("This Adhaar Number is already registered");
      			window.location.href="registration.html";
    		</script>
<%    	}
	}
	else{
		int i=st.executeUpdate("insert into registration values('"+userid+"','"+name+"','"+state+"','"+phone+"','"+password+"')");
%>	    <script>
      		alert("REGISTRATION SUCCESSFULL");
      		window.location.href="homelogin.jsp";
    	</script>
<%
}
%>
</body>
</html>