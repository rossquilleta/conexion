<%-- 
    Document   : PoolJsp
    Created on : 10-oct-2016, 12:18:41
    Author     : alumno
--%>

<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Poll</h1>
        <%
            DataSource dataSource;
            
            InitialContext initCtx=new InitialContext();
            Context envCtx = (Context) initCtx.lookup("java:comp/env");
            dataSource = (DataSource)envCtx.lookup("jdbc/spacex");
            Connection connection= dataSource.getConnection();
 
            Statement state = connection.createStatement();
            ResultSet rs = state.executeQuery("SELECT nombre FROM cohete");
            
            while(rs.next()){
            
            out.println(rs.getString("nombre"));
            }
            connection.close(); //No se cierra realmente la conexión sino que se retorna al pool
            
        %>
    </body>
</html>
