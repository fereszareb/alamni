
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
String id = request.getParameter("id");
String sql = "select * from admin where (id = " + id + ")";

try {
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni", "root", "");
	statement = connection.createStatement();
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>
<p>
	Nom & Prénom :
	<%=resultSet.getString("nom")%>
	<%=resultSet.getString("prenom")%></p>
<p>
	CIN :
	<%=resultSet.getString("cin")%></p>
<p>
	Tel :
	<%=resultSet.getString("tel")%></p>

<p>
	Email :
	<%=resultSet.getString("email")%></p>
<p>Adresse : 62 rue 2154 Bardo Tunis , Tunisie</p>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>