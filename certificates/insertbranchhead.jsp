<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#00FFFF">
<div align="center"> 
  <form name="form1" method="post" action="branchheaddata.jsp">
    <p>New Branch Head </p>
    <table width="520" border="0" cellspacing="2" cellpadding="1">
      <tr> 
        <td width="99">Name</td>
        <td width="151"><input name="name" type="text" id="name"></td>
        <td width="85">User Name</td>
        <td width="167"><input name="username" type="text" id="username"></td>
      </tr>
      <tr> 
        <td>Pass Word</td>
        <td><input name="password" type="password" id="password2"></td>
        <td>Phone</td>
        <td><input name="phone" type="text" id="phone2"></td>
      </tr>
      <tr> 
	<td>Date yy-mm-dd</td>
<td><input name="jdate" type="text" id="jdate"></td>
        <td>Mobile</td>
        <td><input name="mobile" type="text" id="Mobile2"></td>
      </tr>
      <tr> 
        <td height="25">Email</td>
        <td><input name="email" type="text" id="email3"></td>
        <td>Address</td>
        <td><input name="address" type="text" id="address2"></td>
      </tr>
      <tr> 
        <td>Branch</td>
        <td><input name="district" type="text" id="district"></td>
        <td>City</td>
        <td><input name="city" type="text" id="district6"></td>
      </tr>
      <tr> 
        <td>Pin code</td>
        <td><input name="pin" type="text" id="pin2"></td>
        <td>State</td>
        <td><input name="state" type="text" id="district7"></td>
      </tr>
      <tr> 
        <td height="26">
<center><input type="submit" name="Submit" value="Submit"></center></td>
       <td colspan="3"> <center>
            <input type="reset" name="Submit2" value="Reset">
          </center></td>
      </tr>
    </table>
    <p>&nbsp;</p>
  </form>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>
</body>
</html>
