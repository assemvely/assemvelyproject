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
<title>Home</title>
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
	 <%@ include file="css.jinc" %>
			<div>
				<div>
					<div>
						<div>
							<!-- 이벤트 창 만들기 시작 -->
							<div class="col-md-12">
								<div class="jumbotron" style="margin-top: 120px; text-align: center;">
									<div class="container" style="margin:auto; text-align:center;">
										<h1>ASSEMVELY EVENT</h1>
										<p>weather coupon best item best codi</p>
										<a class="btnbtn-primary btn-large" href="#">Learn more</a>
									</div>
								</div>

								<br />
								<hr />
								<br />

								<h3>Event</h3>


								<div id="carousel-example-generic" class="carousel slide"
									data-ride="carousel">

									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0"
											class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"></li>
										<li data-target="#carousel-example-generic" data-slide-to="2"></li>
										<li data-target="#carousel-example-generic" data-slide-to="3"></li>
									</ol>


									<!-- Wrapper for slides -->
									<div class="carousel-inner" role="listbox">
										<div class="item active">
											<img src="/resources/image/mainslider.png" alt="no image">
											<div class="carousel-caption"></div>

										</div>
										<div class="item">
											<img src="/resources/image/mainslider.png" alt="no image">
											<div class="carousel-caption"></div>

										</div>
										<div class="item">
											<img src="/resources/image/mainslider.png" alt="no image">
											<div class="carousel-caption"></div>

										</div>

										<div class="item">
											<img src="/resources/image/mainslider.png" alt="no image">
											<div class="carousel-caption"></div>

										</div>
									</div>


									<!-- Controls 화살표 표시 창 -->
									<a class="left carousel-control"
										href="#carousel-example-generic" role="button"
										data-slide="prev"> <span
										class="glyphicon glyphicon-triangle-left" aria-hidden="true"
										style="margin-top: 120;"></span> <span align="center"
										class="sr-only">Previous</span>
									</a> <a class="right carousel-control"
										href="#carousel-example-generic" role="button"
										data-slide="next"> <span
										class="glyphicon glyphicon-triangle-right" aria-hidden="true"
										style="margin-top: 120px;"></span> <span align="center"
										class="sr-only">Next</span>
									</a>
									<!-- 끝 Controls 화살표 표시 창 끝-->
								</div>

								<!-- 끝 Wrapper for slides 끝 -->

								<br /> <br />
								<hr />
								<br />

								<!-- owl-carousel 쓰기 -->
								<script>
									$(document).ready(function() {

										$(".owl-carousel").owlCarousel({
											loop : true,
											margin : 10,
											nav : true,
											responsive : {
												0 : {
													items : 1
												},
												600 : {
													items : 3
												},
												1000 : {
													items : 5
												}
											}
										});

									})
								</script>

								<h3>Brand</h3>
								<div class="owl-carousel">
									<div class="item">
										<img src="/resources/itemimg/redjacket.png" alt="No Image">
										<h4>안성현 성현</h4>
									</div>
									<div class="item">
										<img src="/resources/image/coldplay2.jpg" alt="No Image">
										<h4>김수현 수현</h4>
									</div>
									<div class="item">
										<img src="/resources/image/coldplay3.jpg" alt="No Image">
										<h4>이주영 주영</h4>
									</div>
									<div class="item">
										<img src="/resources/image/coldplay4.jpg" alt="No Image">
										<h4>하지연 지연</h4>
									</div>
									<div class="item">
										<img src="/resources/image/coldplay5.jpg" alt="No Image">
										<h4>안성현 성현</h4>
									</div>
									<div class="item">
										<img src="/resources/image/coldplay6.jpg" alt="No Image">
										<h4>김수현 수현</h4>
									</div>
									<div class="item">
										<h4>이주영 주영</h4>
									</div>
									<div class="item">
										<h4>하지연 지연</h4>
									</div>
									<div class="item">
										<h4>안성현 성현</h4>
									</div>
									<div class="item">
										<h4>김수현 수현</h4>
									</div>
									<div class="item">
										<h4>이주영 주영</h4>
									</div>
									<div class="item">
										<h4>하지연 지연</h4>
									</div>
								</div>

								<!-- 끝끝 owl-caraousel끝끝 -->


								<!-- 네모 4개 띄우기 코디 폼  -->

								<br />
								<hr />
								<br />

								<h3>인기 스타일</h3>

								<!-- 인기 스타일 버전 1 -->
								<div class="row">

									<div class="col-lg-3 text-center">
										<div class="panel panel-default">
											<div class="panel-body">.col-lg-3</div>
											<img class="img-thumbnail" src="http://placehold.it/400x400"
												alt="no image">
										</div>
									</div>

									<div class="col-lg-3 text-center">
										<div class="panel panel-default">
											<div class="panel-body">.col-lg-3</div>
											<img class="img-thumbnail" src="http://placehold.it/400x400"
												alt="no image">
										</div>
									</div>

									<div class="col-lg-3 text-center">
										<div class="panel panel-default">
											<div class="panel-body">.col-lg-3</div>
											<img class="img-thumbnail" src="http://placehold.it/400x400"
												alt="no image">
										</div>
									</div>

									<div class="col-lg-3 text-center">
										<div class="panel panel-default">
											<div class="panel-body">.col-lg-3</div>
											<img class="img-thumbnail" src="http://placehold.it/400x400"
												alt="no image">
										</div>
									</div>

								</div>


								<!-- 인기 스타일 버전 1끝 -->

								<!-- 인기 스타일 버전 2 -->
								<div class="row">

									<div class="col-lg-3 text-center">
										<div class="thumbnail">
											<img src="/resources/image/coldplay1.jpg" alt="no image">
											<div class="caption">
												<h3>JuyoungLove</h3>
												<p>이주영주영</p>
												<p>
													<a href="#" class="btn btn-primary" role="button">좋아요</a> <a
														href="#" class="btn btn-default" role="button">싫어요</a>
												</p>
											</div>
										</div>
									</div>

									<div class="col-lg-3 text-center">
										<div class="thumbnail">
											<img src="/resources/image/coldplay1.jpg" alt="no image">
											<div class="caption">
												<h3>SeounghyeonLove</h3>
												<p>안성현성현</p>
												<p>
													<a href="#" class="btn btn-primary" role="button">좋아요</a> <a
														href="#" class="btn btn-default" role="button">싫어요</a>
												</p>
											</div>
										</div>
									</div>

									<div class="col-lg-3 text-center">
										<div class="thumbnail">
											<img src="/resources/image/coldplay1.jpg" alt="no image">
											<div class="caption">
												<h3>JiyeonLove</h3>
												<p>하지연지연</p>
												<p>
													<a href="#" class="btn btn-primary" role="button">좋아요</a> <a
														href="#" class="btn btn-default" role="button">싫어요</a>
												</p>
											</div>
										</div>
									</div>

									<div class="col-lg-3 text-center">
										<div class="thumbnail">
											<img src="/resources/image/coldplay1.jpg" alt="no image">
											<div class="caption">
												<h3>SuhyeonLove</h3>
												<p>김수현수현</p>
												<p>
													<a href="#" class="btn btn-primary" role="button">좋아요</a> <a
														href="#" class="btn btn-default" role="button">싫어요</a>
												</p>
											</div>
										</div>
									</div>

								</div>
								<!-- 인기 스타일 버전 2 끝 -->


								<br />
								<hr />
								<br />

							</div>
						</div>
					</div>
				</div>



				<footer id="main_footer">


					<h3>Shop Info</h3>
					<address>상호명: (주)ASSEMVELY 대표자: 안성현, 이주영, 하지연, 김수현</address>
				</footer>
</body>

</html>