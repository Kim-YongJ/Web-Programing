<%@ page import="java.sql.*" %>
<%
	Connection conn=null;

	String url ="jdbc:oracle:thin:@localhost:1521:XE";
	String user = "hr";
	String password = "acea0819";

	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, user, password);
%>