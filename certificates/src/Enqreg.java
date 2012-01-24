import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Enqreg extends HttpServlet
 {
   public void doPost(HttpServletRequest request,HttpServletResponse resp) throws ServletException,IOException
     {
           resp.setContentType("text/html");
           PrintWriter out=resp.getWriter();
         try
          {
             System.out.println("hello");
             String ename=request.getParameter("name");
             System.out.println("name is:"+ename);  
             int age=Integer.parseInt(request.getParameter("age")); 
             String sex=request.getParameter("sex");
             String designation=request.getParameter("designation");
             String email=request.getParameter("email");
             int phone=Integer.parseInt(request.getParameter("phone"));   
             String branch=request.getParameter("branch");
             String qualification=request.getParameter("qualification");  
             String address=request.getParameter("address");
                
             String state=request.getParameter("state");
            // java.sql.Date  edate= java.sql.Date.valueOf(request.getParameter("edate").trim());
             String edate=request.getParameter("edate");
             String district=request.getParameter("district");
             Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
             Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
             PreparedStatement psmt=con.prepareStatement("insert into enquiry values(?,?,?,?,?,?,?,?,?,?,?,?)");
                 
             psmt.setString(1,ename);
             psmt.setInt(2,age);
             psmt.setString(3,sex);
             psmt.setString(4,district);
             psmt.setString(5,designation);
             psmt.setString(6,qualification);
             psmt.setString(7,state);
             psmt.setString(8,address);
             psmt.setInt(9,phone);
             psmt.setString(10,branch);
          //   psmt.setDate(11,edate);
             psmt.setString(11,edate);
             psmt.setString(12,email);   
                     
             psmt.execute();
             out.println("<font color='green'>Successfully inserted details </font>");
             

         }           
      catch(Exception e)
      {
         e.printStackTrace(); 
     }
}
}             
          
                
                  

