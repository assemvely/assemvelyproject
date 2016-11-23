<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<style>
@font-face {
	font-family: 'Nanum Gothic Coding', monospace;
	padding-top: 70px;
}

#main_footer {
	/* footer 중앙 정렬 */
	width: 960px;
	margin: 0 auto;
	margin-bottom: 10px;
	/* footer 글씨 정렬 */
	text-align: center;
}
</style>

<head>
<title>Upload Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="Stylesheet" href="/resources/css/bootstrap.min.css" />
<script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<!-- owl carousel깔기 -->
<link rel="stylesheet" href="/resources/owl.carousel/owl.carousel.css">
<!-- <link rel="stylesheet" href="owl.carousel/owl.theme.default.min.css"> -->
<script src="/resources/jquery/jquery-1.12.4.min.js"></script>
<script src="/resources/owl.carousel/owl.carousel.min.js"></script>
<!-- <script src="/resources/owl.carousel/owl.carousel.js"></script> -->

</head>
<body>
	<div class="container">
		<div style="overflow-x: hidden; overflow-y: scroll;">

			<div class="navbar navbar-default navbar-fixed-top"
				style="margin: auto; text-align: center;">

				<a style="margin-left: 480px;" class="navbar-brand"
					href="/item/main">ASSEMVELY</a>
				<div class="navbar-header" style="margin: auto; margin-left: 480px;">
					<div
						style="overflow: auto; overflow-y: hidden; width: 714px; height: auto; padding: 0 0 17px 0; margin: auto;">
						<button class="navbar-toggle collapsed" data-toggle="collapse"
							data-targer="#target">
							<span class="sr-only">Toggle navigation</span> <span class>"icon-bar"</span>
							<span class>"icon-bar"</span> <span class>"icon-bar"</span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="target"
						style="text-align: center;">
						<ul class="nav navbar-nav">
							<li><a href="/item/posting">POSTING</a></li>
							<li><a href="#">OUTER</a></li>
							<li><a href="#">TOP</a></li>
							<li><a href="#">BOTTOM</a></li>
							<li><a href="#">SKIRT</a></li>
							<li><a href="#">DRESS</a></li>
							<li><a href="#">ACC</a></li>
						</ul>

						<ul class="nav navbar-nav navbar-right">
							<li><a href="#">LOGIN</a></li>
							<li><a href="#">JOIN</a></li>
						</ul>

						<form class="navbar-form navbar-right" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default">검색</button>
						</form>
					</div>
				</div>
			</div>
		</div>

		<div>
			<div>
				<div>
					<div>

						<!-- outer 이미지 -->
						<div class="col-md-12">
							<div class="jumbotron"
								style="margin-top: 120px; text-align: center;">
								<div class="container">
									<h1>Item Upload Page</h1>
									<p>Coat Jacket Cardigan</p>
									<a class="btnbtn-primary btn-large" href="#">버튼을 하려면 하고 말라면
										말쟝!</a>
								</div>
							</div>

							<br />
							<hr />
							<br />

							<div class="dropdown">
								<button id="dLabel" type="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
									Dropdown trigger1 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" aria-labelledby="dLabel">
									<li>coat</li>
									<li>jacket</li>
									<li>cardigan</li>
								</ul>
							</div>

							<div>
								<button id="dLabel" type="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
									Dropdown trigger2 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" aria-labelledby="dLabel">
									<li>brand1</li>
									<li>brand2</li>
									<li>brand3</li>
								</ul>

							</div>

							<br />
							<hr />
							<br />

							<!-- 뿌리기 시작 -->

							<div class="row">

								<c:forEach items="${LIST}" var="itemvo">
									<div class="col-lg-3 text-center">

										<div class="thumbnail">
											<img src="/resources/itemimg/${itemvo.imgname} "
												alt="No Image">
											<div class="caption">
												<h3>${itemvo.name}</h3>
												<p>${itemvo.id}</p>
												<p>
													<a href="#" class="btn btn-primary" role="button">좋아요</a> <a
														href="#" class="btn btn-default" role="button">싫어요</a>
												</p>
											</div>

										</div>
									</div>
								</c:forEach>

							</div>
						</div>
					</div>
				</div>
			</div>
</body>
</html>