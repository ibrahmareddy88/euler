<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
int cno=Integer.parseInt(request.getParameter("cno").trim());
String cname=request.getParameter("cname").trim();
int gcapacity=Integer.parseInt(request.getParameter("gcapacity").trim());
String validity=request.getParameter("validity").trim();
int discount=Integer.parseInt(request.getParameter("discount").trim());
int amount=Integer.parseInt(request.getParameter("amount").trim());
 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
PreparedStatement stmt=con.prepareStatement("update  card set cno=?,cname=?,capacity=?,validity=?,discount=?,amount=? where cno="+cno);
stmt.setInt(1,cno);
stmt.setString(2,cname);
stmt.setInt(3,gcapacity);
stmt.setString(4,validity);
stmt.setInt(5,discount);
stmt.setInt(6,amount);
stmt.execute();
out.println("<font color='green'>successfully update  the card details</font>");
%>

</body>
</html>
