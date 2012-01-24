<%@ page language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#666666">
<form name="form1" method="post" action="./branchwiseamount1.jsp">
<%!String name;%>
<%
System.out.println("enter into the cardwiseamount.jsp"); 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select distinct(branch) from reg");
%>

  <p>&nbsp;</p><table width="361" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr> 
      <td colspan="2"><div align="center">Branch Wise Amount</div></td>
    </tr>
    <tr> 
      <td width="174" height="52">Enter Branch Name</td>
      <td width="173">
	  <select name="name" id="name">
	  <%while(rs.next()){%>
	  <option><%=rs.getString(1)%></option>
	  <%}%>
        </select> </td></tr>
    <tr> 
      <td><input type="submit" name="Submit" value="Submit"></td>
      <td><input type="submit" name="Submit2" value="Submit"></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>
