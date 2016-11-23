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
<title>Item Posting</title>
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
	<%@ include file="css.jinc"%>
 <div>
				<div>
					<div>
						<div>
	<div class="col-md-12">
		<div class="jumbotron" style="margin-top: 140px; text-align: center;">
			<div class="container" style="margin: auto; text-align: center;">
				<h1>Item Posting Page</h1>
				<p>Coat Jacket Cardigan</p>
				<a class="btnbtn-primary btn-large" href="#">버튼을 하려면 하고 말라면 말쟝!</a>
			</div>
		</div>

		<br />
		<hr />
		<br />

		<div style="text-align: center;">
			<h3>
				<span class="glyphicon glyphicon-duplicate" aria-hidden="true"></span>
				Posting <span class="glyphicon glyphicon-duplicate"
					aria-hidden="true"></span>
			</h3>
			<hr />
			<br />

		</div>

		<div class="row" style="margin: auto; margin-left: 300px;">
			<div class="col-lg-8">

				<form action="./upload" method="post" enctype="multipart/form-data">

					<div class="form-group">

						<label><img
							src="/resources/glyphicons/glyphicons-792-user-vr.png"
							aria-hidden="true">Brand name</label> <input type="text"
							class="form-control" placeholder="브랜드 이름을 적어주세요." name="id">
					</div>

					<div class="form-group">
						<label><img
							src="/resources/glyphicons/glyphicons-383-dress.png"
							aria-hidden="true">Item name</label> <input type="text"
							class="form-control" placeholder="상품명을 적어 주세요." name="name">
					</div>

					<div class="form-group">
						<label>Item price</label> <input type="number"
							class="form-control" placeholder="상품 가격을 적어 주세요." name="price">

					</div>

					<div class="form-group">
						<label>Category</label> <select class="form-control"
							name="categorycode">

							<option>COAT</option>
							<option>JACKET</option>
							<option>CARDIGAN</option>
							<option>KNIT</option>
							<option>SHIRT</option>
							<option>TSHIRT</option>
							<option>PANTS</option>
							<option>SHORTS</option>
							<option>SKIRT</option>
							<option>DRESS</option>
							<option>BAG</option>
							<option>JEWELRY</option>
							<option>SHOES</option>
						</select>
					</div>


					<div class="form-group">
						<label>Item color</label> <select class="form-control"
							name="colorcode">

							<option>R</option>
							<option>G</option>
							<option>B</option>
							<option>Y</option>
							<option>W</option>
							<option>BL</option>
						</select>
					</div>

					<div class="form-group">
						<label>Temperature</label> <select class="form-control"
							name="tempcode">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
						</select>
					</div>



					<div class="form-group">
						<label>File input</label> <input type="file" name="imgfile">
					</div>

					<input type="submit" value="submit" />

				</form>
			</div>

		</div>
	 
</body>

</html>