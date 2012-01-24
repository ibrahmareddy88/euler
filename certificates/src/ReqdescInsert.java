import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class ReqdescInsert extends HttpServlet
 {
   public void doPost(HttpServletRequest request,HttpServletResponse resp) throws ServletException,IOException
     {
           resp.setContentType("text/html");
           PrintWriter out=resp.getWriter();
         try
          {
            System.out.println("this is relations modify servlet");
             int regno=Integer.parseInt(request.getParameter("regno").trim());
             String regname=request.getParameter("name").trim();
             String sex =request.getParameter("sex").trim();
              int age=Integer.parseInt(request.getParameter("age").trim());
               String relation=request.getParameter("relation").trim();
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con=DriverManager.getConnection("jdbc:odbc:smartcard","smartcard","smartcard");
                 PreparedStatement psmt=con.prepareStatement("insert into regdesc values(?,?,?,?,?)");
                  psmt.setInt(1,regno);
                  psmt.setString(2,regname);
                  psmt.setString(3,sex);
                  psmt.setInt(4,age);
                   psmt.setString(5,relation);
                  psmt.execute();
                  out.println("<font color='green'>Successfully inserted ur relation details ....if u enter the another relation </font>");
                  out.println("<font color='green'>pls</font> <a href='./reqdesc.jsp'><font color='green'>click</font></a>");
                }
catch(Exception e)
 {
    e.printStackTrace();
}
}
}
                   
	