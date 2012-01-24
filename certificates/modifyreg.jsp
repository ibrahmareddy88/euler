<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<%
System.out.println("enter into the modifyreg.jsp"); 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select regno from reg");
%>

<body bgcolor="#00CCFF">
<form name="form1" method="post" action="./modifyreg1.jsp">
  <p>&nbsp;</p>
  <p align="center"><font color="#FF0000" size="7"><strong>Modify Registration 
    </strong></font></p>
  <table width="213" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr> 
      <td width="124"><div align="center">Reg Number</div></td>
      <td width="75"> <select name="regno">
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
  <p align="center">If u want to modify relations please <a href="./relationmodify.jsp">click</a></p>
  <p>&nbsp;</p>
</form>
<p align="center">&nbsp;</p>
</body>
</html>
