<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>

<html>
<head>
	<title>Database SQL : Select</title>
	<link rel="stylesheet" href="table.css">
</head>
<body>
	<%@ include file= "dbconn.jsp" %>

	<%

		request.setCharacterEncoding("utf-8");

		String isbn = request.getParameter("isbn");
		
		Statement stmt = null;
		ResultSet rs = null;
		String sql = null;
		
		
	try {
		
       		sql = "SELECT REGISTRAITON_NUMBER, LIBRARY_NUMBER, ISBN, BOOK_STATUS FROM BOOK WHERE 'isbn' = book.isbn";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
					String RESERVATION_number = null;
					String REG_NUM = rs.getString("REGITRAITON_NUMBER");
					String LIB_NUM = rs.getString("LIBRARY_NUMBER");
					String ISB = rs.getString("ISBN");
					String Book_sta = rs.getString("BOOK_STATUS");
					sql = "INSERT INTO RESERVATION_book(REGISTRAITON_NUMBER, LIBRARY_NUMBER, RESERVATION_NUMBER) VALUES('" + REG_NUM + "' , '" + LIB_NUM + "' , '" + RESERVATION_number + "') ";
					stmt.executeUpdate(sql);
		}
		
		%> <p><%= new java.util.Date() %></p> 예약이 완료되었습니다. <%
		

	 } catch (SQLException ex) {
		out.println("Book 테이블 호출이 실패했습니다.<br>");
		out.println("SQLException:" + ex.getMessage());
	} finally {
		if(stmt != null)
			stmt.close();
		if(conn != null) 
			conn.close();
		if(rs != null)
			rs.close();
	}
	
	%>
</table>
</body>
</html>