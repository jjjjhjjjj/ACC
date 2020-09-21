<%@ page language="java" contentType="text/html; charset=euc-kr" %>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("euc-kr"); %>

<HTML>
<HEAD>
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
if (Modify.name.value.length < 1) {
	alert("�ۼ��ڸ� �Է��ϼ���.");
	Modify.name.focus(); 
        return false;
	}

if (Modify.pass.value.length < 1) {
	alert("��й�ȣ�� �Է��ϼ���.");
	Modify.pass.focus(); 
	return false;
	}

if (Modify.email.value.indexOf("@") + "" == "-1" ||
	Modify.email.value.indexOf(".") + "" == "-1" ||
	Modify.email.value == "" )
	{ 
		alert("E-mail�� �Է��ϼ���.");
		Modify.email.focus();
		return false;
	}

if (Modify.title.value.length < 1) {
	alert("�������� �Է��ϼ���.");
	Modify.title.focus(); 
	return false;
        }

if (Modify.contents.value.length < 1) {
	alert("�۳����� �Է��ϼ���.");
	Modify.contents.focus(); 
	return false;
        }

Modify.submit();
}

function list()
{
location.href = "listboard11.asp";
}

</SCRIPT>
</HEAD>

<BODY>

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
   
<%
String num = request.getParameter("num"); 

String driverName = "com.mysql.jdbc.Driver";
String dbURL = "jdbc:mysql://localhost:3307/test";


    Class.forName(driverName);
    Connection conn = DriverManager.getConnection(dbURL, "root", "dongyang");
    Statement stmt = conn.createStatement();


PreparedStatement pstmt = null;
ResultSet rs = null;

try {

String strSQL = "SELECT * FROM tblboard WHERE num = ?";
pstmt = conn.prepareStatement(strSQL);
pstmt.setInt(1, Integer.parseInt(num));

rs = pstmt.executeQuery();
rs.next();

String title = rs.getString("title");

%>
                   
<center><font size='3'><b> �亯�ϱ� </b></font>                  

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>
                 
<FORM Name='Modify' Action='reply11_input.jsp' Method='POST' OnSubmit='return Check()'>
<input type='hidden' name='num' value='<%=num %>'>
      
<TABLE border='0' width='600'>
	<TR>
		<TD width='100' bgcolor='cccccc'>
			<font size='2'><center><b>�ۼ���</b></center></font> 
		</TD>
		<TD>
			<p><input type='text' size='12' name='name' value=""> * �ʼ� </p>
		</TD>
	</TR>

	<TR>
		<TD width='100' bgcolor='cccccc'>
			<font size='2'><center><b>��й�ȣ</b></center></font>
		</TD>
		<TD>
			<p><input type='password' size='12' name='pass'> * �ʼ� </p>
		</TD>
	</TR>

	<TR>
		<TD width='100' bgcolor='cccccc'>
			<font size='2'><center><b>E-mail</b></center></font>
		</TD>
		<TD>
			<font size='2'><input type='text' size='40' maxlength='50' name='email' value=""></font>
		</TD>
	</TR>
	
	<TR>
      		<TD colspan='2'>
         		<hr size='1' noshade>
      		</TD>
	</TR>

	<TR>
		<TD width='100' bgcolor='cccccc'>
			<font size='2'><center><b>�� ����</b></center></font>
		</TD>
		<TD>
			<font size='2'><input type='text' size='70' maxlength='50' name='title' value="[Reply]<%=title %>"></font>
		</TD>
	</TR>

	<TR>
		<TD bgcolor='cccccc'>
			<font size='2'><center><b>�� ����</b></center></font>
		</TD>
		<TD>
         		<font size='2'>
         		<textarea cols='70' rows='15' wrap='virtual' name='contents'></textarea>
         		</font>
      		</TD>
	</TR>
	
	<TR>
		<TD colspan='2'><hr size='1' noshade></TD>
	</TR>

	<TR>
		<TD align='center' colspan='2' width='100%'>
		<TABLE>
			<TR>
				<TD width='200' align='center'>
					<input Type = 'Reset' Value = '�ٽ� �ۼ�'>
				</TD>
				<TD width='200' align='center'>
					<input Type = 'Button' Value = '�� ��' Name='Page' onClick='Check();'>
				</TD>
				<TD width='200' align='center'>
					<input Type = 'Button' Value = '���' Name='Page' onClick='list();'>
				</TD>
			</TR>
		</TABLE>
		</TD>
	</TR>
   
</TABLE>

<%
}catch(SQLException e){
   	out.print("SQL���� " + e.toString());
}catch(Exception ex){
   	out.print("JSP���� " + ex.toString());
}finally{  
	rs.close();
	pstmt.close();
	conn.close();
}
%>

</BODY>
</HTML>


