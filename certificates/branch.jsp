<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#006600">

 <%
System.out.println("enter into the relationsmodify1.jsp"); 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select branch,sum(amount),count(cname) from reg group by branch");
  %>
<table width="314" border="2" align="center" cellpadding="2" cellspacing="2" bordercolor="#CC66FF">
  <tr> 
    <th width="153" bgcolor="#FF66CC"><font color="#333333">Branch</font></th>
    <th width="80" bgcolor="#FF66CC">Amount</th>
    <th width="51" bgcolor="#FF66CC">Count</th>
  </tr>
  <%while(rs.next()){%>
  <tr> 
    <td><%=rs.getString(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
  </tr>
  <%}%>
</table>
<p>&nbsp;</p>
<p></p>
</body>
</html>

