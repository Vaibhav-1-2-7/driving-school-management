<link rel="stylesheet" href="Css/Style.css">
<div id="manage_user">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>


<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manage User</h3>
<table border="1">
<tr>
    <th>id</th>
    <th>full_name</th>
    <th>mail_id</th>
    <th>mobile_no</th>
    <th>vehicle_mode</th>
    <th>city</th>
     <th>user_name</th>
     <th>pass</th>
     <th>payment</th>
<!--    <th colspan="2">Action</th>-->
</tr>
<%
    
  
Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/dri_sch?autoReconnect=true & useSSL=false","root","Krishna@11");
             
    Statement stmt=con.createStatement();
    ResultSet res=stmt.executeQuery("select * from user_data");
   
  
    while(res.next())
    {
   String id=res.getString("id"); 
   String full_name=res.getString("full_name");
   String mail_id=res.getString("mail_id");
   String mobile_no=res.getString("mobile_no");
   String vehicle_mode=res.getString("vehicle_mode");
   String city=res.getString("city");
   String user_name=res.getString("user_name");
   String pass=res.getString("pass");
   String payment=res.getString("payment");
        %>
        <tr>
            <td><input type="text" value="<%=res.getString(1)%>"readonly="true"</td>
            <td><input type="text" value="<%=res.getString(2)%>"</td>
             <td><input type="text" value="<%=res.getString(3)%>"</td>
              <td><input type="text" value="<%=res.getString(4)%>"</td>
               <td><input type="text" value="<%=res.getString(5)%>"</td>
                <td><input type="text" value="<%=res.getString(6)%>"</td>
                 <td><input type="text" value="<%=res.getString(7)%>"</td>
                  <td><input type="text" value="<%=res.getString(8)%>"</td>
                  <td><input type="text" value="<%=res.getString(9)%>"</td>


        </tr>  

<%
    }
    %>
    <pre> 
     <button><a href="dash_admin.html">Back</a></button>         <button><a href="userReg.html">Add User</a> </button>
    </pre>
</div>