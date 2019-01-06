<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>推荐美食</title>
    <link href="${pageContext.request.contextPath }/style/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/style/css/sticky-footer.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/style/css/add_to_card_reset.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/style/css/add_to_card_style.css" rel="stylesheet">
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


<hr/>
<hr/>
<p ><h1 class="text-center">根据您的历史消费记录,推荐如下美食</h1></p>
<hr/>

<div class="container" style="padding-bottom: 88px">
    <div class="row clearfix">
        <div class="col-sm-10 col-md-10 column">
            <div class="container-fluid">
                <div class="root" class="row" style="padding: 20px">


                </div>
            </div>
            <ul class="pager">
                <li class="previous"><a href="javascript:;">Previous</a></li>
                <li class="pageNum">1</li>
                <li class="next"><a href="javascript:;">Next</a></li>
            </ul>
        </div>


    </div>
</div>


<script        src="${pageContext.request.contextPath }/style/js/jquery.min.js "></script>
<script        src="${pageContext.request.contextPath }/style/bootstrap/js/bootstrap.min.js "></script>
<script        src="${pageContext.request.contextPath }/style/js/recommendBackground.js"></script>
<script type="text/javascript ">
    userphone= "".concat(${sessionScope.userPhone});
//    userphone= "18183127192";
    getFoodsBrief(userphone);

    ////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////
    function getFoodsBrief(userphone) {
        $(".food").remove();

        console.log("getFoodsBrief(userphone)\n");
        console.log("userphone    %s\n",userphone);

        $.get('../../recommendGetFoodsBrief.action', {
            userphone: userphone
        }, function (foods) {
            foods = $.parseJSON(foods);
            $.each(foods, function (i, food) {
                $(".root").append(createFoodBrief());
                var newfood = $(".root .food:last");
                console.log("\n");
                console.log("var newfood = $\(\".root .food:last\"\)   %s\n",newfood);
                console.log("\n");
                newfood.find(".foodID").html(food.foodID);
                newfood.find(".foodName").html(food.name);
                newfood.find(".soldNum").html(food.soldNum);
                newfood.find(".foodPrice").html(food.price);
                if (food.imageAddr != null && food.imageAddr.length > 0)
                    newfood.find("img").attr("src", food.imageAddr);

                newfood.slideToggle();
            })
        })
    }
    //////////////////////////////////////////////
    //////////////////////////////////////////
    function createFoodBrief() {
        // registerID="130642030981111";
        var newfood = '<div class="food col-xs-6 col-sm-4 col-md-3" style="display:none;"><div class="thumbnail"><img style="height:110px;width:120px;" src="../../style/images/foods/default.jpg" alt="通用的占位符缩略图"><div class="caption">' +
//            '<p class="foodID" style=""></p><h3 class="foodName"></h3><p>销量：<span class="soldNum"></span></p><p>￥<span class="foodPrice"></span></p>' +
            '<p class="foodID" style="display:none;"></p><h3 class="foodName"></h3><p>销量：<span class="soldNum"></span></p><p>￥<span class="foodPrice"></span></p>' +
            '<a  href="seller_fore.jsp" class="turntoshop btn btn-primary form-control" role="button">进入店铺</a></div></div></div>';
        // '<a  href="seller_fore.jsp?registrationID='+'130642030981111" class="cd-turn-to-shop btn btn-primary form-control" role="button">进入店铺</a></div></div></div>';
        return newfood;
    }
//    $('.turntoshop').click(function () {
//        console.log("registerIDID.substring   \n");
//        console.log("\n");
//        console.log("$(this).html()  %s \n",$(this).html());
//        console.log("$(this).val()  %s \n",$(this).val());
//        console.log("$(this).text()  %s \n",$(this).text());
//        console.log("\n");
//        console.log("$(this).parent.html()   %s\n",$(this).parent().html());
//        console.log("$(this).parent.html()   %s\n",$(this).prev().prev().prev().prev().html());
//        console.log("$(this).parent.html()   %s\n",$(this).prev().prev().prev().prev().html().substring(0,15));
//        console.log("\n");
//
//        registerID="130642030981111";
//        // registerID=$(this).prev().prev().prev().prev().html().substring(0,15);
//        var target="seller_fore.jsp?registrationID="+registerID;
//        $(this).attr('href',target);
//
//    })

    $("#username ").html("${sessionScope.username}<b class='caret'></b>")

</script>
</body>

</html>