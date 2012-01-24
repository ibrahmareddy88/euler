<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
 System.out.println("----->Enter into the successmodifybranchhead.jsp-----");
 String name=request.getParameter("name").trim();
 String username=request.getParameter("username").trim();
 String password=request.getParameter("password").trim();
 int phone=Integer.parseInt(request.getParameter("phone").trim());
 java.sql.Date jdate=java.sql.Date.valueOf(request.getParameter("jdate").trim().toString());
 //String jdate=request.getParameter("jdate").trim();
 System.out.println("...............jdate........."+jdate);
 String mobile=request.getParameter("mobile").trim();
 String email=request.getParameter("email").trim();
 String address=request.getParameter("address").trim();
 String district=request.getParameter("district").trim();
 String city=request.getParameter("city").trim();
 int pin=Integer.parseInt(request.getParameter("pin").trim());
 String state=request.getParameter("state").trim();
 int bno=Integer.parseInt(request.getParameter("bno").trim());
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
 PreparedStatement  psmt=con.prepareStatement("update  branchhead set name=?,username=?,password=?,phone=?,jdate=?,mobile=?,email=?,address=?,branch=?,city=?,pin=?,state=? where bno="+bno);
 psmt.setString(1,name);
 psmt.setString(2,username);
 psmt.setString(3,password);
 psmt.setInt(4,phone);
 psmt.setDate(5,jdate);
 psmt.setString(6,mobile);
 psmt.setString(7,email);
 psmt.setString(8,address);
 psmt.setString(9,district);
 psmt.setString(10,city);
 psmt.setInt(11,pin);
 psmt.setString(12,state);
 psmt.execute();
 out.println("<font color='red'>Successfully modified</font>");
 %>



</body>
</html>
