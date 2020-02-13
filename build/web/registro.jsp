
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        
        <h1>Bienvenido</h1>
        <%
            // Validar y recibir los datos
            // Siempre debe recibir los datos en variables
            String UsuarioIn="", RolIn="",JefeIn="",ClaveIn="";
            
            // atraves del get parameter si trae el dato sino esta vacio
            if(request.getParameter("txtusuario") != null){
            
                UsuarioIn = request.getParameter("txtusuario");
            }
            
            if(request.getParameter("txtrol") != null){
            
                RolIn = request.getParameter("txtrol");
            }
            
            if(request.getParameter("txtjefe") != null){
            
                JefeIn = request.getParameter("txtjefe");
            }
            
            if(request.getParameter("txtclave") != null){
            
                ClaveIn = request.getParameter("txtclave");
            }
        %>
        <!-- En esta linea instanciamos el bean -->
        <jsp:useBean id="sesionActual" class="beans.sesion" scope="session"/>
        
         <!-- Llevar los datos a los atributos del bean -->
         <jsp:setProperty name="sesionActual" property="usuario" value="<%=UsuarioIn%>"/>
         <jsp:setProperty name="sesionActual" property="rol" value="<%=RolIn%>"/>
         <jsp:setProperty name="sesionActual" property="jefe" value="<%=JefeIn%>"/>
         <jsp:setProperty name="sesionActual" property="clave" value="<%=ClaveIn%>"/>
         
         <!-- Pintar en la vista los datos (los tiene el bean)-->
         <table>
             <tr><td>Usuario:</td><td><jsp:getProperty name="sesionActual" property="usuario"/></td></tr>
             <tr><td>Rol:</td><td><jsp:getProperty name="sesionActual" property="rol"/></td></tr>
             <tr><td>Jefe:</td><td><jsp:getProperty name="sesionActual" property="jefe"/></td></tr>
             <tr><td>Clave:</td><td><jsp:getProperty name="sesionActual" property="clave"/></td></tr>
         </table>
    </body>
</html>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
