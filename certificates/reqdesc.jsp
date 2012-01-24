<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#CC9999">
<%!int no;%> 
<%
System.out.println("enter into the branchdata.jsp"); 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select regno from reg");
   %>

<div align="center"> 
  <form name="form1" method="post" action="./regdescInsert">
    <p><strong><font color="#FF0000" size="6">Relation Table </font></strong></p>
    <table width="278" border="0" cellspacing="2" cellpadding="2">
      <tr> 
        <td width="96">Reg No</td>
        <td width="168">
		<select name="regno">
		<% while(rs.next()){%>
		<option><%=rs.getString(1)%></option>
		<%}%>
          </select></td>
      </tr>
      <tr> 
        <td>Name</td>
        <td><input name="name" type="text" id="name"></td>
      </tr>
      <tr> 
        <td>Sex</td>
        <td><select name="sex" size="1" id="sex">
            <option value="Male">Male</option>
            <option value="Female">Female</option>
          </select></td>
      </tr>
      <tr> 
        <td>Age</td>
        <td><input name="age" type="text" id="age"></td>
      </tr>
      <tr> 
        <td>Relation</td>
        <td><input name="relation" type="text" id="relation"></td>
      </tr>
      <tr>
        <td><center><input type="submit" name="Submit" value="Submit"></center></td>
        <td><center><input type="submit" name="Submit2" value="Submit"></center></td>
      </tr>
    </table>
    <p><strong><font size="6"></font></strong></p>
<p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </form>
  <p>&nbsp;</p>
  </div>
</body>
</html>
