<link rel="stylesheet" href="Css/Style.css">
<div id="user_profile">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>


<h3 id="user_profile2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Profile</h3>

<button><a href="Edit_user_profile.html">Edit</a></button>  <button><a href="dash_user.html">Back</a></button> 

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
   String vehicle_mode=res.getString("vehicle_mode");
   String city=res.getString("city");
   String user_name1=res.getString("user_name");
   String pass=res.getString("pass");
   String payment=res.getString("payment");
        %>
        <pre>
<div id="user_profile1">
                  ID   :- <label ><%=res.getString(1)%></label><br>
        
           FULL NAME   :- <label ><%=res.getString(2)%></label><br>
         
             MAIL ID   :- <label ><%=res.getString(3)%></label><br>
         
       MOBILE NUMBER   :- <label ><%=res.getString(4)%></label><br>
         
        VEHICLE MODE   :- <label ><%=res.getString(5)%></label><br>
         
                CITY   :- <label ><%=res.getString(6)%></label><br>
         
           USER NAME   :- <label ><%=res.getString(7)%></label><br>
         
            PASSWORD   :- <label ><%=res.getString(8)%></label><br>
         
             PAYMENT   :- <label ><%=res.getString(9)%></label><br>
       </div>



























<!--        






























<button><a href="">Edit</a></button>-->
        </pre>   
<%
    }
    %>
</div>