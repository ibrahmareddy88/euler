<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
System.out.println("enter into the branchdata.jsp"); 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
PreparedStatement stmt=con.prepareStatement("insert into enquiry values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
String name=request.getParameter("name").trim();
int age=Integer.parseInt(request.getParameter("age").trim());
String sex=request.getParameter("sex").trim();
String district=request.getParameter("district").trim();
String desingation=request.getParameter("designation").trim();
String qualification=request.getParameter("qualification").trim();
String state=request.getParameter("state").trim();
String address=request.getParameter("address").trim();
int phone=Integer.parseInt(request.getParameter("phone").trim());
int size=Integer.parseInt(request.getParameter("size").trim());
String branch=request.getParameter("branch").trim();
java.sql.Date date=java.sql.Date.valueOf(request.getParameter("date").trim());
String email=request.getParameter("email").trim();
stmt.setString(1,name);
stmt.setInt(2,age);
stmt.setString(3,sex);
stmt.setString(4,district);
stmt.setString(5,desingation);
stmt.setString(6,qualification);
stmt.setString(7,state);
stmt.setString(8,address);
stmt.setInt(9,phone);
stmt.setInt(10,size);
stmt.setString(11,branch);
stmt.setDate(12,date);
stmt.setString(13,email);
stmt.execute();
out.println("<font color='blue'>successfully inserted the enquiry details<a href=\"home.htm\">BACK</a></font>");

%>
</body>
</html>
