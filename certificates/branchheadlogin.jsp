<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#009966">
<form name="form1" method="post" action="./branchheadloginsuccess.jsp">
   <CENTER><marquee behavior="alternate">
    <table width="658">
      <tr>
        <td width="213" > <div align="center"><font color="#99FFFF" size="4" face="Monotype Corsiva">Welcome to Branch Head</font></div></td>
    </tr>
  </table></marquee><p>&nbsp;</p></CENTER>
  <table width="274" border="0" align="center" cellpadding="2" cellspacing="4">
    <tr> 
      <td width="84"  ><font color="#0000FF" face="Monotype Corsiva">User 
        Name</font></td>
      <td width="170"><font color="#FF9900"> 
        <input name="username" type="text" id="username">
        </font></td>
    </tr>
    <tr> 
      <td ><font color="#0000FF" face="Monotype Corsiva">Pass 
        Word</font></td>
      <td> <font color="#FF9900"> 
        <input name="password" type="password" id="password">
        </font></td>
    </tr>
    <tr> 
      <td><font color="#0000FF" face="Monotype Corsiva"><em>Branch </em></font></td>
      <td><input name="branch" type="text" id="branch"></td>
    </tr>
    <tr>
      <td><font color="#00FF66">
        <input name="Submit" type="submit" id="Submit" value="LOGIN">
        </font></td>
      <td><input type="reset" name="Submit2" value="RESET"></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>
