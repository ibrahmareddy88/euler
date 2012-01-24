<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
System.out.println("enter into the checknumber1.jsp");

 //java.sql.Date  edate= java.sql.Date.valueOf(request.getParameter("edate").trim());
String  edate= request.getParameter("edate".trim());
System.out.println("_________________"+edate);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
 System.out.println("ok1");

ResultSet rs=stmt.executeQuery("select * from enquiry where edate='"+edate+"'");

System.out.println("****************************************");%>
 

  <table  width="757" border="2" align="center" cellpadding="2" cellspacing="2" bordercolor="#D4D0C8" bgcolor="#CC9966">
  <tr> 
    <td colspan="7"><div align="center">Enquiry  Details </div></td>
  </tr>
  <tr> 
    <th width="78">Name</th>
    <th width="127">Age</th>
    <th width="205">Sex </th>
    <th width="135">dist</th>
    <th width="100">Designation</th>
    <th width="74">Qualification</th>
     <th width="78">State</th>
    <th width="127">Address</th>
    <th width="205">phone </th>
    <th width="135">Branch</th>
    
    <th width="135">email</th>
  
  </tr>
  <%while(rs.next()){ %>
  <tr> 
 
    <td width="78" height="35"><%=rs.getString(1)%></td>
    <td width="127"><center><%=rs.getInt(2)%></center></td>
    <td width="205"><center><%=rs.getString(3)%></center></td>
    <td width="135"><center><%=rs.getString(4)%></center></td>
    <td width="100"><center><%=rs.getString(5)%></center></td>
    <td width="74"><center><%=rs.getString(6)%></center></td>
    <td width="78"><center><%=rs.getString(7)%></center></td>
    <td width="127"><center><%=rs.getString(8)%></center></td>
    <td width="205"><center><%=rs.getInt(9)%></center></td>
    <td width="135"><center><%=rs.getString(10)%></center></td>
  
    <td width="100"><center><%=rs.getString(12)%></center></td>
  </tr>
  <%}%>
</table>
</body>
</html>
