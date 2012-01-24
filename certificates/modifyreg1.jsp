<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<%! int no;%>
<body bgcolor="#00CCFF">
<form name="form1" method="post" action="./modifyreg2">
<%
System.out.println("enter into the modifyreg1.jsp"); 
no=Integer.parseInt(request.getParameter("regno").trim());
System.out.println("modify number is:"+no);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from reg where regno="+no);
%>


  <p>&nbsp;</p>
  <p align="center"><font color="#FF0000" size="5"><strong><em>Registration</em></strong></font></p>
  <table width="540" border="0" align="center" cellpadding="2" cellspacing="2">
  <%while(rs.next()){%>
    <tr> 
      <td width="104">Cno</td>
      <td width="175"><input name="no" type="text" id="no" value="<%=rs.getString(1)%>" readonly="" ></td>
      <td width="120">Cname</td>
      <td width="280"><input name="cname" type="text" id="cname" value="<%=rs.getString(2)%>" readonly=""></td>
    </tr>
    <tr> 
      <td height="27">Capacity</td>
      <td><input name="capacity" type="text" id="capacity" value="<%=rs.getString(3)%>" readonly=""></td>
      <td>Validity</td>
      <td><input name="validity" type="text" id="validity" value="<%=rs.getString(4)%>" readonly="" ></td>
    </tr>
    <tr> 
      <td>Discount</td>
      <td><input name="discount" type="text" id="discount" value="<%=rs.getString(5)%>" readonly="" ></td>
      <td>Amount</td>
      <td><input name="amount" type="text" id="amount" value="<%=rs.getString(6)%>" readonly=""></td>
    </tr>
    <tr> 
      <td>Reg No</td>
      <td><input name="regno" type="text" id="regno" value="<%=rs.getString(7)%>" readonly=""></td>
      <td>Holder Name</td>
      <td><input name="hname" type="text" id="hname" value="<%=rs.getString(8)%>"></td>
    </tr>
    <tr> 
      <td>Designation</td>
      <td><input name="designation" type="text" id="designation2" value="<%=rs.getString(9)%>"></td>
      <td>Sex</td>
      <td><input name="sex" type="text" id="sex" value="<%=rs.getString(10)%>"></td>
    </tr>
    <tr> 
      <td>Phone</td>
      <td><input name="phone" type="text" id="phone" value="<%=rs.getString(11)%>"></td>
      <td>Branch</td>
      <td><input name="branch" type="text" id="branch" value="<%=rs.getString(12)%>"   ></td>
    </tr>
    <tr> 
      <td>Qualification</td>
      <td><input name="qualification" type="text" id="qualification" value="<%=rs.getString(13)%>"></td>
      <td>Address </td>
      <td><input name="address" type="text" id="address" value="<%=rs.getString(14)%>"></td>
    </tr>
    <tr> 
      <td>Pin</td>
      <td><input name="pin" type="text" id="pin" value="<%=rs.getString(15)%>"></td>
      <td>State </td>
      <td><input name="state" type="text" id="state" value="<%=rs.getString(16)%>"></td>
    </tr>
    <tr> 
      <td>jdate</td>
      <td><input name="jdate" type="text" id="jdate" value="<%=rs.getDate(17)%>"></td>
      <td>District</td>
      <td> <input name="district" type="text" id="district" value="<%=rs.getString(18)%>"></td>
    </tr>
	<%}%>
    <tr> 
      <td><input type="submit" name="Submit" value="Submit"></td>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit2" value="Reset"></td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <p>&nbsp;</p>
  </form>
</body>
</html>
