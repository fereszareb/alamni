
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
Connection connection1 = null;
Statement statement1 = null;
ResultSet resultSet1 = null;
Connection connection2 = null;
Statement statement2 = null;
ResultSet resultSet2 = null;
String x = "";
String email = request.getParameter("email");
String password = request.getParameter("password");
%>

<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni","root","");
statement=connection.createStatement();
String sql ="select * from admin where ( email = '"+email+"' and password = '"+password+"')";
resultSet = statement.executeQuery(sql);
if (resultSet.next()) {

x = "{ \"login\": true , \"id\": "+resultSet.getString("id")+" , \"nom\" : \""+resultSet.getString("nom")+"\" , \"prenom\" : \""+resultSet.getString("prenom")+"\" , \"type\" : "+resultSet.getString("type")+"} ";
}else{


try{
connection1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni","root","");
statement1=connection1.createStatement();
String sql1 ="select * from enseignant where ( email = '"+email+"' and password = '"+password+"')";
resultSet1 = statement1.executeQuery(sql1);
if (resultSet1.next()) {

x = "{ \"login\": true , \"id\": "+resultSet1.getString("id")+" , \"nom\" : \""+resultSet1.getString("nom")+"\" , \"prenom\" : \""+resultSet1.getString("prenom")+"\" , \"type\" : 2} ";
}else{


try{
connection2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni","root","");
statement2=connection2.createStatement();
String sql2 ="select * from etudiant where ( email = '"+email+"' and password = '"+password+"')";
resultSet2 = statement2.executeQuery(sql2);
if (resultSet2.next()) {

x = "{ \"login\": true , \"id\": "+resultSet2.getString("id")+" , \"nom\" : \""+resultSet2.getString("nom")+"\" , \"prenom\" : \""+resultSet2.getString("prenom")+"\" , \"type\" : 3} ";
}else{
x= "{ \"login\" : false }" ; 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

out.print(x);

%>