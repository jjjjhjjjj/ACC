<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("euc-kr"); %>

<%
String id = request.getParameter("id"); 
String pass = request.getParameter("pass"); 

String driverName = "org.gjt.mm.mysql.Driver";
    String dbURL = "jdbc:mysql://localhost:3307/test";

    Class.forName(driverName);
    Connection con = DriverManager.getConnection(dbURL, "root", "dongyang");
   
   
PreparedStatement pstmt = null;
ResultSet rs = null;

String strSQL = "SELECT pass FROM tbllogin WHERE id= ?";
pstmt = con.prepareStatement(strSQL);
pstmt.setString(1, id);

rs = pstmt.executeQuery();
rs.next();

String goodpass = rs.getString("pass").trim();
if (pass.equals(goodpass)){
	strSQL = "DELETE From tbllogin WHERE id=?";
	pstmt = con.prepareStatement(strSQL);
	pstmt.setString(1, id);
	pstmt.executeUpdate();
	 /*
	strSQL = "UPDATE tblMember4 SET num = num - 1 WHERE num > ?";
	pstmt = con.prepareStatement(strSQL);
	pstmt.setInt(1, Integer.parseInt(num));
	pstmt.executeUpdate();
*/

	//response.sendRedirect("main.jsp");
	response.sendRedirect("logout.jsp");
}else{
	response.sendRedirect("member_del_pass4.jsp?id=" +id);//???
}

rs.close();
pstmt.close();
con.close();
%>

</body>
</html>