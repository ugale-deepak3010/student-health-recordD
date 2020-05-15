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
        <title>deepak3</title>
    </head>
    <body>
        <h1>Second page</h1>
        <%!

%>
        <%
out.print("5");

try{
        Class.forName("org.postgresql.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:postgresql://ec2-176-34-97-213.eu-west-1.compute.amazonaws.com:5432/d6vu3tk6kemoud?sslmode=require","fqqaklpfmgwpsf","e2200b3bbe4116e22c8db03561907786dfdcf3993b40dd9299d8c4b90ee54b76");

//        java.sql.Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","1043");
Statement st= con.createStatement();
String qry8="SELECT * FROM register";
out.print("<a href='mainpage.jsp'>Suucess</a><br>");
ResultSet rs=st.executeQuery(qry8);
while(rs.next()){
out.print("<br>");
out.print("<td>"+rs.getInt("id")+"</td>");
out.print("<td>"+rs.getString("first_name")+"</td>");
out.print("<td>"+rs.getString("last_name")+"</td>");
out.print("<td>"+rs.getString("subject")+"</td>");
out.print("<td>"+rs.getString("message")+"</td>");
out.print("<br>");

}
    }catch(Exception e){
        out.print("Error=="+e);
    }
%>
        
    </body>
</html>
