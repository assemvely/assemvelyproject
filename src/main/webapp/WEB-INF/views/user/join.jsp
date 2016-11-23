<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
p, h1, form, button{border:0; margin:0; padding:0;}
.spacer{clear:both; height:1px;}

.myform{
	margin:10px;
	width:400px;
	padding:14px;
}

#stylized{
	border:solid 2px #b7ddf2;
	background:#ebf4fb;
}
#stylized h1 {
	font-size:16px;
	font-weight:bold;
	margin-bottom:8px;
	font-family:nanumgothic,dotum;

}
#stylized p{
	font-size:11px;
	color:#666666;
	margin-bottom:20px;
	border-bottom:solid 1px #b7ddf2;
	padding-bottom:10px;
	font-family:dotum;
}
#stylized label{
	display:block;
	font-weight:bold;
	text-align:right;
	width:140px;
	float:left;
	font-family:tahoma;
}
#stylized .small{
	color:#666666;
	display:block;
	font-size:11px;
	font-weight:normal;
	text-align:right;
	width:140px;
	font-family:dotum;
	letter-spacing:-1px;
}
#stylized input{
float:left;
font-size:12px;
padding:4px 2px;
border:solid 1px #aacfe4;
width:200px;
margin:2px 0 20px 10px;
}
#stylized button{
clear:both;
margin-left:150px;
width:125px;
height:31px;
text-align:center;
line-height:31px;
background-color:#000;
color:#FFFFFF;
font-size:11px;
font-weight:bold;
font-family:tahoma;
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="Stylesheet" href="CSS/bootstrap.min.css" />
<style>
body {
   padding-top: 40px;
}
@font-face {
   font-family: 'Nanum Gothic Coding', monospace;
}
</style>
<script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script src="js/bootsrap.min.js"></script>
</head>

<title>Insert title here</title>

		<script type="text/javascript">

		function Rradio_OnOff(id)
		{
		
		   if(id == "Radio_On")
		   {
		      document.all["Radio_On"].style.display = 'none';         // 보이게
		      document.all["Radio_Off"].style.display = '';  // 안보이게
		   }
		   else
		   {
		      document.all["Radio_On"].style.display = '';  // 안보이게
		      document.all["Radio_Off"].style.display = 'none';         // 보이게
		   }
		}
				
		</script>


</head>
<body>

	<div id="stylized" class="myform">
		<form id="form" name="form" method="post" action="/user/join" enctype="multipart/form-data">
			<h1>회원가입</h1>
			

			<label>id <span class="small">이름 입력</span>	</label>
			 <input type="text" name="id" id="id"/> 
			<br/>
			
			<label>Password<span class="small">패스워드 6자 이상</span></label> 
			<input type="text" name="pw" id="pw" />
			<br/>

			<label>Email<span class="small">이메일주소</span>	</label> 
			<input type="text" name="email" id="email" />
			<br/>

			<input TYPE='radio' id='bsm' name='bsm' value='b' onclick="Rradio_OnOff('Radio_On');" checked/>
			<label for='b'>소비자
			<span class="small">소비자</span>
			</label><br/>
			<input TYPE='radio' id='bsm' name='bsm' value='s' onclick="Rradio_OnOff('Radio_Off');"/>
				<label for='b'>판매자
			<span class="small">판매자</span>
			</label>		
				
				<label>profile image<span class="small">profile img</span></label> 
				<input type="file" name="imgfile1"><br>
									
			<br/>
			
			<div id="Radio_On" style="display:none;">
			
				<label>사업자 서류 등록<span class="small">사업자 서류 등록</span></label> 
				<input type="file" name="imgfile2"><br>
								
			</div>
			
			<input type=hidden name="address" value="">
			<button type="submit">회원가입</button>
			<div class="spacer"></div>

		</form>
	</div>


</body>
</html>




