<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
</head>
<body>
<%
 System.out.println("enter into the chairmansuccess.jsp"); 
 String username=request.getParameter("username").trim();
 String password=request.getParameter("password").trim();
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
 Statement stmt=con.createStatement();
 ResultSet rs=stmt.executeQuery("select * from admin where username='"+username+"' and password='"+password+"'");
 if(rs.next())
 {
   response.sendRedirect("./chairmanactivity.htm");
   }
   else
   {
     response.sendRedirect("./chairmanlogin.jsp");
	 }
	 %>

</body>
</html>
