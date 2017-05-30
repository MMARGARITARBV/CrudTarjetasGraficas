<%-- 
    Document   : index
    Description: Crud mis Tarjetas Gráficas
    Author     : Maria Margarita Benitez V
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
        <title>Mis Tarjetas Gráficas</title>

        <link rel="stylesheet" type="text/css" href="style.css">
        <script type="text/javascript" src="scripts.js"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
             <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
             <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <META HTTP-EQUIV="REFRESH" CONTENT="5; URL=index.jsp">    
              
    </head>
    <body>
        
        <div class="panel panel-primary">
            <div class="panel-heading"><h1 class="tamano">TARJETAS GRÁFICAS</h1></div>
                    <div class="panel-body">
                        <h2 class="titulos">Tarjetas disponibles</h2>
                        <h2 class="pequeno">  <button type="button" class="btn" onclick='nuevo()' title="Añadir Nueva Tarjeta"><span class="glyphicon glyphicon-plus"></span></button> AÑADIR NUEVA TARJETA</h2>  
                    </div>
            </div>
            <table class="table table-bordered">
                <tr class="nombre-table">
                    <td><b>NOMBRE</b></td>
                    <td><b>MARCA</b></td>
                    <td><b>TIPO DE GRAFICA</b></td>
                    <td><b>TIPO DE MEMORIA</b></td>
                    <td><b>TAMANO</b></td>
                    <td><b>ESTADO</b></td>
                    <td><b>PRECIOS</b></td>
                    <td><b>CAMBIOS</b></td>
                </tr>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tgraficas", "root", "");
                    Statement s = conexion.createStatement();

                    ResultSet listado = s.executeQuery("Select * FROM graficas");

                    while (listado.next()) {
                        //Float idgrafica = Float.valueOf(listado.getString("ID"));
                        out.println("<tr>");
                        out.println("<td>" + listado.getString("nombre") + "</td>");
                        out.println("<td>" + listado.getString("marca") + "</td>");
                        out.println("<td>" + listado.getString("tipoGrafica") + "</td>");
                        out.println("<td>" + listado.getString("tipoMemoria") + "</td>");
                        out.println("<td>" + listado.getString("tamano") + "GB"+ "</td>");
                        out.println("<td>" + listado.getString("estado") + "</td>");
                        out.println("<td>" + listado.getString("precio") + "</td>");
                %>
                <td>
                    <form action="borraTarjeta.jsp">
                        <input type="hidden" name="id" value="<%=listado.getString("id")%>" />
                        <button type='submit' class='btn btn-warning' title="Borrar"><span class="glyphicon glyphicon glyphicon-minus"></span></button>
                    </form>
                    <form method="get" action="editaTarjeta.jsp">
                        <input type="hidden" name="ID" value="<%=listado.getString("id")%>"/>
                        <input type="hidden" name="marca" value="<%=listado.getString("nombre")%>">
                        <input type="hidden" name="marca" value="<%=listado.getString("marca")%>">
                        <input type="hidden" name="marca" value="<%=listado.getString("tipoGrafica")%>">
                        <input type="hidden" name="marca" value="<%=listado.getString("tipoMemoria")%>">
                        <input type="hidden" name="marca" value="<%=listado.getString("tamano")%>">
                        <input type="hidden" name="tipo" value="<%=listado.getString("estado")%>">
                        <input type="hidden" name="precio" value="<%=listado.getString("precio")%>">
                        <button type='submit' class='btn btn-success' title="Modificar"><span class="glyphicon glyphicon-pencil"></span></button>
                    </form>
                                       
                </td>
                <%
                    } //while
                    conexion.close();
                %>
                
            </table>
       </div> 
    </body>
</html>
