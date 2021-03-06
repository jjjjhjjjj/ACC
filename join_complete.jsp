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
	height: 1000px;
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
	height: 580px;
	width: 1200px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #999;
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

<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("euc-kr"); %>

<%

String id1 = request.getParameter("id");
String pass = request.getParameter("pass"); 
String name = request.getParameter("name");
String juminnum1 = request.getParameter("juminnum1");
String juminnum2 = request.getParameter("juminnum2");
String zip = request.getParameter("zip");
String address1 = request.getParameter("address1");
String address2 = request.getParameter("address2");
String phone = request.getParameter("phone");
String email = request.getParameter("email");

String check_ok = "yes";

if (id1 == "")
	check_ok = "no";

if (pass == "")
	check_ok = "no";

if (name == "")
	check_ok = "no";

if (juminnum1 == "")
	check_ok = "no";

if (juminnum2 == "")
	check_ok="no";

String driverName = "org.gjt.mm.mysql.Driver";
String dbURL = "jdbc:mysql://localhost:3307/test";

Class.forName(driverName);
Connection conn = DriverManager.getConnection(dbURL,"root","dongyang");

PreparedStatement pstmt1 = null;

String strSQL1 = "SELECT Max(num) FROM tbllogin";
pstmt1 = conn.prepareStatement(strSQL1);
ResultSet rs1 = pstmt1.executeQuery();
int num = 1;

if (!rs1.wasNull()){
	rs1.next();
	num = rs1.getInt(1) + 1;	
}	
rs1.close();

Statement stmt = conn.createStatement();

String strSQL = "SELECT id FROM tbllogin where id='" + id1 + "'";
ResultSet rs = stmt.executeQuery(strSQL);

if (!rs.next())
	check_ok="yes";
else
	check_ok="no";

if (check_ok == "yes"){
	strSQL = "INSERT INTO tbllogin(num,id,pass,name,juminnum1, juminnum2,zip,address1,address2,phone,email)";
	strSQL = strSQL +  "VALUES('" + num + "','" + id1 + "', '" + pass + "', '" + name + "', '" + juminnum1 + "',";
	strSQL = strSQL +  "'" + juminnum2 + "', '" + zip + "', '" + address1 + "',"; 
        strSQL = strSQL +  "'" + address2 + "', '" + phone + "', '" + email + "')";
	stmt.executeUpdate(strSQL);
%>


<body>
<div class="all">
	<div class="top">
   	  <div class="bag">
      	  	<a class = "bag_a" href = "bag.html"> 
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
    
	<div class="main">
        <a class = "main_a" href = "main.jsp"> 
            <img src="img/join_complete_img.png"" />
        </a>  

    </div>
    <div class="bottom"></div>
</div>
<%} else {// else문 추가해야함 회원가입 실패 member_output.jsp 써야함 %>
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
      <div class="login">
      	  	<a class = "login_a" href = "member.jsp"> 
        		<img src="img/login.png" />
    		</a>      
      </div>
      <div class="my">
      	  	<a class = "my_a" href = "member_page.jsp"> 
        		<img src="img/my.png" />
    		</a>      
      </div>   
  
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
    
	<div class="main">
        <a class = "main_a" href = "main.jsp"> 
            <img src="img/join_complete2_img.png"" />
        </a>  

    </div>
    <div class="bottom"></div>
</div>

<%} %>
</body>
</html>