<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FF99FF">
<form name="form1" method="post" action="./delhead.jsp">
<% 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select bno from branchhead");
%>
  <p align="center"><em><font color="#0000FF" size="5"><strong>Delete BranchHead 
    Details</strong></font></em></p>
  <table width="29%" border="0" align="center" cellpadding="1" cellspacing="2">
    <tr>
      <td width="70%"><font color="#FF0000"><em><strong>BranchHead No</strong></em></font></td>
	  
      <td width="30%"><select name="bno" size="1">
	  <% while(rs.next()){%>
	  <option><%=rs.getInt(1)%></option>
	  <%}%> 
        </select></td>
    </tr>
    <tr>
      <td><input type="submit" name="Submit" value="Submit"></td>
      <td><input type="submit" name="Submit2" value="Submit"></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>
