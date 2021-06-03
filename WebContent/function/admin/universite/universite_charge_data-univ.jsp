
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
String sql = "select * from universite where (id = " + id + ")";

try {
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni", "root", "");
	statement = connection.createStatement();
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>
<p>
	Nom :
	<%=resultSet.getString("nom")%>
<p>
	Email :
	<%=resultSet.getString("email")%></p>
<p>
	Adresse :
	<%=resultSet.getString("adresse")%></p>
<p>
	Lien :
	<%=resultSet.getString("link")%></p>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>