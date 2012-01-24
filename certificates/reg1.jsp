<%@ page language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#009999">
<form action="./regInsert" method="post"  name="form1">
<%! int regno;%>
<%!  String branch,mno,cname,capacity,validity,discount,amount;%>
<%!Statement stmt,stmt1,stmt2;%>
<%!ResultSet rs,rs1,rs2;%>
<% 
System.out.println("enter into reg1.jsp");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
stmt=con.createStatement();
stmt1=con.createStatement();
stmt2=con.createStatement();
rs1=stmt1.executeQuery("select max(regno) from reg");
System.out.println("resultset rs1 is ..."+rs1);
rs2=stmt2.executeQuery("select branch from branchhead");
if(rs1.next())
{
 regno=rs1.getInt(1);
 System.out.println("regno number is:"+regno);
 }
 regno=regno+1;
 System.out.println("regno number is:"+regno);
int cno=Integer.parseInt(request.getParameter("no").trim());
System.out.println("card number is:"+cno);
 branch=(String)session.getAttribute("BRANCH");
 System.out.println("session is:"+branch);
 rs=stmt.executeQuery("select * from card where cno="+cno);
 System.out.println("resulSet is....rs"+rs);
if(rs.next())
{
mno=rs.getString(1);
System.out.println("mno is"+mno);
cname=rs.getString(2);
System.out.println("cname is ..."+cname);
capacity=rs.getString(3);
System.out.println("capacity is..."+capacity);
validity=rs.getString(4);
System.out.println("validity is ..."+validity);
discount=rs.getString(5);
System.out.println("discount is..."+discount);
amount=rs.getString(6);
System.out.println("amount is"+amount);
}
 
 System.out.println("hai");
%>

  <p align="center"><em><strong><font color="#FF0000" size="5"> </font></strong></em><font color="#FF0000" size="5"><strong><em>Registration</em></strong></font></p>
  
  <table width="540" border="0" align="center" cellpadding="2" cellspacing="2">
  
         <tr> 
      <td width="104">Cno</td>
      <td width="175"><input name="no" type="text" id="no" value="<%=mno%>" ></td>
      <td width="120">Cname</td>
      <td width="280"><input name="cname" type="text" id="cname" value="<%=cname%>" ></td>
    </tr>
    <tr> 
      <td height="27">Capacity</td>
      <td><input name="capacity" type="text" id="capacity" value="<%=capacity%>" ></td>
      <td>Validity</td>
      <td><input name="validity" type="text" id="validity" value="<%=validity%>" ></td>
    </tr>
    <tr> 
      <td>Discount</td>
      <td><input name="discount" type="text" id="discount" value="<%=discount%>" ></td>
      <td>Amount</td>
      <td><input name="amount" type="text" id="amount" value="<%=amount%>" ></td>
    </tr>

   <tr> 
      <td>Reg No</td>
      <td><input name="regno" type="text" id="regno" value="<%=regno%>"></td>
      <td>Holder Name</td>
      <td><input name="hname" type="text" id="hname" value=""></td>
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
	  <%while(rs2.next()){%>
	  <option><%=rs2.getString(1)%></option>
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
      <td>Pin</td>
      <td><input name="pin" type="text" id="pin"></td>
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
      <td>jdate(yyyy-mm-dd))</td>
      <td><input name="jdate" type="text" id="jdate"></td>
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
