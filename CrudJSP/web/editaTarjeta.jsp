<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edita Tarjeta</title>
        
        <link rel="stylesheet" type="text/css" href="style.css">
        <script type="text/javascript" src="scripts.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        
     </head>
    <body>
        <% request.setCharacterEncoding("UTF-8"); %>
        <h2 class="titulos">Modificar tarjeta </h2>
        <div class="container">
            <div class="row">
                <form method="get" action="tarjetaModificada.jsp">

                    <div class="col-md-4 col-md-offset-4">

                        <div class="form-group">
                            <div class="input-group">

                                <span class="input-group-addon" id="sizing-addon2">ID: </span>
                                <input type="text" name="id" class="form-control" value="<%=request.getParameter("id")%>" placeholder="<%=request.getParameter("id")%>" aria-describedby="sizing-addon2" readonly>
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="sizing-addon2">NOMBRE: </span>
                                <input type="text" name="nombre" class="form-control" value="<%=request.getParameter("nombre")%>" placeholder="<%=request.getParameter("nombre")%>" aria-describedby="sizing-addon2">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="sizing-addon2">MARCA: </span>
                                <input type="text" name="marca" class="form-control" value="<%=request.getParameter("marca")%>" placeholder="<%=request.getParameter("marca")%>" aria-describedby="sizing-addon2">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="sizing-addon2">TIPO DE GRAFICA: </span>
                                <input type="text" name="tipoGrafica" class="form-control" value="<%=request.getParameter("tipoGrafica")%>" placeholder="<%=request.getParameter("tipoGrafica")%>" aria-describedby="sizing-addon2">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="sizing-addon2">TIPO DE MEMORIA: </span>
                                <input type="text" name="tipoMemoria" class="form-control" value="<%=request.getParameter("tipoMemoria")%>" placeholder="<%=request.getParameter("tipoMemoria")%>" aria-describedby="sizing-addon2">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="sizing-addon2">TAMAÑO</span>
                                <input type="text" name="tamano" class="form-control" value="<%=request.getParameter("tamano")%>" placeholder="<%=request.getParameter("tamano")%>" aria-describedby="sizing-addon2">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="sizing-addon2">ESTADO</span>
                                <input type="text" name="estado" class="form-control" value="<%=request.getParameter("estado")%>" placeholder="<%=request.getParameter("estado")%>" aria-describedby="sizing-addon2">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="sizing-addon2">PRECIO</span>
                                <input type="text" name="precio" class="form-control" value="<%=request.getParameter("precio")%>" placeholder="<%=request.getParameter("precio")%>" aria-describedby="sizing-addon2">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success">Aceptar</button>
                        <button type="button" class="btn btn-danger" onclick="cancelar()">Cancelar</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>