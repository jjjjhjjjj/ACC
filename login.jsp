<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ACC 로그인</title>
<style type="text/css">
* {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
}
.all {
	height: 100%;
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
	height: 600px;
	width: 1200px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #999;
}
.all .main .login_img {
	background-image: url(img/login_img.png);
	height: 112px;
	width: 1200px;
	margin-top: 20px;
	float: left;
}
.all .main .login_table {
	float: left;
	height: 468px;
	width: 1200px;
}
.all .main .login_table .login_table1 {
	float: left;
	height: 468px;
	width: 602px;
	background-image: url(img/login_img2.png);
}
.all .main .login_table .login_table2 {
	float: left;
	height: 437px;
	width: 598px;
	padding-top: 30px;
}
.all .main .login_table .login_table2 .input_div {
	float: left;
	height: 300px;
	width: 300px;
}
.all .main .login_table .login_table2 .input_div .intput_box {
	height: 50px;
	width: 200px;
	margin-top: 50px;
}
.all .main .login_table .login_table2 .input_div .intput_box .input_size {
	height: 50px;
	width: 200px;
}
.all .main .login_table .login_table2 .input_img1 {
	float: left;
	height: 300px;
	width: 298px;
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
if (Member.id.value.length < 1){
	alert("아이디를 입력하세요.");
	Member.id.focus();
	return false;
}

if (Member.pass.value.length < 1){
	alert("비밀번호를 입력하세요.");
	Member.pass.focus();
	return false;
}




Member.submit();
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
      <div class="login">
      	  	<a class = "login_a" href = "login.jsp"> 
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
   
     
    
    
    <FORM Name='Member' Method='post' Action='member_ok.jsp'>
	<div class="main">
   	  <div class="login_img"></div>
      <div class="login_table">
       	<div class="login_table1"></div>
        
       	<div class="login_table2">
            <div class="input_div">
            
              <div class="intput_box">
                  <input class="input_size" name="id" type="text" />
              </div>
                
              <div class="intput_box">
                    <input class="input_size" name="pass" type="password" />
              </div>    
                    	
          </div>
            
          <div class="input_img1">
            <a class = "input_login1_a"> 
                    <input type ="image" src="img/login_img3.png" onclick='Check(); return false' value='로그인'  />
            </a>            
          </div>
           </FORM> 
           
           
           
          <div class="input_img2">
            <a class = "input_login2_a" href = "join.jsp"> 
                    <img src="img/login_img4.png" />
            </a>                
          </div>
            
        </div>
        
      </div>
  </div>
  
  <div class="bottom"></div>
</div>
</body>
</html>