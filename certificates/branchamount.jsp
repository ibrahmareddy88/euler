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
System.out.println("enter into the branwiseamount.jsp"); 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select cno,cname,hname,regno,address,state from reg where branch='"+name+"'");
%>
<table width="757" border="2" align="center" cellpadding="2" cellspacing="2" bordercolor="#D4D0C8" bgcolor="#CC9966">
  <tr> 
    <td colspan="7"><div align="center">Branch Wise Details:<%=name%></div></td>
  </tr>
  <tr> 
    <th width="78">Cno</th>
    <th width="127">Cname</th>
    <th width="205">Name </th>
	    <th width="205">RegNo</th>
    <th width="135">Address</th>
    <th width="100">State</th>
 </tr>
  <%while(rs.next()){%>
  <tr> 
    <td width="78" height="35"><%=rs.getString(1)%></td>
    <td width="127"><center><%=rs.getString(2)%></center></td>
    <td width="205"><center><%=rs.getString(3)%></center></td>
    <td width="135"><center><%=rs.getString(4)%></center></td>
    <td width="100"><center><%=rs.getString(5)%></center></td>
	    <td width="100"><center><%=rs.getString(6)%></center></td>
  </tr>
  <%}%>
</table>
<p>&nbsp;</p>
</body>
</html>

