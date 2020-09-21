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

String num = request.getParameter("num");
String name = request.getParameter("name");
String pass = request.getParameter("pass");
String addr = request.getParameter("addr");
String addr1 = request.getParameter("addr1");
String tel = request.getParameter("tel");
String email = request.getParameter("email");

String driverName = "org.gjt.mm.mysql.Driver";
    String dbURL = "jdbc:mysql://localhost:3307/test";

    Class.forName(driverName);
    Connection con = DriverManager.getConnection(dbURL, "root", "dongyang");


PreparedStatement pstmt = null;

pstmt = con.prepareStatement("UPDATE tbllogin SET name=?, pass=?, address1=?, address2= ?, phone =?, email= ? WHERE num=?");
pstmt.setString(1, name);
pstmt.setString(2, pass);
pstmt.setString(3, addr);
pstmt.setString(4, addr1);
pstmt.setString(5, tel);
pstmt.setString(6, email);
pstmt.setString(7, num);
pstmt.executeUpdate();

pstmt.close();
con.close();

response.sendRedirect("listboard_o.jsp");
%>
</body>
</html>