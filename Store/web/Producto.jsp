<%-- 
    Document   : Producto
    Created on : 20/07/2023, 09:21:48 PM
    Author     : A_flo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Productos</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=Producto" method="POST">
                        
                        <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" value="${producto.getNombreProducto()}" name="txtNombreProducto" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Descripción</label>
                            <input type="text" value="${producto.getDescripcion()}" name="txtDescripcion" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Precio</label>
                            <input type="text" value="${producto.getPrecio()}" name="txtPrecio" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Id Proveedor</label>
                            <input type="text" value="${producto.getIdProveedor()}" name="txtIdProveedor" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Id Categoría</label>
                            <input type="text" value="${producto.getIdCategoría()}" name="txtIdCategoría" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info" href="">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success" href="">
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hober">
                    <thead>
                        <tr>
                            <td>Codigo</td>
                            <td>Nombre</td>
                            <td>Descripción</td>
                            <td>Precio</td>
                            <td>Id Proveedor</td>
                            <td>Id Categoría</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="producto" items="${productos}">
                        <tr>
                            <td>${producto.getIdProducto()}</td>
                            <td>${producto.getNombreProducto()}</td>
                            <td>${producto.getDescripcion()}</td>
                            <td>${producto.getPrecio()}</td>
                            <td>${producto.getIdProveedor()}</td>
                            <td>${producto.getIdCategoria()}</td>
                            <td>
                                <a class="btn btn-warning" href="Controlador?menu=Producto&accion=Editar&codigoProducto=${producto.getIdProducto()}">Editar</a>
                                <a class="btn btn-danger" href="">Eliminar</a>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>            
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
