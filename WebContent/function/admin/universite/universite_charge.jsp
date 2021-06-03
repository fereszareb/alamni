
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
	String sql = "select * from universite";
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>

<div class="card col-8 m-auto mb-2">
	<div class="card-body shadow-sm">
		<div class="row">
			<div class="col-4">
				<img class="rounded" src="<%=resultSet.getString("link_pic")%>"
					height="180" width="100%">
			</div>
			<div class="col-8">
				<h5 class="card-title"><%=resultSet.getString("Nom")%></h5>
				<p class="card-text">
					Adresse :
					<%=resultSet.getString("adresse")%></p>
				<p class="card-text">
					Email :
					<%=resultSet.getString("email")%></p>
				<p class="card-text">
					Lien :
					<%=resultSet.getString("link")%></p>
				<div class="text-end">
					<div class="btn btn_gold"
						data-id1="<%=resultSet.getString("id")%>" data-bs-toggle="modal"
						data-bs-target="#consulte-univ" id="btn-view">Voir plus</div>
					<div class="btn btn-danger"
						data-id2="<%=resultSet.getString("id")%>" id="btn-delete">Supprimer</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>