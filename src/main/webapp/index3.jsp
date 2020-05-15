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
        java.sql.Connection con = DriverManager.getConnection("jdbc:postgresql://ec2-34-232-147-86.compute-1.amazonaws.com:5432/ddaru821putkoo?sslmode=require","fjkuqvoqludjcf","d659458c31071a716259d194162347bd74d03abb45db1733c3beec45c361f2f7");

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
