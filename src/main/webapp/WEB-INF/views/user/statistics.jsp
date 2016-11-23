<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

  <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<c:choose>
		<c:when test="${login.bsm=='m'}">
			<h1>manager 통계</h1>
			<h2>
				구매자 회원 수 : ${buyercounter} 		<br/> 
				판매자 회원 수 : ${sellercounter}		<br/>
				이번 주 sellingcnt : 					<br/> 
				브랜드 판매 순위 : 						<br/> 
				총 게시글 수 :							 <br/>


			</h2>
		</c:when>



		<c:when test="${login.bsm=='s'}">

			<h1>seller 통계</h1>
			<h2>
				총 구매자 회원 수 : 		<br />
				이번 주 내 계정 구매자 수 : <br />
				내 브랜드 순위 :			<br /> 
				아이템 판매 순위 : 		<br />
				총 게시글 수 : 			<br />

			</h2>
		</c:when>

	</c:choose>







</body>
</html>