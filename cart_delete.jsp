<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.ArrayList"%> 

<%@ page import = "java.util.Enumeration,java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
ArrayList <String> list = (ArrayList)session.getAttribute("productlist"); 
//session.removeAttribute("list");
%>

<%

	
	session.removeAttribute("productlist");

	out.println("<script>alert('��ǰ�� �����Ǿ����ϴ�.'); </script>");
    response.sendRedirect("cart.jsp");

%>

</body>
</html>