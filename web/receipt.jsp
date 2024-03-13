<link rel="stylesheet" href="Css/Style.css">
<div id="receipt">

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>


<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;receipt of payment</h3>

<button><a href="dash_user.html">Back</a></button> 

<%
   
  
Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/dri_sch?autoReconnect=true & useSSL=false","root","Krishna@11");
             
    Statement stmt=con.createStatement();
    
  
             
    ResultSet res=stmt.executeQuery("SELECT * FROM user_data");
    while(res.next())
    {
   String id=res.getString("id"); 
   String full_name=res.getString("full_name");
   String mail_id=res.getString("mail_id");
   String mobile_no=res.getString("mobile_no");
   String user_name1=res.getString("user_name");
     String payment=res.getString("payment");
        %>
        
        <pre>
<div id="receipt1">
                  ID   :- <label ><%=res.getString(1)%></label><br>
        
           FULL NAME   :- <label ><%=res.getString(2)%></label><br>
         
             MAIL ID   :- <label ><%=res.getString(3)%></label><br>
         
       MOBILE NUMBER   :- <label ><%=res.getString(4)%></label><br>
           
           USER NAME   :- <label ><%=res.getString(7)%></label><br>
               
            PAID PAYMENT   :- <label ><%=res.getString(9)%></label><br>
       
<!--        <button><a href="">Edit</a></button>-->
</div>





















</pre>   
<%
    }
    %>
    </div>