<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>饿了么</title>
		<link href="${pageContext.request.contextPath }/style/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath }/style/css/sticky-footer.css" rel="stylesheet">
		<link rel="icon" href="${pageContext.request.contextPath }/style/images/default/icon.png" />
		<link href="${pageContext.request.contextPath }/style/css/carousel.css" rel="stylesheet">
	</head>

	<body>

		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
					<a class="navbar-brand" href="../../index.jsp">ELE</a>
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="javascript:;">Home</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#contact">Contact</a></li>
					</ul>

					<ul id="unlogin" class="nav navbar-nav navbar-right">
						<li><a href="../signup/user.jsp">Register</a></li>
						<li><a href="../signin/user.jsp">Login</a></li>
					</ul>
					<ul id="login" class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="javascript:;" id="username" class="dropdown-toggle" data-toggle="dropdown"></a>

							<ul class="dropdown-menu">
								<li><a href="user.jsp">Profile</a>
								</li>
								<li class="divider"></li>
								<li><a href="../../UserLogout.action" id="logout"> Log Out</a></li>
							</ul>
						</li>
					</ul>
				</div>

				<!--/.nav-collapse -->
			</div>
		</nav>

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="first-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>加盟广告</h1>
							<p>
								你想网上开店吗?请加入我们吧!!
							</p>
							<p>
								<a class="btn btn-lg btn-primary" href="../signup/seller.jsp" role="button">
									立即加盟
								</a>
							</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="second-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>美食者联盟</h1>
							<p>
								终于等到你了!赶快加入我们吧!
								<hr/>
								本网站各类小吃,应有尽有.吃货云集.
							</p>
							<p>
								<a class="btn btn-lg btn-primary" href="../signup/user.jsp" role="button">
									立即加入
								</a>
							</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="third-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>美食广告</h1>
							<p>
								这里有很多美食!欢迎光临!
							</p>
							<p>
								<a class="btn btn-lg btn-primary" href="./seller_fore.jsp?registrationID=130642030981111" role="button">
									进入商店
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!-- /.carousel -->


		<div class="bun-group-wrap" style="text-align: center">
			<div class="btn-group">
				<button type="button" class="btn btn-primary category">全部分类</button>
				<button type="button" class="btn btn-primary category">商店超市</button>
				<button type="button" class="btn btn-primary category">小吃宵夜</button>
				<button type="button" class="btn btn-primary category">异国料理</button>
				<button type="button" class="btn btn-primary category">快餐便当</button>
				<button type="button" class="btn btn-primary category">果蔬生鲜</button>
				<button type="button" class="btn btn-primary category">特色菜系</button>
				<button type="button" class="btn btn-primary category">甜品饮品</button>
				<button type="button" class="btn btn-primary category">鲜花蛋糕</button>
			</div>
		</div>
		<hr>
		<div class="container">
			<div class="row root" style="padding: 20px">

			</div>
			<ul class="pager">
					<li class="previous"><a href="javascript:;">Previous</a></li>
					<li class="pageNum">1</li>
					<li class="next"><a href="javascript:;">Next</a></li>
				</ul>
				<hr>
		</div>

		<script src="${pageContext.request.contextPath }/style/js/jquery.min.js "></script>
		<script src="${pageContext.request.contextPath }/style/bootstrap/js/bootstrap.min.js "></script>
		<script src="${pageContext.request.contextPath }/style/js/homeBackground.js "></script>
		<script type="text/javascript">
		var login = "${sessionScope.userLoginStatus}";

		if (login.match("true") != null) {
			$("#unlogin").hide();
			$("#login").show();
			$("#username").html("${sessionScope.username}<b class='caret'></b>");
		} else {
			$("#login").hide();
			$("#unlogin").show();
		}
	</script>
	</body>

	</html>