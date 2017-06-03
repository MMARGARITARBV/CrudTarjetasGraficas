<%-- 
    Document   : tarjetaModificada
    Created on : 29-may-2017, 13:01:48
    Author     : Margarita Benitez
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modifica la tarjeta</title>
        
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <script type="text/javascript" src="scripts.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        
        <META HTTP-EQUIV="REFRESH" CONTENT="5; URL=index.jsp">
         
    </head>
     <body>
       <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tgraficas","root", "");
      Statement s = conexion.createStatement();
      request.setCharacterEncoding("UTF-8");
      
      String actualizacion = "UPDATE graficas SET "
              + "nombre='" + request.getParameter("nombre")
              + "', marca='" + request.getParameter("marca")
              + "', tipoGrafica='" + request.getParameter("tipoGrafica")
              + "', tipoMemoria='" + request.getParameter("tipoMemoria")
              + "', tamano='" + request.getParameter("tamano")
              + "', estado='" + request.getParameter("estado")
              + "', precio='" + request.getParameter("precio")
              
                           
              + "' WHERE id =" + request.getParameter("id") + "";
      
      
      
      s.execute(actualizacion);     
      conexion.close();
    %> 
    <div class="alert alert-success" role="alert">Tarjeta modificada correctamente.</div>
    </body>
</html>