<%-- 
    Document   : Consultas
    Created on : 18/04/2018, 08:36:45 PM
    Author     : Julian
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.Julian.ABCC.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
         <%
    String name;
    String pass;
    BD BD = new BD();
    BD.Connection();
    ResultSet Arr;
    Arr = BD.query("SELECT * from usuario");
   
   while(Arr.next()){
                     
                     name=Arr.getString("nam");
                     System.out.println("hi");
                     pass=Arr.getString("pass");
                     out.println("<table border=1>");
                     out.println("<tr>");
                     out.println("<th>usuario</th><th>contraseña</th>");
                     out.println("</tr>");
                     out.println("<tr>");
                     out.print("<td>"+name+"</td>");
                     out.print("<td>"+pass+"</td>");
                     out.println("</tr>");
                    
                 }
                 BD.CloseConnection(); 
    
    
   
%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav>
            <form method="Post" action="Altas.jsp">
                <input type="submit" value="Altas">
            </form>
            <form method="Post" action="Bajas.jsp">
                <input type="submit" value="Bajas">
            </form>
            <form method="Post" action="Cambios.jsp">
                <input type="submit" value="Cambios">
            </form>
            <form method="Post" action="Consultas.jsp">
                <input type="submit" value="Consultas">
            </form>
        </nav>

    </body>
</html>
