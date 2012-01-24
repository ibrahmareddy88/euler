<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#336699">
<%! String name;%>
<%


name=request.getParameter("name").trim();

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");

Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select  *from enquiry where name="+"name");

%>
<table width="757" border="2" align="center" cellpadding="2" cellspacing="2" bordercolor="#D4D0C8" bgcolor="#CC9966">
  <tr> 
    <td colspan="7"><div align="center">Enquiry list</div></td>
  </tr>
  <tr> 
    <th width="78">Name</th>
    <th width="127">Age</th>
    <th width="205">Sex </th>
    <th width="135">Address</th>
    <th width="100">Phone</th>
    <th width="74">Email</th>
  
  </tr>
  <%while(rs.next()){%>
  <tr> 
    <td width="78" height="35"><%=rs.getString(1)%></td>
    <td width="127"><center><%=rs.getString(2)%></center></td>
    <td width="205"><center><%=rs.getString(3)%></center></td>
    <td width="135"><center><%=rs.getString(8)%></center></td>
    <td width="100"><center><%=rs.getString(9)%></center></td>
    <td width="74"><center><%=rs.getString(13)%></center></td>
  </tr>
  <%}%>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="767" border="2" align="center" cellpadding="2" cellspacing="2" bordercolor="#D4D0C8" bgcolor="#CCCC99">
 
  </table>
<p>&nbsp;</p>
</body>
</html>
