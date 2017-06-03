<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarjetas Gráficas</title>
        
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <script type="text/javascript" src="scripts.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
             <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
             <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <META HTTP-EQUIV="REFRESH" CONTENT="3; URL=index.jsp"> 
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tgraficas","root", "");
            Statement s = conexion.createStatement();
            s.execute ("DELETE FROM graficas WHERE id=" + request.getParameter("id"));
        %>
        <div class="alert alert-danger" role="alert">Se ha borrado la tarjeta gráfica seleccionada</div> 
    </body>
</html>
