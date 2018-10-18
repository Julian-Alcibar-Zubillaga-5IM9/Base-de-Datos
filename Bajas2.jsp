<%-- 
    Document   : Bajas2
    Created on : 18/04/2018, 10:25:50 PM
    Author     : Julian
--%>

<%@page import="com.Julian.ABCC.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    
    BD BD = new BD();
    BD.Connection();
    BD.delete("delete from usuario where nam = '" + name + "';");
    System.out.println("Si se hace");
    out.println("<script>alert('Ya se dio de Baja');</script>");
    BD.CloseConnection();
   
%>
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
