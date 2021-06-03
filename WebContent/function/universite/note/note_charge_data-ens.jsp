
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Matiéres</th>
      <th scope="col">DS</th>
      <th scope="col">Examen</th>
    </tr>
</thead>
  <tbody>
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
String sql = "SELECT n.DS , n.EXAMAN , m.matiere FROM note n, matiere m WHERE ( n.id_etudiant = "+ id +" and m.id = n.id_matiere )";

try {
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni", "root", "");
	statement = connection.createStatement();
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>
    <tr>
      <th><%=resultSet.getString("matiere")%></th>
      <td><%=resultSet.getString("ds")%></td>
      <td><%=resultSet.getString("examan")%></td>
    </tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

  </tbody>
</table>