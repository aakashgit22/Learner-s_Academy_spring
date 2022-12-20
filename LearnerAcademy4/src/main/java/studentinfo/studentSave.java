package studentinfo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/studentSave")
public class studentSave extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private final static String query = "insert into mystudentinfo(RollNumber,Name,Email,Dob,Gender) values(?,?,?,?,?)";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        //get PrintWriter
        PrintWriter pw = res.getWriter();
        //set content type
        res.setContentType("text/html");
        
        //get the values
        String RollNumber = req.getParameter("RollNumber");
        String Name = req.getParameter("Name");
        String Email = req.getParameter("Email");
        String Dob = req.getParameter("Dob");
        String Gender = req.getParameter("Gender");
        
        //load the JDBC driver
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch(Exception e) {
            e.printStackTrace();
        }
        //generate the connection
        try(Connection con = DriverManager.getConnection("jdbc:mysql:///studentinfo","root","password");
                PreparedStatement ps = con.prepareStatement(query);){
            //set the values
            ps.setString(1, RollNumber);
            ps.setString(2, Name);
            ps.setString(3, Email);
            ps.setString(4, Dob);
            ps.setString(5, Gender);
            
            //execute the query
            int count = ps.executeUpdate();
            pw.println("<div class='card' style='margin:auto;width:300px;margin-top:100px'>");
            if(count==1) {
                pw.println("<h2>Record Registered Successfully</h2>");
            }else {
                pw.println("<h2>Record Not Registered</h2>");
            }
        }catch(SQLException se) {
            pw.println("<h2>"+se.getMessage()+"</h2>");
            se.printStackTrace();
        }catch(Exception e) {
            e.printStackTrace();
        }
        pw.println("<a href='StudentInformation.jsp'><button>Home</button></a>");
        pw.println("</div>");
        //close the stram
        pw.close();
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doGet(req,res);
    }
}