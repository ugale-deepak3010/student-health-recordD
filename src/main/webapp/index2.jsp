<%-- 
    Document   : index2
    Created on : 10 May, 2020, 8:06:53 AM
    Author     : Deepak
--%>
<%@page import="java.sql.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>deepak2</title>
    </head>
    <body>
        <h1>Second page</h1>
        <%!

%>
        <%
out.print("5");

try{
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_health_record","root","");
Statement st= con.createStatement();
String qry8="SELECT * FROM register";
out.print("<a href='mainpage.jsp'>Suucess</a>");
ResultSet rs=st.executeQuery(qry8);
while(rs.next()){
out.print("<td>"+rs.getString("first_name")+"</td>");
out.print("<td>"+rs.getString("last_name")+"</td>");
out.print("<td>"+rs.getString("password")+"</td>");
out.print("<td>"+rs.getString("phone")+"</td>");

}
    }catch(Exception e){
        out.print("Error=="+e);
    }
%>

    </body>
</html>
