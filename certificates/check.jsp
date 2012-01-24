<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
String val=request.getParameter("amount1").trim();
if(val.equals("Card"))
 {
    response.sendRedirect("./cardwisemod.jsp");
	}
	else
	if(val.equals("District"))
	 {
	   response.sendRedirect("./districtwise.jsp");
	   }
	   else
	   {
	     response.sendRedirect("./branchwise.jsp");
		 }
		 %>
</body>
</html>
