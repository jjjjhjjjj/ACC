<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%@ page import = "java.sql.*" %>

<%

String driverName = "org.gjt.mm.mysql.Driver";
String dbURL = "jdbc:mysql://localhost:3307/test";

Class.forName(driverName);
Connection con = DriverManager.getConnection(dbURL, "root", "dongyang");

PreparedStatement pstmt1 = null, pstmt2 = null,pstmt3 = null;

String strSQL ="INSERT INTO tblZipCode(a,b,c,d,e)";
strSQL = strSQL + "VALUES (?, ?, ?,?,?)";
pstmt2 = con.prepareStatement(strSQL);

pstmt2.setString(1,"08221" );
pstmt2.setString(2,"서울시");
pstmt2.setString(3, "구로구");
pstmt2.setString(4,"고척동");
pstmt2.setString(5,"50-120");
pstmt2.executeUpdate();

String strSQL2 ="INSERT INTO tblZipCode(a,b,c,d,e)";
strSQL2 = strSQL2 + "VALUES (?, ?, ?,?,?)";
pstmt3 = con.prepareStatement(strSQL2);

pstmt3.setString(1,"08221" );
pstmt3.setString(2,"서울시");
pstmt3.setString(3, "구로구");
pstmt3.setString(4,"고척동");
pstmt3.setString(5,"55-10");
pstmt3.executeUpdate();
%>
저장
</body>
</html>