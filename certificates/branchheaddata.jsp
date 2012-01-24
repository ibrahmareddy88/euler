<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%! int no=0;%>
<%
System.out.println("enter into the Branchhead.jsp"); 
 String name=request.getParameter("name").trim();
 String username=request.getParameter("username").trim();
 String password=request.getParameter("password").trim();
 int phone=Integer.parseInt(request.getParameter("phone").trim());
 java.sql.Date  jdate=java.sql.Date.valueOf(request.getParameter("jdate").trim());
 String mobile=request.getParameter("mobile").trim();
 String email=request.getParameter("email").trim();
 String address=request.getParameter("address").trim();
 String district=request.getParameter("district").trim();
 String city=request.getParameter("city").trim();
 int pin=Integer.parseInt(request.getParameter("pin").trim());
 String state=request.getParameter("state").trim();
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
 Statement stmt=con.createStatement();
 ResultSet rs=stmt.executeQuery("select max(bno) from branchhead");
 if(rs.next())
 {
    no=rs.getInt(1);
   }
   else
   {
    no=0;
	}
	no++;
	  
 PreparedStatement psmt=con.prepareStatement("insert into branchhead values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
 psmt.setInt(13,no);
 psmt.execute();
 out.println("<font color='red'>Successfully inserted  and id is"+no+"</font>");
 //response.setHeader("refresh","2;url=./chairmanactivity.htm" target="blank");
 %>
 
</body>
</html>
