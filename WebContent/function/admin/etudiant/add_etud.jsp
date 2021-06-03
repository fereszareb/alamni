<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String nom = request.getParameter("nom");
String prenom = request.getParameter("prenom");
String email = request.getParameter("email");
String cin = request.getParameter("cin");
String tel = request.getParameter("tel");
String niv = request.getParameter("niv");
String spec = request.getParameter("spec");
String univ = request.getParameter("univ");
try {
	if (nom != null && prenom != null && email != null && cin != null && tel != null && niv != null && spec != null && univ != null) {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni", "root", "");
		Statement st = conn.createStatement();
		int i = st.executeUpdate("INSERT INTO `etudiant`(`nom`, `prenom`,`email`,`cin`,`tel`,`niveau`,`specialite`,`universite`) VALUES ('" + nom + "','"
		+ prenom + "','" + email + "','" + cin + "','" + tel + "','" + niv + "','" + spec + "','" + univ + "')");
	} else {
		out.println("veuillez remplir tous les champs");
	}
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>