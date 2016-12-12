<%-- 
    Document   : newjsp
    Created on : 06-oct-2016, 13:11:03
    Author     : alumno
--%>


<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver"); 
            String url ="jdbc:mysql://localhost:3306/spacex";
            String user= "root";
            String password ="";
            
           try{               
            
            Connection conn = DriverManager.getConnection(url, user, password);
            //System.out.println("Intentamos ejecutar el bloque de instrucciones:");
        }

        catch (SQLException e) {
           
            //System.out.println(e.getMessage());
        }

        %>
    </body>
</html>
