<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String name_univ=request.getParameter("name_univ");
String email_univ=request.getParameter("email_univ");
String web_site_univ=request.getParameter("web_site_univ");
try
{
	if (name_univ != null && email_univ != null && web_site_univ != null){
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni", "root", "");
		Statement st=conn.createStatement();
		int i=st.executeUpdate("INSERT INTO `universite`(`Nom`, `email`,`link`) VALUES ('"+name_univ+"','"+email_univ+"','"+web_site_univ+"')");
	}else{
		out.println("veuillez remplir tous les champs");
	}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>