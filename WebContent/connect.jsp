<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<% 
try {
String connectionURL = "jdbc:mysql://localhost:3306/alamni"; 
Connection connection = null; 
Class.forName("com.mysql.jdbc.Driver").newInstance();  
connection = DriverManager.getConnection(connectionURL, "root", "");
if(!connection.isClosed())
//out.println("Successfully connected to " + "MySQL server using TCP/IP...");
connection.close();
}
catch(Exception ex){
out.println("Unable to connect to database.");
}
%>