/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
@WebServlet(urlPatterns = {"/driv"})
public class driv extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
             PrintWriter out= response.getWriter();
             String city=request.getParameter("city");
             String vehicle_mode=request.getParameter("vehicle_mode");
            // String user_name=request.getParameter("mobile_no");
             String user_name=request.getParameter("user_name");
             //String pass=request.getParameter("pass");
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/dri_sch?autoReconnect=true & useSSL=false","root","Krishna@11");
             
             //PreparedStatement pstm=con.prepareStatement("insert into admin_data (id,full_name,mail_id,mobile_no,user_name,pass) values(?,?,?,?,?,?)");
             PreparedStatement pstm=con.prepareStatement("UPDATE user_data SET city=?,vehicle_mode=? WHERE user_name=?");
             pstm.setString(1,city);
             pstm.setString(2,vehicle_mode);
            // pstm.setString(3,mobile_no);
             pstm.setString(3,user_name);
            // pstm.setString(5,pass);
             int r=pstm.executeUpdate();
             out.println("<html><body>");
             out.println("<form>");
             out.println(" <link rel=\"StyleSheet\" type=\"text/css\" href=\"insertionnew.css\">");
             if(r>0)
             {
                 out.println("succesfully selected city and mode");
                 response.sendRedirect("payment.html");
             }
             else
             {  
                 out.println(" Error pls try again ");
             }
             out.println("</html></body>");
             out.println("</form>");
             con.close();
         } catch (ClassNotFoundException ex) {
             Logger.getLogger(con_mysql.class.getName()).log(Level.SEVERE, null, ex);
         } catch (SQLException ex) {
             Logger.getLogger(con_mysql.class.getName()).log(Level.SEVERE, null, ex);
         }
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
