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
<%@page import="com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*, java.io.*" %>

<%
String realFolder = "";
String savePath = "D:/soo/soo/WebContent/img3/";  //���������� ��
int sizeLimit = 5 * 1024 * 1024; // �ִ� ���ε� ���� ũ�� 5MB(�ް�)�� ����

String encType = "euc-kr";  //Ÿ��

ServletContext context = getServletContext();

String driverName = "org.gjt.mm.mysql.Driver";
String dbURL = "jdbc:mysql://localhost:3307/test";

Class.forName(driverName);
Connection conn = DriverManager.getConnection(dbURL,"root","dongyang");

MultipartRequest multi = null;   //���������Ҷ� ��å
multi = new MultipartRequest( request,savePath,sizeLimit,encType,new DefaultFileRenamePolicy());
                              //request,���������� ��, ���� ���ε�ũ��, Ÿ��
String userName = multi.getParameter("userName");
String fileName = multi.getFilesystemName("userFile");
//String originFileName = multi.getOriginalFileName("userFile");

//File file = multi.getFile("userFile");   // �����н�


String title  = multi.getParameter("title");
String contents  = multi.getParameter("contents");

Statement stmt = conn.createStatement();
	
Calendar dateIn = Calendar.getInstance();
String indate = Integer.toString(dateIn.get(Calendar.YEAR)) + "-";
indate = indate + Integer.toString(dateIn.get(Calendar.MONTH)+1) + "-";
indate = indate + Integer.toString(dateIn.get(Calendar.DATE)) + " ";
indate = indate + Integer.toString(dateIn.get(Calendar.HOUR_OF_DAY)) + ":";
indate = indate + Integer.toString(dateIn.get(Calendar.MINUTE)) + ":";
indate = indate + Integer.toString(dateIn.get(Calendar.SECOND));

String strSQL = "SELECT Max(num) FROM tblboardimg2";
ResultSet rs = stmt.executeQuery(strSQL);
int num = 1;

if (!rs.wasNull()){
	rs.next();
	num = rs.getInt(1) + 1;	
}
	
strSQL ="INSERT INTO tblboardimg2 (num, title, contents, writedate, filename)";
strSQL = strSQL +  "VALUES('" + num + "',";
strSQL = strSQL +  "'" + title + "', '" + contents + "', '" + indate + "', '" + fileName + "')";
stmt.executeUpdate(strSQL);

stmt.close();                	
conn.close();

response.sendRedirect("product_master.jsp"); 
%>


</body>
</html>