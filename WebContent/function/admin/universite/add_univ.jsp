<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String nom = request.getParameter("nom");
String email = request.getParameter("email");
String adresse = request.getParameter("adresse");
String lien = request.getParameter("lien");
String lienpic = request.getParameter("lienpic");

try {
	if (nom != null && email != null && adresse != null && lien != null && lienpic != null) {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni", "root", "");
		Statement st = conn.createStatement();
		int i = st.executeUpdate("INSERT INTO `universite`(`Nom`, `email`,`adresse`,`link`,`link_pic`) VALUES ('" + nom + "','" + email + "','" + adresse + "','" + lien + "','" + lienpic + "')");
	} else {
		out.println("veuillez remplir tous les champs");
	}
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>