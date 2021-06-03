
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	String sql = "SELECT filiere ,f.id ,count(*) as nb FROM `classe`, filiere f WHERE( id_filiere = f.id ) GROUP by id_filiere";
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>

<tr>
	<th><%=resultSet.getString("id")%></th>
	<td><%=resultSet.getString("filiere")%></td>
	<td><%=resultSet.getString("nb")%></td>
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
try {
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni", "root", "");
	statement = connection.createStatement();
	String sql = "SELECT * FROM `filiere` where ( id not in (SELECT DISTINCt(id_filiere) from classe ))";
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>

<tr>
	<th><%=resultSet.getString("id")%></th>
	<td><%=resultSet.getString("filiere")%></td>
	<td>0</td>
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