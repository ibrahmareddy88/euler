<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFCCCC">

<%


 System.out.println("----->Enter into the modifybranch.jsp-----");
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
 Statement stmt=con.createStatement();
 int bno=Integer.parseInt(request.getParameter("bno").trim());
 System.out.println("branch head number is ="+bno);
 ResultSet rs=stmt.executeQuery("select * from branchhead where bno="+bno);%>
<form name="form1" method="post" action="successmodifybranchhead.jsp">
  <p>&nbsp;</p>
  <p align="center">New Branch Head </p>
  <div align="left"> 
    <table width="520" border="0" align="center" cellpadding="1" cellspacing="2">
      <%if(rs.next()){%>
      <tr> 
        <td width="99">Name</td>
        <td width="151"><input name="name" type="text" id="name2" value="<%=rs.getString(1)%>"></td>
        <td width="85">User Name</td>
        <td width="167"><input name="username" type="text" id="username2" value="<%=rs.getString(2)%>"></td>
      </tr>
      <tr> 
        <td>Pass Word</td>
        <td><input name="password" type="text" id="password" value="<%=rs.getString(3)%>"></td>
        <td>Phone</td>
        <td><input name="phone" type="text" id="phone" value="<%=rs.getString(4)%>"></td>
      </tr>
      <tr> 
        <td>Date</td>
        <td><input name="jdate" type="text" id="jdate2" value="<%=rs.getDate(5)%>"></td>
        <td>Mobile</td>
        <td><input name="mobile" type="text" id="mobile" value="<%=rs.getString(6)%>"></td>
      </tr>
      <tr> 
        <td height="25">Email</td>
        <td><input name="email" type="text" id="email" value="<%=rs.getString(7)%>"></td>
        <td>Address</td>
        <td><input name="address" type="text" id="address" value="<%=rs.getString(8)%>"></td>
      </tr>
      <tr> 
        <td>Branch</td>
        <td><input name="district" type="text" id="district" value="<%=rs.getString(9)%>"></td> 
        <td>City</td>
        <td><input name="city" type="text" id="city" value="<%=rs.getString(10)%>"></td>
      </tr>
      <tr> 
        <td>Pin code</td>
        <td><input name="pin" type="text" id="pin" value="<%=rs.getString(11)%>"></td>
        <td>State</td>
        <td><input name="state" type="text" id="state" value="<%=rs.getString(12)%>"></td>
      </tr>
      <tr> 
        <td height="26"> <div align="left">Branch head no</div></td>
        <td colspan="3"> <input type="text" name="bno" value="<%=rs.getString(13)%>" readonly="true">
          </td>
      </tr>
      <tr> 
        <td height="26"><center><input type="submit" name="Submit" value="Submit" ></center></td>
        <td colspan="3"><center><input type="reset" name="Submit2" value="Reset" ></center></td>
      </tr>
	  <%}%>
    </table>
  </div>
<p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
<p align="center">&nbsp;</p>
</body>
</html>
