<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ACC</title>
<style type="text/css">
* {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
}
.all {
	height: auto;
	width: 1200px;
	margin: auto;
}
.all .top {
	height: 40px;
	width: 1200px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #999;
}
.all .top .bag {
	height: 40px;
	width: 80px;
	float: right;
}
.all .top .join {
	height: 40px;
	width: 80px;
	float: right;
}
.all .top .login {
	height: 40px;
	width: 80px;
	float: right;
}
.all .top .my {
	height: 40px;
	width: 80px;
	float: right;
}
.all .top .offical {
   height: 40px;
   width: 80px;
   float: right;
}
.all .top .qa {
	height: 40px;
	width: 80px;
	float: left;
}
.all .top .review {
	height: 40px;
	width: 80px;
	float: left;
}
.all .logo {
	height: 220px;
	width: 1200px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #999;
	background-image: url(img/logo.png);
}
.all .menu {
	height: 80px;
	width: 1200px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #999;
}
.all .menu .silver {
	float: left;
	height: 80px;
	width: 600px;
}
.all .menu .gold {
	background-image: url(img/gold.png);
	float: left;
	height: 80px;
	width: 600px;
}
.all .main {
	height: 250px;
	width: 1200px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #999;
}
.main .review_img {
	float: left;
	height: 112px;
	width: 1200px;
	background-image: url(img/review_img.png);
}
.main .review_table {
	height: auto;
	width: 900px;
	border-top-width: 2px;
	border-bottom-width: 2px;
	border-top-style: solid;
	border-bottom-style: solid;
	border-top-color: #878787;
	border-bottom-color: #878787;
	float: left;
	margin-top: 20px;
	margin-left: 200px;
}
.all .bottom {
	height: 80px;
	width: 1200px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #999;
	background-image: url(img/bottom.png);
}
</style>
</head>
<body>
<div class="all">
	<div class="top">
   	  <div class="bag">
      	  	<a class = "bag_a" href = "cart.jsp"> 
        		<img src="img/bag.png" />
    		</a>
      </div>
      <div class="join">
      	  	<a class = "join_a" href = "join.jsp"> 
        		<img src="img/join.png" />
    		</a>      
      </div>
      	
<%
try{
String strUser = "yes";
String strSession = session.getAttribute("user").toString();
String id = session.getAttribute("id").toString();

if (!strUser.equals(strSession)) {
%>
      <div class="login">
      	  	<a class = "login_a" href = "member.jsp"> 
        		<img src="img/login.png" />
    		</a>      
      </div>
      <%
} else {
	

%>
<div class="login">
      	  	<a class = "login_a" href = "logout.jsp"> 
        		<img src="img/logout.png" />
    		</a>      
      </div>
      <%
}
}catch(NullPointerException e){
%>

 <div class="login">
      	  	<a class = "login_a" href = "login.jsp"> 
        		<img src="img/login.png" />
    		</a>      
      </div>
      
      <% } %>
      
      
      <div class="my">
      	  	<a class = "my_a" href = "member_page.jsp"> 
      	  	
        		<img src="img/my.png" />
    		</a>      
      </div>   
  
  <%
try{

String id = session.getAttribute("id").toString();

if (id.equals("master")) {
%>
   <div class="offical">
              <a class = "offical_a" href = "offical.html"> 
              <img src="img/offical.png" />
          </a>              
      </div>
      
        <%
} 
}catch(NullPointerException e){ } %>
      
          <div class="qa">
      	  	<a class = "qa_a" href = "listboard11.jsp"> 
        		<img src="img/qa.png" />
    		</a>      
      </div>

      <div class="review">
      	  	<a class = "review_a" href = "listboard_p.jsp"> 
        		<img src="img/review.png" />
    		</a>      
      </div>         
      
  </div>
  
  <div class="logo">
  	<a class = "logo_a" href = "main.jsp"> 
        	<img src="img/logo.png" />
    </a>
  </div>
    <div class="menu">
    	<div class="silver">
      	  	<a class = "silver_a" href = "silver_main.jsp"> 
        		<img src="img/silver.png" />
    		</a>        
        </div>
        <div class="gold"></div>
    </div>
   
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("euc-kr"); %>

<%
String num = request.getParameter("num"); 
String pass = request.getParameter("pass"); 

String driverName = "org.gjt.mm.mysql.Driver";
    String dbURL = "jdbc:mysql://localhost:3307/test";

    Class.forName(driverName);
    Connection con = DriverManager.getConnection(dbURL, "root", "dongyang");
   
   
PreparedStatement pstmt = null;
ResultSet rs = null;

String strSQL = "SELECT pass FROM tblboardimg WHERE num = ?";
pstmt = con.prepareStatement(strSQL);
pstmt.setInt(1, Integer.parseInt(num));

rs = pstmt.executeQuery();
rs.next();

 String goodpass = rs.getString("pass").trim();
 if (pass.equals(goodpass)){
		response.sendRedirect("modify_p.jsp?num=" + num);
	}else{
		response.sendRedirect("modify_pass_p.jsp?num=" + num);	
	}

rs.close();
pstmt.close();
con.close();
%>
       </div>
    </div>
    <div class="bottom"></div>
</div>
</body>
</html>