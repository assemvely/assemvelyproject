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

<li><img src="/resources/itemimg/${READ.imgname}" alt="�̹����� �����ϴ�"></li>
<li>name:${READ.name}</li>
<li>Price:${READ.price}</li>
<li>mileage:${READ.mileage}</li>


<br/>
<br/>
<br/>
<br/>
<hr/>
<li>${READ.content}



</body>
</html>