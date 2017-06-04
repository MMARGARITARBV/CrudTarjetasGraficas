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
        
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <script type="text/javascript" src="scripts.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        
     </head>
    <body>
        <% request.setCharacterEncoding("UTF-8"); %>
        
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="titulos">Modificar Tarjeta</h2>
                </div>
            
                <form class="form-horizontal" method="get" action="tarjetaModificada.jsp">
                <div class="form-group">
                    <br>
                    <label class="control-label col-sm-2" for="id">Id:</label>
                    <div class="col-sm-8">
                     <input type="text" name="id" class="form-control" value="<%=request.getParameter("id")%>" placeholder="<%=request.getParameter("id")%>" aria-describedby="sizing-addon2" readonly>   
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="nombre">Nombre:</label>
                    <div class="col-sm-8">
                     <input type="text" name="nombre" class="form-control" value="<%=request.getParameter("nombre")%>" placeholder="<%=request.getParameter("nombre")%>" aria-describedby="sizing-addon2">   
                    </div>
                </div>
                     <div class="form-group">
                         <label class="control-label col-sm-2" for="marca">Marca:</label>
                         <div class="col-sm-8">
                             <select type="text" name="marca" class="form-control" value="<%=request.getParameter("marca")%>" placeholder="<%=request.getParameter("marca")%>" id="marca">
                                 <option>Asus</option>
                                 <option>MSI</option>
                                 <option>EVGA</option>
                                 <option>Gigabyte</option>
                             </select>
                         </div>
                     </div> 
                <div class="form-group">
                    <label class="control-label col-sm-2" for="tipoGrafica">Tipo de Gráfica:</label>
                    <div class="col-sm-8">
                     <input type="text" name="tipoGrafica" class="form-control" value="<%=request.getParameter("tipoGrafica")%>" placeholder="<%=request.getParameter("tipoGrafica")%>" aria-describedby="sizing-addon2">   
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="tipoMemoria">Tipo de Memoria:</label>
                    <div class="col-sm-8">
                     <input type="text" name="tipoMemoria" class="form-control" value="<%=request.getParameter("tipoMemoria")%>" placeholder="<%=request.getParameter("tipoMemoria")%>" aria-describedby="sizing-addon2">   
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="tamano">Tamaño en Gigas:</label>
                    <div class="col-sm-8">
                        <select type="text" name="tamano" class="form-control" value="<%=Integer.valueOf(request.getParameter("tamano"))%>" placeholder="<%=request.getParameter("tamano")%>" id="tamano">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>6</option>
                            <option>8</option>
                        </select> 
                    </div>
                </div>
                <div class="form-group">
                   <label class="control-label col-sm-2" for="estado">Estado:</label>
                    <div class="col-sm-8">
                        <select type="text" name="estado" class="form-control" value="<%=request.getParameter("estado")%>" placeholder="<%=request.getParameter("estado")%>" id="estado">
                                       <option>Nuevo</option>
                                       <option>Usado</option>
                                       <option>Reacondicionado</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="precio">Precio:</label>
                    <div class="col-sm-8">
                     <input type="text" name="precio" class="form-control" value="<%=Integer.valueOf(request.getParameter("precio"))%>" placeholder="<%=request.getParameter("precio")%>" aria-describedby="sizing-addon2">   
                    </div>
                </div>
                    
                    <h2 class="titulos"> <button type="submit" class="btn btn-success">Aceptar</button>
                        <button type="button" class="btn btn-danger" onclick="cancelar()">Cancelar</button>
                    </h2>
                
               </form>
        
            </div>
        </div>
    </body>
</html>