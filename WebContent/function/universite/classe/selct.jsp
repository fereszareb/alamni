
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
%>
<select class="form-select" aria-label="Default select example" id="filiere">
<option selected>Selectionner un Filiére</option>
<%
try {
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni", "root", "");
	statement = connection.createStatement();
	String sql = "SELECT * from filiere ";
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>



  <option value="<%=resultSet.getString("id")%>"><%=resultSet.getString("filiere")%></option>



<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</select>