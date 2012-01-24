<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
</head>

<body bgcolor="#CCCC99">
<%! int cno=0;%>
<% 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select max(cno) from card");
if(rs.next())
{
  cno=rs.getInt(1);
  }
  else
  cno=0;
  cno=cno+1;
  %>
<div align="center"> 
  <form name="form1" method="post" action="./datacard.jsp">
    <p><font color="#FF3399" size="5"><strong><em>Add a New Card</em></strong></font> 
    </p>
    <table width="392" border="0" cellspacing="2" cellpadding="2">
      <tr> 
        <td width="137"><font color="#000000"><strong>Card No</strong></font></td>
        <td width="63"><input name="cno" type="text" id="cno" value="<%=cno%>" readonly="true"></td>
        <td width="99">Card Name</td>
        <td width="66"><input name="cname" type="text" id="cname"></td>
      </tr>
      <tr> 
        <td>Group Capacity</td>
        <td><input name="gcapacity" type="text" id="gcapacity"></td>
        <td>Validity</td>
        <td><input name="validity" type="text" id="validity"></td>
      </tr>
      <tr> 
        <td height="44">Discount</td>
        <td><input name="discount" type="text" id="discount"></td>
        <td>Amount</td>
        <td><input name="amount" type="text" id="amount"></td>
      </tr>
	  <tr>
	  <td><center><input name="submit" type="submit" value="CLICK">
	  </center></td>
	  <td><center>
        <input name="reset" type="reset" value="RESET">
      </center></td>
	  </tr>
    </table>
    <p></p>
    <p>&nbsp;</p>
  </form>
  <p>&nbsp; </p>
</div>
</body>
</html>
