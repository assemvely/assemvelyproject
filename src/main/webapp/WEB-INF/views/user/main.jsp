<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    
       <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="Stylesheet" href="CSS/bootstrap.min.css" />
<style>
body {
   padding-top: 40px;
}
@font-face {
   font-family: 'Nanum Gothic Coding', monospace;
}
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}

</style>
<script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script src="js/bootsrap.min.js"></script>

	
	<script type="text/javascript">
	function button1_click() {
		
		window.open("http://localhost:9090/user/loginpage", "top=0, left=0, width=800, height=500, scrollbars=no, resizable=no ,status=no ,toolbar=no");
		
	}
	
	</script>

</head>



<title>Insert title here</title>
</head>
<body>

	<h1>메인 화면</h1>
		
	<c:choose>

		<c:when test="${empty login}">
			
				<button onclick="button1_click();"  id='loginbtn'>로그인</button>

		</c:when>

		<c:when test="${not empty login}">
			
			<h1>${login.id}님 환영합니다.</h1>
								
			<button onclick="location.href='user/logout'">로그아웃</button>
					
			<div class="dropdown">
				<button class="dropbtn">드롭다운</button>
				<div class="dropdown-content">
					
					<c:choose>
						<c:when test="${login.bsm=='m'}">
							<a href="/user/tomanaginguser">회원관리</a>
							<a href="/user/tostatistics">통계보기</a>
							<a href="/user/towaitinglist">판매자 대기현황</a>
							<a href="/manager/posting">관리자 글쓰기</a>
							<a href="/manager/readposting">관리자 게시판</a>
							
						</c:when>
						
						<c:when test="${login.bsm=='b'}">
							<a href="/user/mypage">내 계정</a>
							<a href="#">장바구니</a>
							<a href="#">마이쇼핑</a>
						</c:when>
						
						<c:when test="${login.bsm=='s'}">
							<a href="/user/mypage">내 계정</a>
							<a href="/user/tostatistics">통계보기</a>
						</c:when>
						
					</c:choose>
		
					
				</div>
			</div>


		</c:when>
		
	</c:choose>
	

	
</body>
</html>