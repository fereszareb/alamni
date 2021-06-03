
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

<%
try {
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni", "root", "");
	statement = connection.createStatement();
	String sql = "SELECT m.id, m.matiere, f.filiere FROM matiere m, filiere f WHERE f.id = id_filiere";
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>

<tr>
	<th><%=resultSet.getString("id")%></th>
	<td><%=resultSet.getString("matiere")%></td>
	<td><%=resultSet.getString("filiere")%></td>
	<td class="action-btn">
		<div class="row action-btn">
			<div class="col-6">
				<i class="fas fa-trash-alt" id="btn-delete"
					data-id2="<%=resultSet.getString("id")%>"></i>
			</div>
		</div>
	</td>
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>