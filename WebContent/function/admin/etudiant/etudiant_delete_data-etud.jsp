
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni", "root", "");
    Statement st = conn.createStatement();
    String id = request.getParameter("id");
    String sql = "delete from etudiant where (id = " + id + ")";
    int i = st.executeUpdate(sql);
    conn.close();
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}

%>