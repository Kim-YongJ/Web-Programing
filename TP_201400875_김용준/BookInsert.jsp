<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>

<html>
<head>
	<title>Database SQL : Select</title>
</head>
<body>
	<%@ include file= "dbconn.jsp" %>
	<%
		
		request.setCharacterEncoding("utf-8");
		
		String author = request.getParameter("author");
		String title = request.getParameter("title");
		String pub = request.getParameter("pub");
		String pDate = request.getParameter("pDate"); 
		String ISBN = request.getParameter("ISBN"); 				
		 	
				

		Statement stmt = null;

		try {
			String sql = "INSERT INTO bookinformation(author, title, publisher, publication_year, ISBN) VALUES ('" +author + "' , '" + title + "' , '" + pub + "' , TO_DATE('" + pDate + "' , 'yyyy' ), '" + ISBN + "')";
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			out.println("201400875 김용준<br>");
			out.println("BookInf 테이블 삽입이 성공했습니다.");
		 } catch (SQLException ex) {
			out.println("BookInf 테이블 호출이 실패했습니다.<br>");
			out.println("SQLException:" + ex.getMessage());
		 } finally {
			if(stmt != null)
				stmt.close();
			if(conn != null)
				conn.close();
		}
	%>
	<p><%= new java.util.Date() %></p>

	<%-- 내용 --%>	

	</table>
</body>
</html>