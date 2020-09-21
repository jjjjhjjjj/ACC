<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ACC 마이페이지</title>
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
	height: 800px;
	width: 1200px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #999;
}
.main .mypage_img {
	float: left;
	height: 112px;
	width: 1200px;
	background-image: url(img/mypage_img.png);
}
.main .mypage_table {
	height: 210px;
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

<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("euc-kr"); %>

<% 
String id = session.getAttribute("id").toString();

String driverName = "org.gjt.mm.mysql.Driver";
    String dbURL = "jdbc:mysql://localhost:3307/test";

    Class.forName(driverName);
    Connection con = DriverManager.getConnection(dbURL, "root", "dongyang");


PreparedStatement pstmt = null;
ResultSet rs = null;

try {

String strSQL = "SELECT * FROM tbllogin WHERE id = ?";
pstmt = con.prepareStatement(strSQL);
pstmt.setString(1, id);

rs = pstmt.executeQuery();
rs.next();


///////
String name = rs.getString("name");
String id1 = rs.getString("id");
String email = rs.getString("email");
String phone = rs.getString("phone");
String zip = rs.getString("zip");
String address1 = rs.getString("address1");
String address2 = rs.getString("address2");
%>

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
//String id = session.getAttribute("id").toString();

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

//String id = session.getAttribute("id").toString();

if (id.equals("master")) {
%>
   <div class="offical">
              <a class = "offical_a" href = "listboard_o.jsp"> 
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
   	  <div class="mypage_img"></div>
      <div class="mypage_table">
      <center><font size='3'><b>  </b></font>

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>



<TABLE border='0' cellspacing=3 cellpadding=3 width='600'>
	<TR>
    
    		<TD align=center>
      		<font size='3'>아이디(ID): <%=id1 %></font>
    		</TD>
    	</TR>
	<TR >
		<TD align='center'>
    		<font size='3'><b>이메일(Email) : <%=email %></font>
		</TD>
	</TR>
	<TR >
		<TD align='center'>
    		<font size='3'><b>전화번호(Phone) : <%=phone %></font>
		</TD>
	</TR>
    <TR  >
		<TD align='center'>
    		<font size='3'><b>우편번호(zip) : <%=zip %></font>
		</TD>
	</TR>
	<TR  >
		<TD align='center'>
    		<font size='3'><b>주소(Address) : <%=address1 %> <%=address2 %></font>
		</TD>
	</TR>
    
</TABLE>


<TABLE border='0' width='600'>
	<TR>
    		<TD align='right'>
		<font size='2'><br><font size='2'>&nbsp;</font>
    		</TD>
	</TR>
</TABLE>

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
  	<TR>
  		<TD><hr size='1' noshade>
  		</TD>
  	</TR>
</TABLE>




<TABLE border='0' width='600' >
	<TR>
		<TD align='left'>
			<a href="member_mody_pass4.jsp?id=<%=id %>">[수정하기]</a>
			<a href="member_del_pass4.jsp?id=<%=id %>">[삭제하기]</a>
		</TD>

	</TR>
</TABLE>





</TABLE>   
      </div>
      
  </div>
    <div class="bottom"></div>
</div>

<%

}catch(SQLException e){
   	out.print("SQL에러 " + e.toString());
}catch(Exception ex){
   	out.print("JSP에러 " + ex.toString());
}finally{  
	rs.close();
	pstmt.close();
	con.close();
}
%>

</TABLE>
</body>
</html>