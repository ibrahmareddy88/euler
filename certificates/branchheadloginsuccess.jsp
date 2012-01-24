<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
System.out.println("enter into the branchhead.jsp"); 
 String username=request.getParameter("username").trim();
 String password=request.getParameter("password").trim();
 String branch=request.getParameter("branch").trim();
 session.setAttribute("BRANCH",branch);
 System.out.println("username is"+username);
 System.out.println("password is"+password);
 
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
 Statement stmt=con.createStatement();
 ResultSet rs=stmt.executeQuery("select * from branchhead where username='"+username+"' and password='"+password+"' and branch='"+branch+"'");
 if(rs.next())
 {
   response.sendRedirect("./branchheadactivity.htm");
   }
   else
   {
     response.sendRedirect("./branchheadlogin.jsp");
	 }
	 %>



</body>
</html>
