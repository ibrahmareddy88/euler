<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
System.out.println("enter the delcard1.jsp");
int cno=Integer.parseInt(request.getParameter("no").trim());
System.out.println("card number is"+cno);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
stmt.execute("delete from card where cno="+cno);
out.println("<font color='green'>"+"successfully delete card details and card id is..."+cno+"</font>");
%>
</body>
</html>
