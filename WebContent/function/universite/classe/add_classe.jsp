<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String nom = request.getParameter("nom");
String filiere = request.getParameter("filiere");
try {
	if (nom != null && filiere != null ) {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni", "root", "");
		Statement st = conn.createStatement();
		int i = st.executeUpdate("INSERT INTO `classe`(`classe`,id_filiere) VALUES ('" + nom + "'," + filiere + ")");
	} else {
		out.println("veuillez remplir tous les champs");
	}
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>