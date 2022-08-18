<%@page import="modelo.Asesor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.AsesorDAOMySQL"%>
<%@page import="dao.AsesorDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Datos del asesor</title>
</head>
<body>

	<h1>Datos del asesor</h1>
	<ul>
	
	<%
		String nombre=request.getParameter("nombre");
		String apellidos=request.getParameter("apellidos");
		String dni=request.getParameter("dni");
		String contrato= request.getParameter("contrato");
		String seguro=request.getParameter("seguro");
		boolean coche=true;
		boolean hogar=false;
		boolean decesos=false;
		
		if(request.getParameter("seguro").equals("Hogar")){
			coche=false;
			decesos=false;
		}
		if(request.getParameter("seguro").equals("Decesos")){
			coche=false;
			hogar=false;
		}

		int promedio=Integer.parseInt(request.getParameter("promedio"));
		
	%>
		<li>Nombre: <%=request.getParameter("nombre")%></li>
		<li>Apellidos: <%=request.getParameter("apellidos")%></li> 
		<li>DNI: <%=request.getParameter("dni")%></li>
		<li>Relación contractual: <%=request.getParameter("contrato")%></li> 
		<li>Tipo de seguros: <%=request.getParameter("seguro")%></li>
		<li>Núm. Ventas promedio: <%=request.getParameter("promedio")%></li>
		
	</ul>

<%
		Asesor asesor=new Asesor(dni, nombre,  apellidos, contrato, coche, hogar,
				 decesos,  promedio);
		
		AsesorDAO asesorDao = new AsesorDAOMySQL();
		asesorDao.insertarAsesor(asesor);
		%>
</body>
</html>