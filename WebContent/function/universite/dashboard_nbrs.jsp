
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
    String sql = "SELECT COUNT(*) AS nbr from enseignant";
    resultSet = statement.executeQuery(sql);
    while (resultSet.next()) {
%>
<div class="col-12 col-lg-4 col-md-6 mb-2">
	<div class="card">
		<div class="card-body">
			<div class="row">
				<div class="col-3">
					<i class="fas fa-user icon-stat-dashboard"></i>
				</div>
				<div class="col-9 text-center">
					<h5 class="card-title">Nbr Enseignants</h5>
					<h4 class="card-text " id="nbr_ens"><%=resultSet.getString("nbr")%></h4>
				</div>
			</div>
		</div>
	</div>
</div>
<%
}
sql = "SELECT COUNT(*) AS nbr from etudiant";
resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>
<div class="col-12 col-lg-4 col-md-6 mb-2">
	<div class="card">
		<div class="card-body">
			<div class="row">
				<div class="col-3">
					<i class="fas fa-user-graduate icon-stat-dashboard"></i>
				</div>
				<div class="col-9 text-center">
					<h5 class="card-title">Nbr Etudiants</h5>
					<h4 class="card-text " id="nbr_etud"><%=resultSet.getString("nbr")%></h4>
				</div>
			</div>
		</div>
	</div>
</div>
<%
}
sql = "SELECT COUNT(*) AS nbr from connexion c ,etudiant e where c.cin=e.cin and actif=1";
resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>
<div class="col-12 col-lg-4 col-md-6 mb-2">
	<div class="card">
		<div class="card-body">
			<div class="row">
				<div class="col-3">
					<i class="fas fa-user-check icon-stat-dashboard"></i>
				</div>
				<div class="col-9 text-center">
					<h5 class="card-title">Etudiants actif</h5>
					<h4 class="card-text " id="nbr_etud_actif"><%=resultSet.getString("nbr")%></h4>
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