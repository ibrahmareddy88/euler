<%@ page language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#006633">
<%!String name;%>
<%
System.out.println("enter into the cardwiseamount.jsp"); 
name=request.getParameter("name").trim();
System.out.println("name is:"+name);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select sum(amount) from reg where branch='"+name+"' group by '"+name+"'");
%>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="192" border="4" align="center" cellpadding="2" cellspacing="2" bordercolor="#CCCC00" bgcolor="#CC9999">
  <tr>
    <td width="184"><center>
        <%=name%> <font>Amount</font>
</center> </td>
  </tr>
  <%if(rs.next()){%>
  <tr>
    <td><center><%=rs.getString(1)%></center></td>
  </tr>
  <%}%>
  </table>
</body>
</html>
