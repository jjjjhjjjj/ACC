<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.ArrayList"%> 
<%@ page import = "java.util.Enumeration,java.util.Date" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ACC 장바구니</title>
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
.all .main .bag_top {
	background-image: url(img/bag_img.png);
	float: left;
	height: 112px;
	width: 1200px;
}
.all .main .bag_id {
	float: left;
	height: 50px;
	width: 1200px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #878787;
}
.all .main .bag_main {
	float: left;
	height: 638px;
	width: 1200px;
}
.all .main .bag_id p {
	font-size: 15px;
	height: 20px;
	width: 300px;
	margin-top: 15px;
	margin-left: 50px;
}
.all .main .bag_main .bag_box {
	height: 300px;
	width: 800px;
	margin-top: 5px;
	margin-right: auto;
	margin-bottom: 15px;
	margin-left: auto;
}
.all .main .bag_main .bag_box .bag_img {
	height: 250px;
	width: 300px;
	margin-top: 20px;
	margin-left: 20px;
	float: left;
}
.all .main .bag_main .bag_box .bag_list {
	float: left;
	height: 250px;
	width: 300px;
	margin-top: 20px;
	margin-left: 20px;
}
.all .main .bag_main .bag_box .bag_del {
	float: right;
	height: 250px;
	width: 100px;
	margin-top: 20px;
	margin-right: 20px;
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

<%
 request.setCharacterEncoding("euc-kr");
int silver = 19000;//상품가격



%>

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
      <%if(session.getAttribute("id")!=null) { %>
      <div class="login">
      	  	<a class = "login_a" href = "logout.jsp"> 
        		<img src="img/logout.png" />
    		</a>      
      </div>
      <%} else {%>
      <div class="login">
      	  	<a class = "login_a" href = "login.jsp"> 
        		<img src="img/login.png" />
    		</a>      
      </div>
      <%} %>
      
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
    
	
      <% 
      try{
        
    	//  String id = session.getAttribute("id").toString();
    	  ArrayList <String> list = (ArrayList)session.getAttribute("productlist"); 
      if(session.getAttribute("id")==null) {
    	  out.println("<script>alert('로그인 후 이용해주세요.'); history.go(-1); </script>"); 
       } else {
             
             	 if(list == null){
             		out.println("<script>alert('장바구니가 비어있습니다.'); history.go(-1); </script>"); 
       }else{ %>
             	<div class="main">
             	  <div class="bag_top"></div>
                <div class="bag_id">
            
                 	<p><%=session.getAttribute("id") %>님의 장바구니 입니다.</p>
                </div>
                <% 
                

        for(String i : list ){
       
        	
        %>
           <div class="bag_main">
      	<div class="bag_box">
        	<div class="bag_img">
            	<img src="img/bag_silver.png" />
            </div>
            <div class="bag_list">
             <center>

           <center><h1></h1></center><br><br><br>
           <center><h1> <%=i%></h1></center><br><br><br>
           <% if(i.equals("1set")) { %>

           <center><h3><%=silver%>원</h3></center>   
                             </div>
             <Form Action='cart_delete.jsp' Method='post'>      
            <div class="bag_del">
            	 <input type="image" src="img/bag_delete.png" type="submit" />
            </div>
            </Form>
            
           <%}else if  (i.equals("2set")){ %>



           <center><h3><%=silver*2%>원</h3></center>       
                             </div>
             <Form Action='cart_delete.jsp' Method='post'>      
            <div class="bag_del">
            	 <input type="image" src="img/bag_delete.png" type="submit" />
            </div>
            </Form>


            <% }else if(i.equals("3set")) {%>

                                      
           <center><h3><%=silver*3%>원</h3></center>  
                             </div>
             <Form Action='cart_delete.jsp' Method='post'>      
            <div class="bag_del">
            	 <input type="image" src="img/bag_delete.png" type="submit" />
            </div>
            </Form>            
    
    <%
        }
    } //for
        }//else
       }//login else
      }catch(NullPointerException e){
      }
      
    %>    
            
        </div>
        
      
      </div>
      
      
  </div>
    <div class="bottom"></div>
</div>
</body>
</html>












