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
	height: 2000px;
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
	height: 1580px;
	width: 1200px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #999;
}
.all .main .main_top {
	height: 400px;
	width: 1200px;
}
.all .main .main_top .main_top_1 {
	float: left;
	height: 400px;
	width: 600px;
	background-image: url(img/main_img1.png);
}
.all .main .main_top .main_top_2 {
	float: right;
	height: 400px;
	width: 600px;
	background-image: url(img/main_img2.png);
}
.all .main .main_bottom {
	height: 1180px;
	width: 1200px;
}
.all .main .main_bottom .main_btn {
	height: 80px;
	width: 600px;
	margin: auto;
}
.all .main .main_bottom .main_btn .btn_left {
	float: left;
	height: 80px;
	width: 200px;
}
.all .main .main_bottom .main_btn .select {
	height: 80px;
	width: 100px;
	float: left;
}
.all .main .main_bottom .main_btn .select .select_amount {
	width: 100px;
	margin-top: 30px;
}
.all .main .main_bottom .main_btn .btn_right {
	float: right;
	height: 80px;
	width: 200px;
}
.all .main .main_bottom .main_img {
	float: left;
	width: 1200px;
	height: 1100px;
	background-image: url(img/main_img3.png);
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
    
    	<div class="main_top">
        	<div class="main_top_1"></div>
            <div class="main_top_2">
            
            </div>
        </div>
        
    <Form Action='cart_add.jsp' Method='post'>      
        <div class="main_bottom">
       	  <div class="main_btn">
          		<div class="select">
          		<select name="product" class="select_product">
            
                        <option value="1set">earring 1set</option>
                        <option value="2set">earring 2set</option>
                        <option value="3set">earring 3set</option>
                        
      			</select>
          		

                </div>
                  	
                          	<div class="btn_left">
                	<a class = "btn_left_a" href = "수정.html"> 
        				<input type="image" src="img/main_img4.png" type="submit" />
    				</a>
                </div>
                
                </FORM>
                
                   <Form Action='product_buy.jsp' Method='post'>          
              <div class="btn_right">
                	<a class = "btn_right_a" href = "수정.html"> 
        	  <input type="image" src="img/main_img5.png" type="submit" /></button>
    				</a>
              </div>
              </Form>
              
              
            </div>
            
            
            
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("euc-kr"); %>

<%


String pageNum = request.getParameter("pageNum");
if(pageNum == null){
	pageNum = "1";	
}

int listSize = 9; // 한 페이지에 9개 올림
int currentPage = Integer.parseInt(pageNum);
int startRow = (currentPage - 1) * listSize + 1;
int endRow = startRow + listSize - 1;
int lastRow = 0;
int i = 0;
String strSQL = "";

String driverName = "org.gjt.mm.mysql.Driver";
String dbURL = "jdbc:mysql://localhost:3307/test";

Class.forName(driverName);
Connection conn = DriverManager.getConnection(dbURL,"root","dongyang");

Statement stmt = conn.createStatement();
ResultSet rs = null;


	strSQL = "SELECT count(*) FROM tblboardimg2";

rs = stmt.executeQuery(strSQL);
rs.next();
lastRow = rs.getInt(1);

rs.close();
%>

<center><font size='3'><b></b></font></TD>
                                    

<TABLE border='0' cellspacing=1 cellpadding=2 width='600'>             
	
<%
if(lastRow > 0) {

		strSQL = "SELECT * FROM tblboardimg2 WHERE num BETWEEN " + startRow + " and " + endRow;
		rs = stmt.executeQuery(strSQL);
	

	for (i = 0; i < listSize; i++){	
		int j = 0;
%>
		<TR>
<%
		for(j = 0; j < 1; j++){		// 한 줄에 1개
			if(rs.next()){

			int listnum = rs.getInt("num");
			String title = rs.getString("title");
			String writedate = rs.getString("writedate");
			String filename = rs.getString("filename");
%>
			
	 <%
try{

String id = session.getAttribute("id").toString();

if (id.equals("master")) {
%>
<TD align=center>
					<a href="write_output_o.jsp?num=<%=listnum %>">
					<img src=<%="D:/soo/soo/WebContent/img3/" + filename %> width="400" height="400">
				</TD>  
      
        <%
} else {%>
	<TD align=center>
	
	<img src=<%="D:/soo/soo/WebContent/img3/" + filename %> width="400" height="400">
</TD>  

<% 
}
}catch(NullPointerException e){ 
	%>
	<TD align=center>
	
	<img src=<%="D:/soo/soo/WebContent/img3/" + filename %> width="400" height="400">
</TD>  
	
<% } %>
			
				
		
			
	
	 
<% 
			}else{
			break;	
		}
		}
		i = i + j;  
%>
		</TR>
<%  
	}	
%>

 

	
                  	                   
<%
rs.close();
stmt.close();
conn.close();
}

%>
  <%
try{

String id = session.getAttribute("id").toString();

if (id.equals("master")) {
%>
 <Form Action='write_o.jsp' Method='post'>          
              <div class="btn_right">
                	<a class = "btn_right_a" href = "수정.html"> 
        	  <input type="image" src="img/modify.png" type="submit" /></button>
    				</a>
              </div>
              </Form>
      
        <%
} 
}catch(NullPointerException e){ } %>
    
        
        
  

</body>
</html>
