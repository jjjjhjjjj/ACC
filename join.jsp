<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ACC 회원가입</title>

<SCRIPT LANGUAGE="JavaScript">

function Check() 

{

if (Member_Input.id.value.length < 1){

	alert("아이디를 입력하세요.");

	Member_Input.id.focus();

	return false;

	}

 

if (Member_Input.pass.value.length < 1){

	alert("비밀번호를 입력하세요.");

	Member_Input.pass.focus();

	return false;

	}

if (Member_Input.pass2.value.length < 1){

	alert("비밀번호 확인을 입력하세요.");

	Member_Input.pass2.focus();

	return false;

	}


if (Member_Input.name.value.length < 1){

	alert("이름을 입력하세요.");

	Member_Input.name.focus();

	return false;

	}

 

if (Member_Input.juminnum1.value.length < 1){

	alert("주민등록번호를 입력하세요.");

	Member_Input.juminnum1.focus();

	return false;

	}

 

if (Member_Input.juminnum1.value.length!= 6){

	alert("주민등록번호 앞자리는 6자리 입니다.");

	Member_Input.juminnum1.focus();

	return false;

	}

 

for (var i=0;i<Member_Input.juminnum1.value.length;i++)

{

	if (Member_Input.juminnum1.value.charAt(i) < "0" || Member_Input.juminnum1.value.charAt(i) > "9")

	{

	alert("주민등록번호는 숫자만 가능합니다.");

	Member_Input.juminnum1.focus();

	return false;

	}

}

 

if (Member_Input.juminnum2.value.length < 1){

	alert("주민등록번호를 입력하세요.");

	Member_Input.juminnum2.focus();

	return false;

	} 

 

if (Member_Input.juminnum2.value.length != 7 ){

	alert("주민등록번호 뒷자리는 7자리 입니다.");

	Member_Input.juminnum2.focus();

	return false;

	}

 

for (var i=0;i<Member_Input.juminnum2.value.length;i++)

{

	if (Member_Input.juminnum2.value.charAt(i) < "0" || Member_Input.juminnum2.value.charAt(i) > "9")

	{

	alert("주민등록번호는 숫자만 가능합니다.");

	Member_Input.juminnum2.focus();

	return false;

	}

}

 

var sum,a,b,c,d,e,f,g,j,i,j,k,l,m;

 

a = parseInt(Member_Input.juminnum1.value.charAt(0));

b = parseInt(Member_Input.juminnum1.value.charAt(1)); 

c = parseInt(Member_Input.juminnum1.value.charAt(2));

d = parseInt(Member_Input.juminnum1.value.charAt(3));

e = parseInt(Member_Input.juminnum1.value.charAt(4));

f = parseInt(Member_Input.juminnum1.value.charAt(5));

g = parseInt(Member_Input.juminnum2.value.charAt(0));

h = parseInt(Member_Input.juminnum2.value.charAt(1));

i = parseInt(Member_Input.juminnum2.value.charAt(2));

j = parseInt(Member_Input.juminnum2.value.charAt(3));

k = parseInt(Member_Input.juminnum2.value.charAt(4));

l = parseInt(Member_Input.juminnum2.value.charAt(5));

m = parseInt(Member_Input.juminnum2.value.charAt(6));

 

sum = a*2 + b*3 + c*4 + d*5 + e*6 + f*7 + g*8 + h*9 + i*2 + j*3 + k*4 + l*5;

 

var namuji = sum % 11;

var gumsa = 11 - namuji;

var check_no = gumsa % 10;

 

if (check_no != m){

	alert("올바른 주민등록번호가 아닙니다.");

	Member_Input.juminnum2.focus();

	return false;

	}	 

Member_Input.submit();

}

 

function Check_focus()

{

var strfocus1 = Member_Input.juminnum1.value.length;

if(strfocus1 == 6)

Member_Input.juminnum2.focus(); 

}	  

 

function ZipCode() 

{

browsing_window = window.open("zipcode.jsp", "_zipinput","height=300,width=600, menubar=no,directories=no,resizable=no,status=no,scrollbars=yes");

browsing_window.focus();

}

function Check_id() 

{

browsing_window = window.open("checkid.jsp?id="+Member_Input.id.value, "_idcheck","height=200,width=300, menubar=no,directories=no,resizable=no,status=no,scrollbars=yes");

browsing_window.focus();

}
</SCRIPT>   


<title>ACC 회원가입</title>
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
	height: 1082px;
	width: 1200px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #999;
}
.all .main .join_img {
	background-image: url(img/join_img.png);
	height: 112px;
	width: 1200px;
	margin-top: 20px;
	float: left;
}
.all .main .join_table {
	float: left;
	height: 800px;
	width: 800px;
	margin-top: 20px;
	margin-left: 200px;
	border: 1px solid #878787;
}
.all .main .join_table .join_left_box {
	height: 648px;
	width: 200px;
	float: left;
	border-right-width: 1px;
	border-right-style: solid;
	border-right-color: #878787;
}
.all .main .join_table .join_left_box .join_box {
	float: left;
	height: 80px;
	width: 200px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #878787;
}
.all .main .join_table .join_left2 {
	height: 152px;
	width: 200px;
	float: left;
	border-right-width: 1px;
	border-right-style: solid;
	border-right-color: #878787;
}
.all .main .join_table .join_right_box {
	float: left;
	width: 599px;
	height: 648px;
}
.all .main .join_table .join_right_box .join_box3 {
	float: left;
	height: 80px;
	width: 600px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #878787;
}

