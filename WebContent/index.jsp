<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>饿了么</title>
<link href="style/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="style/css/cover.css" rel="stylesheet">
<link rel="icon" href="style/images/default/icon.png" />
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">ELE</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#contact">Contact</a></li>
				
			</ul>
			<ul id="unlogin" class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Register<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li><a href="pages/signup/user.jsp">User</a></li>
						<li class="divider"></li>
						<li><a href="pages/signup/seller.jsp">Seller</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Login<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li><a href="pages/signin/user.jsp">User</a></li>
						<li class="divider"></li>
						<li><a href="pages/signin/seller.jsp">Seller</a></li>
						<li class="divider"></li>
						<li><a href="pages/signin/admin.jsp">Admin</a></li>
					</ul></li>
			</ul>
			<ul id="login" class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> Admin <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#"> Profile</a></li>
						<li><a href="#"> Inbox</a></li>
						<li><a href="#"> Settings</a></li>
						<li class="divider"></li>
						<li><a href="#"> Log Out</a></li>
					</ul></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>

	<div class="site-wrapper">
		<div class="site-wrapper-inner">
			<div class="cover-container">
				<div class="inner cover">
					<h1 class="cover-heading">吃我想吃的,做我想做的!</h1>
					<p class="lead">
						民以食为天!
						<hr/>
						做人最重要的是开心,最开心的事莫过于品味人间美味!
					</p>
					<p class="lead">
						<a href="pages/profiles/home.jsp" class="btn btn-lg btn-default">
							开始舌尖上的探索!
						</a>
					</p>
				</div>
			</div>
		</div>
	</div>


	<script src="style/js/jquery.min.js "></script>
	<script src="style/bootstrap/js/bootstrap.min.js "></script>
	<script src="style/js/public.js "></script>
	<script type="text/javascript">
		var login = "".concat(${sessionScope.phone});
		
		if (login == "") {
			$("#login").hide();
			$("#unlogin").show();
		} else {
			$("#unlogin").hide();
			$("#login").show();
		}
	</script>
</body>

</html>