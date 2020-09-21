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
.all .main .main_box {
	height: 540px;
	width: 1000px;
	margin-top: 40px;
	margin-right: auto;
	margin-bottom: auto;
	margin-left: auto;
}
.all .main .main_box .main_img_box {
	height: 255px;
	width: 300px;
	float: left;
	margin-top: 5px;
	margin-right: 15px;
	margin-bottom: 15px;
	margin-left: 15px;
}
.all .main .main_box .main_img_box .main_img {
	height: 200px;
	width: 200px;
	margin-right: auto;
	margin-left: auto;
}
.all .main .main_box .main_img_box .main_text {
	height: 40px;
	width: 300px;
	margin-top: 15px;
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
<SCRIPT language="JavaScript">
function Check()
{
if (Form.keyword.value.length < 1) {
	alert("검색어를 입력하세요.");
	Form.keyword.focus(); 
         return false;
	}
}
</SCRIPT>
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
   
    
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("euc-kr"); %>

<%
String key = request.getParameter("key");
String keyword = request.getParameter("keyword");

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

if (key==null || keyword==null){
	strSQL = "SELECT count(*) FROM tblboardimg";
}else{
	strSQL = "SELECT count(*) FROM tblboardimg WHERE " + key + " like '%" + keyword + "%'";
}
rs = stmt.executeQuery(strSQL);
rs.next();
lastRow = rs.getInt(1);

rs.close();
%>

<center><font size='3'><b> review </b></font></TD>
                                    
<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>    

<TABLE border='0' cellspacing=1 cellpadding=2 width='600'>             
	
<%
if(lastRow > 0) {
	if(key==null || keyword==null){
		strSQL = "SELECT * FROM tblboardimg WHERE num BETWEEN " + startRow + " and " + endRow;
		rs = stmt.executeQuery(strSQL);
	} else {
		strSQL = "SELECT * FROM tblboardimg WHERE " + key + " like '%" + keyword + "%'";
		rs = stmt.executeQuery(strSQL);
	}

	for (i = 0; i < listSize; i++){	
		int j = 0;
%>
		<TR>
<%
		for(j = 0; j < 3; j++){		// 한 줄에 3개
			if(rs.next()){

			int listnum = rs.getInt("num");
			String title = rs.getString("title");
			String writedate = rs.getString("writedate");
			String filename = rs.getString("filename");
%>
			<TD>
	
			  <TABLE border='2' bgcolor='ededed'>
			<TR>
				<TD align=center width='170'>    
				<font size=2 color="black">
                                    <%=title %></a></font> 
				</TD>  
			</TR>
			<TR> 
				<TD align=center>
					<a href="write_output_p.jsp?num=<%=listnum %>">
					<img src=<%="D:/soo/soo/WebContent/img2/" + filename %> width="160" height="160">
				
				</TD>  
			</TR>
			<TR>
				<TD align=center>
                                    	<font size=2><%=writedate %>
                                    	</font>
				</TD> 
			</TR>
			</TABLE> 
	
		</TD>   
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

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE> 
                  	                   
<%
rs.close();
stmt.close();
conn.close();
}

if(lastRow > 0) {
	int setPage = 1;
	int lastPage = 0;
	if(lastRow % listSize == 0)
		lastPage = lastRow / listSize;
	else
		lastPage = lastRow / listSize + 1;

	if(currentPage > 1) {
%>
		<a href="listboard_p.jsp?pageNum=<%=currentPage-1%>">[이전]</a>	
<%	
	}
	for(i=setPage; i<=lastPage; i++) {
		if (i == Integer.parseInt(pageNum)){
%>
		[<%=i%>]
<%		
		}else{
%>
		<a href="listboard_p.jsp?pageNum=<%=i%>">[<%=i%>]</a>
<%
		}
	}
	if(lastPage > currentPage) {
%>
		<a href="listboard_p.jsp?pageNum=<%=currentPage+1%>">[다음]</a>
<%
	}
}
%>  

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>                    

<TABLE border=0 width=600>
	<TR>
		<TD align='center'>	
			<TABLE border='0' cellpadding='0' cellspacing='0'>
			<FORM Name='Form' Method='POST' Action='listboard_p.jsp' OnSubmit='return Check()'>
			<input type='hidden' name='search' value='1'>
			<TR>
				<TD align='right'>
				<select name='key' style="background-color:cccccc;">
				<option value='title' selected><font size='2'>
                                                        글제목</font></option>
				<option value='contents'><font size='2'>
                                                        글내용</font></option>
				<option value='name'><font size='2'>
                                                        작성자</font></option>
				</select>
				</TD>
				<TD align='left'>
					<input type='text' name='keyword' 
                                                   value='' size='20' maxlength='30'>
					<input type='submit' value='검색'>
				</td>
			  </TR>
			  </FORM>
			  </TABLE> 
		</TD>

		<TD align='right'>		
		<a href='write_p.jsp'>[등록]</a>				
		</TD>
	</TR>
</TABLE>

    </div>
    <div class="bottom"></div>
</div>

</body>
</html>