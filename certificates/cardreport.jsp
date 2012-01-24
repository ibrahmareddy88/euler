<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFCCCC">

  
<p align="center"><font color="#FF0000" size="7"><strong>Card Report</strong></font></p>
  
<table  width="76%" height="59" border="2" align="center" cellpadding="1" cellspacing="2" bordercolor="#9966FF" >
  <tr> 
      
    <tH width="10%" height="51" bgcolor="#33FF66">CNO</tH>
      
    <tH width="20%" bgcolor="#33FF66">CARD NAME</tH>
      
    <tH width="19%" bgcolor="#33FF66">CAPACITY</tH>
      
    <tH width="17%" bgcolor="#33FF66">VALIDITY</tH>
      
    <tH width="19%" bgcolor="#33FF66">DISCOUNT</tH>
      
    <tH width="15%" bgcolor="#33FF66">AMOUNT</tH>
   </tr>
<%!int i;%>
<% 
System.out.println("enter the reg.jsp");
String branch=(String)session.getAttribute("BRANCH");
System.out.println("session is:"+branch);
//session.setAttribute("BRANCH1",branch);

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from card");
while(rs.next()){
 i=rs.getInt(1);
%>
<tr>
<td><a><div align="center"><%=i%></div></a></td>
    <td><%=rs.getString(2)%> <div align="center"></div>
      <div align="center"></div>
      <div align="center"></div>
      <div align="center"></div></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
</tr>
<%}%>
</table>
<div align="center"></div>
</body>
</html>
