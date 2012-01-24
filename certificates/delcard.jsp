<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<p align="center"><font color="#FF0000" size="6"><strong>Deletion of Card</strong></font> 
</p>
<table  width="74%" height="59" border="2" align="center" cellpadding="1" cellspacing="2">
  <tr> 
    <tH width="8%" height="51">CNO</tH>
    <tH width="22%">CARD NAME</tH>
    <tH width="19%">CAPACITY</tH>
    <tH width="17%">VALIDITY</tH>
    <tH width="19%">DISCOUNT</tH>
    <tH width="15%">AMOUNT</tH>
  </tr>
  <%!int i;%>
<% 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from card");
while(rs.next()){
 i=rs.getInt(1);
%>
  <tr> 
    <td><a href="./delcard1.jsp?no=+<%=i%>+"><%=i%></a></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
    <td><%=rs.getString(5)%></td>
    <td><%=rs.getString(6)%></td>
  </tr>
  <%}%>
</table>
</body>
</html>
