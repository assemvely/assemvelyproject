<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2>ID : ${tempuser.id}</h2><br/>
	<h2>EMAIL : ${tempuser.email}
	 
	</h2><br/>
	
	<img src="/resources/img/${tempuser.imgname}" alt="이미지가 없습니다."><br/>	
	<img src="/resources/img/${tempuser.filename}" alt="이미지가 없습니다."><br/>
	
</body>
</html>