
<link rel="stylesheet" href="Css/Style.css">
<div id="dash2">

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

    
    
    
    
    

<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Admin Profile </h4>
<%
    
  
Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/dri_sch?autoReconnect=true & useSSL=false","root","Krishna@11");
             
    Statement stmt=con.createStatement();
    ResultSet res=stmt.executeQuery("select * from admin_data");
   
  
    while(res.next())
    {
   String id=res.getString("id"); 
   String full_name=res.getString("full_name");
   String mail_id=res.getString("mail_id");
   String mobile_no=res.getString("mobile_no");
   String user_name=res.getString("user_name");
   String pass=res.getString("pass");
        %>
         <pre>
<div id="dash4">
                  ID   :- <label ><%=res.getString(1)%></label><br>
        
           FULL NAME   :- <label ><%=res.getString(2)%></label><br>
         
             MAIL ID   :- <label ><%=res.getString(3)%></label><br>
         
       MOBILE NUMBER   :- <label ><%=res.getString(4)%></label><br>
         
           USER NAME   :- <label ><%=res.getString(5)%></label><br>
         
            PASSWORD   :- <label ><%=res.getString(6)%></label><br>
         </div>
            </pre>
        
        
<%
    }
    %>
    <pre> 
    <button><a href="Edit_admin_profile.html">Edit</a></button>          <button><a href="dash_admin.html">Back</a></button>























    </pre>
    </div>