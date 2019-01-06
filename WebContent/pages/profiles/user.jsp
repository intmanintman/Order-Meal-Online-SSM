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
		<link href="${pageContext.request.contextPath }/style/css/summary.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath }/style/css/dashboard.css" rel="stylesheet">
		<link rel="icon" href="${pageContext.request.contextPath }/style/images/default/icon.png" />
	</head>

	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="home.jsp">ELE</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<ul id="login" class="nav navbar-nav">
							<li class="dropdown">
								<a href="javascript:;" id="username" class="dropdown-toggle" data-toggle="dropdown"></a>
								<ul class="dropdown-menu">
									<li><a href="javascript:;"> Profile</a></li>
									<li><a href="javascript:;" class="active orderManage"> Inbox</a></li>
									<li><a href="javascript:;" class="receiverManage"> Settings</a></li>
									<li class="divider"></li>
									<li><a href="../../UserLogout.action"> Log Out</a></li>
								</ul>
							</li>
						</ul>
						<li><a href="javascript:;">About</a></li>
						<li><a href="javascript:;">Contaxt</a></li>
						<li><a href="javascript:;">Help</a></li>
					</ul>
					<form class="navbar-form navbar-right">
						<input type="text" class="form-control" placeholder="Search...">
					</form>
				</div>
			</div>
		</nav>

		<div class="container-fluid">
			<div class="container" style="padding-bottom: 35px">
				<div class="row">
					<div class="col-sm-3 col-md-2 sidebar">
						<ul class="nav nav-sidebar">
							<li><a href="javascript:;" class="active orderManage">订单管理</a></li>
							<li><a href="javascript:;" class="userInfoManage">更改个人信息</a></li>
							<li><a href="javascript:;" class="receiverManage">收获地址管理</a></li>
							<li><a href="./home.jsp">开始点餐</a></li>
							<li><a href="recommend2.jsp">个性推荐</a></li>
						</ul>
					</div>

					<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
						<div class="row main">
							<div class="page-header">
								<h3 class="title">订单简介</h3>
								<div class="row titleHead">
									<hr>
									<div class="col-xs-4 col-sm-4 col-md-4">
										<p>订单号码</p>
									</div>
									<div class="col-xs-4 col-sm-4 col-md-4">
										<p>订单状态</p>
									</div>
								</div>
							</div>
						</div>

						<ul class="pager">
							<li class="previous"><a href="javascript:;">Previous</a></li>
							<li class="pageNum">1</li>
							<li class="next"><a href="javascript:;">Next</a></li>
						</ul>
						<hr>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script	src="${pageContext.request.contextPath }/style/js/jquery.min.js "></script>
	<script	src="${pageContext.request.contextPath }/style/bootstrap/js/bootstrap.min.js "></script>
	<script	src="${pageContext.request.contextPath }/style/js/userBackground.js "></script>
	<script type="text/javascript ">
		$("#username ").html("${sessionScope.username}<b class='caret'></b>");

	</script>
	</body>

	</html>