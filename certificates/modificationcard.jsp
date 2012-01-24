<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
</head>
<body>
<p>&nbsp;</p>
<form name="form1" method="post" action="./modificationcard1.jsp">
  <p align="center"> 
    <%!int no;%>
 
	<%
System.out.println("enter into the modification.jsp");
 no=Integer.parseInt(request.getParameter("no").trim());
System.out.println("number is"+no);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from card where cno="+no);
System.out.println("result set is"+rs);
while(rs.next()){
%>
  </p>
  <p align="center"><strong><em><font color="#FF33FF">MODIFICATION OF CARD</font></em></strong></p>
  <table width="244" border="0" align="center" cellpadding="2" cellspacing="2">
  
    <tr> 
      <td width="103">CNO</td>
      <td width="89"> <input name="cno" type="text" value="<%=rs.getString(1)%>" readonly="true"></td>
    </tr>
    <tr> 
      <td>CNAME</td>
      <td><input name="cname" type="text" value="<%=rs.getString(2)%>"></td>
    </tr>
    <tr> 
      <td>CAPACITY</td>
      <td><input name="gcapacity" type="text" value="<%=rs.getString(3)%>"></td>
    </tr>
    <tr> 
      <td>VALIDITY</td>
      <td><input name="validity" type="text" value="<%=rs.getString(4)%>"></td>
    </tr>
    <tr> 
      <td>DISCOUNT</td>
      <td><input name="discount" type="text" value="<%=rs.getString(5)%>"></td>
    </tr>
    <tr> 
      <td>AMOUNT</td>
      <td><input name="amount" type="text" value="<%=rs.getString(6)%>"></td>
    </tr>
    <tr> 
      <td><Center><input type="submit" name="Submit" value="CLICK"></Center></td>
      <td><Center><input type="reset" name="Submit2" value="RESET"></Center></td>
    </tr>
	<%}%>
  </table>
  
  <p>&nbsp;</p>
</form>
<p>&nbsp;</p>
</body>
</html>
