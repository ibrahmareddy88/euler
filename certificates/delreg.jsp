<%@ page  language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#336633">
<%
System.out.println("enter into the branchdata.jsp"); 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select regno from reg");
 %>

<p align="center">&nbsp; </p>
<form name="form1" method="post" action="./delsuccess.jsp">
  <p align="center"><strong><font color="#FF0000" size="7"> </font></strong><font color="#FF0000" size="7"><strong> 
    Delete Registration </strong></font></p>
  <table width="213" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr> 
      <td width="124"><div align="center">Reg Number</div></td>
      <td width="75">
	  <select name="regno">
		<% while(rs.next()){%>
		<option><%=rs.getString(1)%></option>
		<%}%>
          </select></td>
      </tr>
    <tr> 
      <td><input type="submit" name="Submit" value="Submit"></td>
      <td><input type="reset" name="Submit2" value="Reset"></td>
    </tr>
  </table>
  <p align="center"><strong><font color="#FF0000" size="7"></font></strong></p>
  <p>&nbsp;</p>
<p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>