.all .main .join_table .join_right_box .join_right .join_box3 .intput_box .input_size {
	height: 50px;
	width: 200px;
	margin-top: 15px;
	margin-left: 15px;
	float: left;
}
.all .main .join_table .join_right_box .join_right .join_box3 .intput_box .input_size2 {
	height: 50px;
	width: 200px;
	margin-top: 15px;
	margin-left: 10px;
	float: left;
}
.all .main .join_table .join_right_box .join_right .join_box3 .intput_box .input_size3 {
	height: 50px;
	width: 400px;
	margin-top: 15px;
	margin-left: 10px;
	float: left;
}
.all .main .join_table .join_right_box .join_right .join_box3 .intput_box p {
	height: 50px;
	width: 10px;
	margin-top: 30px;
	margin-left: 10px;
	float: left;
	
}

.all .main .join_table .join_right_box .join_right2 .join_box4 .intput_box2 .input_size4{
	height: 50px;
	width: 550px;
	margin-top: 15px;
	margin-left: 10px;
	float: left;
	
}
.all .main .submit {
	float: left;
	width: 1200px;
	height: 80px;
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

if (!id.equals("master")) {
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
    <div class="join_img"></div>
    <div class="join_table">
    
   	  <div class="join_left_box">
      
          <div class="join_left">
          
            <div class="join_box">
                <img src="img/join_left_1.png" />
            </div>
            
            <div class="join_box">
                <img src="img/join_left_2.png" />
            </div>
            
            <div class="join_box">
                <img src="img/join_left_3.png" />
            </div>
            
            <div class="join_box">
                <img src="img/join_left_4.png" />
            </div>
            
            <div class="join_box">
                <img src="img/join_left_5.png" />
            </div>
            
            <div class="join_box">
                <img src="img/join_left_8.png" />
            </div>
            
            <div class="join_box">
                <img src="img/join_left_9.png" />
            </div>
            
            <div class="join_box">
                <img src="img/join_left_6.png" />
            </div>
            
         </div>
            
        <div class="join_left2">
            <div class="join_box2">
                <img src="img/join_left_7.png" />
            </div>
            
      	  </div>
          
      </div>
      
      
   <FORM Name='Member_Input' Method='post' Action='join_complete.jsp'>
      
       <div class="join_right_box">
      	<div class="join_right">
        
        	<div class="join_box3">
              <div class="intput_box">
                  <input class="input_size" name="id" type="text" />
                  <input type = "image" src="img/join_right_1.png" OnClick='Check_id() ; return false' value='ID 중복검사' />
              </div> 
            </div>


        	<div class="join_box3">
              <div class="intput_box">
                  <input class="input_size" name="pass" type="password"  />
              </div> 
            </div>
            
        	<div class="join_box3">
              <div class="intput_box">
                  <input class="input_size" name="pass2" type="password" />
              </div> 
            </div>
            
        	<div class="join_box3">
              <div class="intput_box">
                  <input class="input_size" name="name" type="text" />
              </div> 
            </div>
            
         	<div class="join_box3">
              <div class="intput_box">
                <input class="input_size" name="juminnum1" type="text" />
                <p> - </p>
                <input class="input_size2" name="juminnum2" type="password" />
              </div> 
            </div>
            
        	<div class="join_box3">
              <div class="intput_box">
                  <input class="input_size3" name="phone" type="text" />
              </div> 
            </div>
            
        	<div class="join_box3">
              <div class="intput_box">
                  <input class="input_size3" name="email" type="text" />
              
              </div> 
            </div>

        	<div class="join_box3">
              <div class="intput_box">
                  <input class="input_size" name="zip" type="text" onFocus='Member_Input.address2.focus()'  />
                  <input type ="image" src="img/join_right_2.png" OnClick='ZipCode();  return false;'  value='우편번호검색'/>
              </div> 
            </div>                                                                                 
        </div>
      
         <div class="join_right2">
            
           <div class="join_box4">
				<div class="intput_box2">
                  <input class="input_size4" name="address1" type="text" />
                  <input class="input_size4" name="address2" type="text" />
              </div> 
            </div>
            
      	  </div>      
      	
      </div>
    
    </div>
    
    <div class="submit">
            <a class = "submit_a" > 
                    <input type = "image" src="img/join_right_3.png" OnClick='Check(); return false; ' value='회원가입' />
            </a> 
    </div>
    
  </div>
  
  </Form>
  
  <div class="bottom"></div>
</div>
</body>
</html>