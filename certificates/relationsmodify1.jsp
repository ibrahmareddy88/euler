<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#336699">
<div>
 <form name="form1" method="post" action="./relations">
<%!int no;%>
<%
System.out.println("enter into the relationsmodify1.jsp"); 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
no=Integer.parseInt(request.getParameter("regno").trim());
ResultSet rs=stmt.executeQuery("select * from regdesc where regno="+no);
   %>

    
  <p align="center"><strong><font color="#CC9966" size="6">Relations Modify</font></strong></p>
    
  <table width="278" border="0" align="center" cellpadding="2" cellspacing="2">
    <%while(rs.next()){%>
    <tr> 
        <td width="96">Reg No</td>
        <td width="168"> <input name="regno" type="text" id="regno" value="<%=rs.getString(1)%>" readonly=""></td>
      </tr>
      <tr> 
        <td>Name</td>
        <td><input name="name" type="text" id="name" value="<%=rs.getString(2)%>"></td>
      </tr>
      <tr> 
        <td>Sex</td>
        <td><input name="sex" type="text" id="sex" value="<%=rs.getString(3)%>"></td>
      </tr>
      <tr> 
        <td>Age</td>
        <td><input name="age" type="text" id="age" value="<%=rs.getString(4)%>"></td>
      </tr>
      <tr> 
        <td>Relation</td>
        <td><input name="relation" type="text" id="relation" value="<%=rs.getString(5)%>"></td>
      </tr>
	  <%}%>
      <tr> 
        <td><center>
            <input type="submit" name="Submit" value="Submit">
          </center></td>
        <td><center>
            <input type="submit" name="Submit2" value="Submit">
          </center></td>
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
