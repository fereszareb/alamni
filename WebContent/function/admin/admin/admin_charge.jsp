
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
	String sql = "select * from admin";
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>

<tr>
	<th><%=resultSet.getString("cin")%></th>
	<td><%=resultSet.getString("nom")%></td>
	<td><%=resultSet.getString("prenom")%></td>
	<td><%=resultSet.getString("email")%></td>
	<td><%=resultSet.getString("tel")%></td>
	<td class="action-btn">
		<div class="row action-btn">
			<div class="col-6">
				<i class="fas fa-eye" data-bs-toggle="modal"
					data-bs-target="#consulte" id="btn-view"
					data-id1="<%=resultSet.getString("id")%>"></i>
			</div>
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