<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>饿了么</title>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link href="${pageContext.request.contextPath }/style/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/style/css/sticky-footer.css" rel="stylesheet">
    <link rel="icon" href="${pageContext.request.contextPath }/style/images/default/icon.png" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style/usignin/assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style/usignin/assets/css/form-elements.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style/usignin/assets/css/style.css">
  </head>

  <body>

    <!-- Top content -->
    <div class="top-content">
      <div class="inner-bg">
        <div class="container">
          <div class="row">
            <div class="col-sm-6 col-sm-offset-3 form-box">
              <div class="form-top">
                <div class="form-top-left">
                  <h3>欢迎登陆</h3>
                  <p>输入您的手机号码和密码</p>
                </div>
                <%--<div class="form-top-right">--%>
                  <%--<i class="fa fa-key"></i>--%>
                <%--</div>--%>
              </div>
              <div class="form-bottom">
                <form role="form" action="../../userLogin.action" method="post" class="login-form">
                  <div class="form-group">
                    <label class="sr-only" for="form-username">Phone number</label>
                    <input type="text" name="form-username" placeholder="Phone number..." class="form-username form-control" id="form-username">
                  </div>
                  <div class="form-group">
                    <label class="sr-only" for="form-password">Password</label>
                    <input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password">
                  </div>
                  <button type="submit" class="btn">登陆</button>
                   <p class="help-block"></p>
                </form>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6 col-sm-offset-3 social-login">
            
              <div class="social-login-buttons">
                <a class="btn btn-link-1 btn-link-1-facebook" href="#">
                  <i class="fa fa-qq"></i> QQ
                </a>
                <a class="btn btn-link-1 btn-link-1-twitter" href="#">
                  <i class="fa fa-wechat"></i> 微信
                </a>
                <a class="btn btn-link-1 btn-link-1-google-plus" href="#">
                  <i class="fa fa-weibo"></i> 微博
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>


  <script src="${pageContext.request.contextPath }/style/js/jquery.min.js "></script>
  <script src="${pageContext.request.contextPath }/style/bootstrap/js/bootstrap.min.js "></script>
  <script src="${pageContext.request.contextPath }/style/usignin/assets/js/jquery.backstretch.min.js "></script>
  <script src="${pageContext.request.contextPath }/style/usignin/assets/js/scripts.js "></script>
  <script src="${pageContext.request.contextPath }/style/js/signup.js "></script>
  <script>
    var status = "".concat(${sessionScope.userLoginStatus});
    if( status == "false" ){
      $("form").addClass("has-error");
      $(".help-block").html("手机号或密码错误！");
    } else if(status == "true"){
      // $("form").dis
    }



  </script>
</body>
</html>