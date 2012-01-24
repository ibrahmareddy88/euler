<%@ page language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#009999">
<form action="./enqregInsert" method="post"  name="form1">
<%! int regno;%>
<%!  String branch;%>
<%!Statement stmt;%>
<%!ResultSet rs;%>
<% 
System.out.println("enter into enqreg.jsp");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
stmt=con.createStatement();
rs=stmt.executeQuery("select branch from branchhead");
 branch=(String)session.getAttribute("BRANCH");
 System.out.println("session is:"+branch);
 
 
 System.out.println("hai");
%>

  <p align="center"><em><strong><font color="#FF0000" size="5"> </font></strong></em><font color="#FF0000" size="5"><strong><em>Enquiry Registration</em></strong></font></p>
  
  <table width="540" border="0" align="center" cellpadding="2" cellspacing="2">
  
         <tr> 
      <td width="104">Name</td>
      <td width="175"><input name="name" type="text" id="name" value="" ></td>
         <tr> 
      <td>Age</td>
      <td><input name="age" type="text" id="reg" value=""></td>
     </tr>
    <tr> 
      <td>Designation</td>
      <td><input name="designation" type="text" id="designation"></td>
      <td>Sex</td>
      <td><select name="sex" size="1" id="sex">
          <option value="Male">Male</option>
          <option value="Female">Female</option>
        </select></td>
    </tr>
    <tr> 
      <td>Phone</td>
      <td><input name="phone" type="text" id="phone"></td>
      <td>Branch</td>
      <td><select name="branch" size="1">
	  <%while(rs.next()){%>
	  <option><%=rs.getString(1)%></option>
	  <%}%>
	  
        </select></td>
    </tr>
    <tr> 
      <td>Qualification</td>
      <td><input name="qualification" type="text" id="qualification"></td>
      <td>Address </td>
      <td><input name="address" type="text" id="address"></td>
    </tr>
    <tr> 
      
      <td>State </td>
      <td><select name="state" size="1" id="state">
          <option value="Andhra Pradesh">AP</option>
          <option value="Uttar Pradesh">UP</option>
          <option value="Madhya Pradesh">MP</option>
          <option value="Delhi">Delhi</option>
          <option value="Tamil Nadu">TN</option>
          <option value="Karnataka">KA</option>
          <option value="Other">Other</option>
        </select></td>
    </tr>
    <tr> 
      <td>Edate(dd/mm/yyyy)</td>
      <td><input name="edate" type="text" id="edate"></td>
      <td>Email</td>
      <td><input name="email" type="text" id="email"></td>
     </tr>
      <tr>
      <td>District</td>
      <td>
	  <select name="district" id="district">
            <option value="Srikakulam">Srikakulam</option>
            <option value="Vizag">Vizag</option>
            <option value="Vijanagaram">Vijanagaram</option>
            <option value="WestGodhavari">WestGodhavari</option>
            <option value="EastGodhavari">EastGodhavari</option>
            <option value="Guntur">Guntur</option>
            <option value="Krishna">Krishna</option>
            <option value="Prakasam">Prakasam</option>
            <option value="Kammam">Kammam</option>
            <option value="Warangal">Warangal</option>
            <option value="Chiittor">Chiittor</option>
            <option value="Karnool">Karnool</option>
            <option value="kadapa">kadapa</option>
            <option value="Anathapuram">Anathapuram</option>
            <option value="Nellore">Nellore</option>
            <option value="Mahabubnagar">Mahabubnagar</option>
            <option value="Medak">Medak</option>
            <option value="RangaReddy">RangaReddy</option>
            <option value="Karimnagar">Karimnagar</option>
            <option value="Nalgonda">Nalgonda</option>
            <option value="Nizamabad">Nizamabad</option>
            <option value="Hyderabad">Hyderabad</option>
            <option value="Secunderabad">Secunderabad</option>
            <option value="Adilabad">Adilabad</option>
            <option value="other">other</option>
          </select></td>
      </tr>
    <tr>
      <td><input type="submit" name="Submit" value="Submit"></td>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit2" value="Reset"></td>
      <td>&nbsp;</td>
    </tr>
		
  </table>
  <p>&nbsp;</p>
  <p>&nbsp; </p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
<p align="center">&nbsp;</p>
</body>
</html>
