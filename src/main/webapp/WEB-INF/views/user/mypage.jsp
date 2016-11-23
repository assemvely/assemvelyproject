<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
     
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">


	function btn_delete()
	{
		if (confirm("탈퇴 하시겠습니까?") == true) { //확인
			location.replace('/user/deleteuser');
			
		} else { //취소
			return;
		}
	}
</script>
<style type="text/css">
/* USER PROFILE PAGE */
 .card {
    margin-top: 20px;
    padding: 30px;
    background-color: rgba(214, 224, 226, 0.2);
    -webkit-border-top-left-radius:5px;
    -moz-border-top-left-radius:5px;
    border-top-left-radius:5px;
    -webkit-border-top-right-radius:5px;
    -moz-border-top-right-radius:5px;
    border-top-right-radius:5px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.card.hovercard {
    position: relative;
    padding-top: 0;
    overflow: hidden;
    text-align: center;
    background-color: #fff;
    background-color: rgba(255, 255, 255, 1);
}
.card.hovercard .card-background {
    height: 130px;
}
.card-background img {
    -webkit-filter: blur(25px);
    -moz-filter: blur(25px);
    -o-filter: blur(25px);
    -ms-filter: blur(25px);
    filter: blur(25px);
    margin-left: -100px;
    margin-top: -200px;
    min-width: 130%;
}
.card.hovercard .useravatar {
    position: absolute;
    top: 15px;
    left: 0;
    right: 0;
}
.card.hovercard .useravatar img {
    width: 100px;
    height: 100px;
    max-width: 100px;
    max-height: 100px;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    border-radius: 50%;
    border: 5px solid rgba(255, 255, 255, 0.5);
}
.card.hovercard .card-info {
    position: absolute;
    bottom: 14px;
    left: 0;
    right: 0;
}
.card.hovercard .card-info .card-title {
    padding:0 5px;
    font-size: 20px;
    line-height: 1;
    color: #262626;
    background-color: rgba(255, 255, 255, 0.1);
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
}
.card.hovercard .card-info {
    overflow: hidden;
    font-size: 12px;
    line-height: 20px;
    color: #737373;
    text-overflow: ellipsis;
}
.card.hovercard .bottom {
    padding: 0 20px;
    margin-bottom: 17px;
}
.btn-pref .btn {
    -webkit-border-radius:0 !important;
}











</style>
<title>Insert title here</title>
</head>

<body>

	<input type=hidden name="loginid" id="loginid" value="${login.id}">
<div class="col-lg-6 col-sm-6">
    <div class="card hovercard">
        <div class="card-background">
            <img class="card-bkimg" alt="" src="http://lorempixel.com/100/100/people/9/">
            <!-- http://lorempixel.com/850/280/people/9/ -->
        </div>
        <div class="useravatar">
           
           <c:choose>
           	<c:when test="${empty login.imgname}">
           	 	 <img src="/resources/img/null.jpg" alt=""/>
           	</c:when>
            <c:when test="${not empty login.imgname}">
           		 <img src="/resources/img/${login.imgname}" alt=""/>
           	</c:when>
           
           </c:choose>
           
      

        </div>
        <div class="card-info"> <span class="card-title">${login.id}</span>

        </div>
    </div>
 </div>
    
    <h1>
    	<c:choose>
		<c:when test="${login.bsm=='b'}">
			<h1>구매자</h1>
		</c:when>




		<c:when test="${login.bsm=='s'}">

			<h1>판매자</h1>
		</c:when>
		</c:choose>
    	
    </h1>
    <h1>following : ${followingcounter}</h1>
    <h1>follower : ${followercounter}</h1>

	
	
	
		<h1>팔로잉 하기</h1>
		<table border="1">
		<tr>
		<th>id</th>
		<th>following</th>
		</tr>
	
		<c:forEach items= "${userlist}" var="userVO" >
		<tr>
		<td>${userVO.id}</td>
		<td><button onclick="location.href='/user/following?id=${userVO.id}'">following</button>
		</tr>
		</c:forEach>
		
		</table>
		
	
	<button onclick="btn_delete();">탈퇴</button>

</body>
</html>