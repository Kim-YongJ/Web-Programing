<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>

<html>
<head>
	<title>Database SQL : Select</title>
	<link rel="stylesheet" href="table.css">
</head>
<body>
	<%@ include file= "dbconn.jsp" %>
	<table id="t1">
		<tr>
			<th> Author </th>
			<th> Title </th>
			<th> Publisher </th>
			<th> Publication_Year </th>
			<th> ISBN </th>
			<th> 대출/예약 </th>
		</tr>
	<%

		request.setCharacterEncoding("utf-8");

		String titl = request.getParameter("title1");
		String auth = request.getParameter("author1");
		String pub = request.getParameter("pub1");
		String sel1 = request.getParameter("sel1");
		String sel2 = request.getParameter("sel2");
		Statement stmt = null;
		ResultSet rs = null;
		String sql = null;
		
	try {
		
       	if(sel1.equals("OR1") && sel2.equals("OR2")) {
        		sql = "SELECT author, title, publisher, to_char(publication_year, 'yyyy') as publication_year, isbn FROM bookinformation WHERE author LIKE '%"+auth+"%' OR title LIKE '%" + titl+ "%' OR publisher LIKE '%" + pub + "%' ";
       
     	} else if(sel1.equals("OR1") && sel2.equals("AND2")) {
         		sql = "SELECT author, title, publisher, to_char(publication_year, 'yyyy') as publication_year, isbn FROM bookinformation WHERE author LIKE '%"+auth+"%' OR title LIKE '%" + titl+ "%' AND publisher LIKE '%" + pub + "%' ";

 	} else if(sel1.equals("OR1") && sel2.equals("NOT2")) {
        		sql = "SELECT author, title, publisher, to_char(publication_year, 'yyyy') as publication_year, isbn FROM bookinformation WHERE author LIKE '%"+auth+"%' OR title LIKE '%" + titl+ "%' OR publisher NOT LIKE '%" + pub + "%' ";

   	} else if(sel1.equals("AND1") && sel2.equals("OR2")) {
         		sql = "SELECT author, title, publisher, to_char(publication_year, 'yyyy') as publication_year, isbn FROM bookinformation WHERE author LIKE '%"+auth+"%' AND title LIKE '%" + titl+ "%' OR publisher LIKE '%" + pub + "%' ";

      	} else if(sel1.equals("AND1") && sel2.equals("AND2")) {
        		sql = "SELECT author, title, publisher, to_char(publication_year, 'yyyy') as publication_year, isbn FROM bookinformation WHERE author LIKE '%"+auth+"%' AND title LIKE '%" + titl+ "%' AND publisher LIKE '%" + pub + "%' ";

      	} else if(sel1.equals("AND1") && sel2.equals("NOT2")) {
         		sql = "SELECT author, title, publisher, to_char(publication_year, 'yyyy') as publication_year, isbn FROM bookinformation WHERE author LIKE '%"+auth+"%' AND title LIKE '%" + titl+ "%' OR publisher NOT LIKE '%" + pub + "%' ";

      	} else if(sel1.equals("NOT1") && sel2.equals("OR2")) {
         		sql = "SELECT author, title, publisher, to_char(publication_year, 'yyyy') as publication_year, isbn FROM bookinformation WHERE author LIKE '%"+auth+"%' OR title NOT  LIKE '%" + titl+ "%' OR publisher LIKE '%" + pub + "%' ";

      	} else if(sel1.equals("NOT1") && sel2.equals("AND2")) {
         		sql = "SELECT author, title, publisher, to_char(publication_year, 'yyyy') as publication_year, isbn FROM bookinformation WHERE author LIKE '%"+auth+"%' OR title NOT  LIKE '%" + titl+ "%' AND publisher LIKE '%" + pub + "%' ";
  
      	} else {
         		sql = "SELECT author, title, publisher, to_char(publication_year, 'yyyy') as publication_year, isbn FROM bookinformation WHERE author LIKE '%"+auth+"%' OR title NOT  LIKE '%" + titl+ "%' OR publisher NOT LIKE '%" + pub + "%' ";
      	}


		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);

		while(rs.next()) {
					String aut = rs.getString("author");
					String tit = rs.getString("title");
					String publ = rs.getString("publisher");
					String puby = rs.getString("publication_year");
					String isbn = rs.getString("isbn");

	%>
		<tr>
			<td><%=aut%></td>
			<td><%=tit%></td>
			<td><%=publ%></td>
			<td><%=puby%></td>
			<td><%=isbn%></td>
			<td><a href = "BookLoan.jsp?isbn=<%=isbn%>">대출 </a>/<a href = "BookReservation.jsp?isbn=<%=isbn%>">예약</a></td>
	<%
		
		}	
		
	
	 } catch (SQLException ex) {
		out.println("BookInformation 테이블 호출이 실패했습니다.<br>");
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