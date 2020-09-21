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
 request.setCharacterEncoding("euc-kr");

%>



<% 
 
  String productname = request.getParameter("product"); 
   
   
  ArrayList <String> list = (ArrayList)session.getAttribute("productlist"); 

  if(list == null){ 
   list = new ArrayList(); 
   session.setAttribute("productlist", list); 
  } 
  
 

   
  list.add(productname); 
 

 %> 
  <% 
                             try{
                      //String id = session.getAttribute("id").toString(); 

                  if(session.getAttribute("id")==null) {
                	  out.println("<script>alert('로그인 후 이용해주세요.'); history.go(-1); </script>");
 }
                  else {    
                  %> 
                 
                	  <script> 
 alert("<%=productname %>이(가) 장바구니에 추가 되었습니다."); 
 history.go(-1);  
 </script> 

                  <%
                
}//else
                  }catch(Exception e){
                  }//catch
           
           
           %>
 
 
 <%if(productname == null){ 
out.println("<script>alert('장바구니가 비어 있습니다.'); history.go(-1); </script>"); 
} 	%> 






</body>
</html>