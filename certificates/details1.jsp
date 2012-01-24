<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#336699">
<%! int no;%>
<%

System.out.println("enter into the branchdata1.jsp"); 
no=Integer.parseInt(request.getParameter("no").trim());
System.out.println("number is:"+no);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
Statement stmt1=con.createStatement();
ResultSet rs=stmt.executeQuery("select cno,cname,hname,branch,address,state from reg where regno="+no);
ResultSet rs1=stmt1.executeQuery("select name1,sex1,age1,relation from regdesc where regno="+no);
%>
<table width="757" border="2" align="center" cellpadding="2" cellspacing="2" bordercolor="#D4D0C8" bgcolor="#CC9966">
  <tr> 
    <td colspan="7"><div align="center">Card Holder Details Number is:<%=no%></div></td>
  </tr>
  <tr> 
    <th width="78">Cno</th>
    <th width="127">Cname</th>
    <th width="205">Name </th>
    <th width="135">Branch</th>
    <th width="100">Address</th>
    <th width="74">State</th>
  
  </tr>
  <%while(rs.next()){%>
  <tr> 
    <td width="78" height="35"><%=rs.getString(1)%></td>
    <td width="127"><center><%=rs.getString(2)%></center></td>
    <td width="205"><center><%=rs.getString(3)%></center></td>
    <td width="135"><center><%=rs.getString(4)%></center></td>
    <td width="100"><center><%=rs.getString(5)%></center></td>
    <td width="74"><center><%=rs.getString(6)%></center></td>
  </tr>
  <%}%>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="767" border="2" align="center" cellpadding="2" cellspacing="2" bordercolor="#D4D0C8" bgcolor="#CCCC99">
  <tr> 
    <td colspan="5"><div align="center">Card Holder Relations</div></td>
  </tr>
  <tr> 
    <th width="191"><div align="center">Name</div></th>
    <th width="67"><div align="center">Sex</div></th>
    <th width="193"><div align="center">Age</div></th>
    <th width="290"><div align="center">Relation</div></th>
  </tr>
  <%while(rs1.next()){%>
  <tr> 
    <td width="191" height="35"><center><%=rs1.getString(1)%></center></td>
    <td width="67"><center><%=rs1.getString(2)%></center></td>
    <td width="193"><center><%=rs1.getString(3)%></center></td>
    <td width="290"><center><%=rs1.getString(4)%></center></td>
  </tr>
  <%}%>
</table>
<p>&nbsp;</p>
</body>
</html>
