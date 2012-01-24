import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class RegInsert extends HttpServlet
 {
   public void doPost(HttpServletRequest request,HttpServletResponse resp) throws ServletException,IOException
     {
           resp.setContentType("text/html");
           PrintWriter out=resp.getWriter();
         try
          {
             System.out.println("hello");
             String hname=request.getParameter("hname");
             System.out.println("hname is:"+hname);
             String cname=request.getParameter("cname");
             System.out.println("cname is:"+cname);
              int capacity=Integer.parseInt(request.getParameter("capacity"));
              int cno=Integer.parseInt(request.getParameter("no"));
              System.out.println("in servlet ...cno is:"+cno);

              String validity=request.getParameter("validity");
              int discount=Integer.parseInt(request.getParameter("discount"));
              int amount=Integer.parseInt(request.getParameter("amount"));
              System.out.println("after the amount");
              int regno=Integer.parseInt(request.getParameter("regno"));
              
               String designation=request.getParameter("designation");
               String sex=request.getParameter("sex");
               int phone=Integer.parseInt(request.getParameter("phone"));   
               String branch=request.getParameter("branch");
                String qualification=request.getParameter("qualification");  
                 String address=request.getParameter("address");
                  int pin=Integer.parseInt(request.getParameter("pin"));   
                 String state=request.getParameter("state");
                  java.sql.Date  jdate= java.sql.Date.valueOf(request.getParameter("jdate").trim());
                String district=request.getParameter("district");
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
                 PreparedStatement psmt=con.prepareStatement("insert into reg values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                  psmt.setInt(1,cno);
                  psmt.setString(2,cname);
                  psmt.setInt(3,capacity);
                  psmt.setString(4,validity);
	              psmt.setInt(5,discount);    
                  psmt.setInt(6,amount);                  
                  psmt.setInt(7,regno);
                  psmt.setString(8,hname);
                 psmt.setString(9,designation);
                 psmt.setString(10,sex);
                 psmt.setInt(11,phone);
                 psmt.setString(12,branch);
                 psmt.setString(13,qualification);
                 psmt.setString(14,address);
                psmt.setInt(15,pin);
                psmt.setString(16,state);
                psmt.setDate(17,jdate);
               psmt.setString(18,district);
               psmt.execute();
              out.println("<font color='green'>Successfully inserted details ....pls enter the further details</font>");
             

         }           
      catch(Exception e)
      {
         e.printStackTrace(); 
     }
}
}             
          
                
                  

