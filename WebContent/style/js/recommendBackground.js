$(document).ready(function () {

    // userphone= "".concat(${sessionScope.userPhone});
//     userphone= "18183127192";
//     foodID=null;
//     registerID=null;
//
//     getFoodsBrief(userphone);
//
// ////////////////////////////////////////////////////////////////////
//     ////////////////////////////////////////////////
//     function getFoodsBrief(userphone) {
//         $(".food").remove();
//
//         console.log("getFoodsBrief(userphone)\n");
//         console.log("userphone    %s\n",userphone);
//
//         $.get('../../recommendGetFoodsBrief.action', {
//             userphone: userphone
//         }, function (foods) {
//             foods = $.parseJSON(foods);
//             $.each(foods, function (i, food) {
//                 $(".root").append(createFoodBrief());
//                 var newfood = $(".root .food:last");
//                 console.log("\n");
//                 console.log("var newfood = $\(\".root .food:last\"\)   %s\n",newfood);
//                 console.log("\n");
//                 newfood.find(".foodID").html(food.foodID);
//                 newfood.find(".foodName").html(food.name);
//                 newfood.find(".soldNum").html(food.soldNum);
//                 newfood.find(".foodPrice").html(food.price);
//                 if (food.imageAddr != null && food.imageAddr.length > 0)
//                     newfood.find("img").attr("src", food.imageAddr);
//
//                 newfood.slideToggle();
//             })
//         })
//     }
// //////////////////////////////////////////////
//     //////////////////////////////////////////
//     function createFoodBrief() {
//         // registerID="130642030981111";
//         var newfood = '<div class="food col-xs-6 col-sm-4 col-md-3" style="display:none;"><div class="thumbnail"><img style="height:110px;width:120px;" src="../../style/images/foods/default.jpg" alt="通用的占位符缩略图"><div class="caption">' +
//             '<p class="foodID" style="display:none;"></p><h3 class="foodName"></h3><p>销量：<span class="soldNum"></span></p><p>￥<span class="foodPrice"></span></p>' +
//             '<a  href="seller_fore.jsp" class="turntoshop btn btn-primary form-control" role="button">进入店铺</a></div></div></div>';
//         // '<a  href="seller_fore.jsp?registrationID='+'130642030981111" class="cd-turn-to-shop btn btn-primary form-control" role="button">进入店铺</a></div></div></div>';
//         return newfood;
//     }

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    $('.turntoshop').click(function () {
        console.log("\n");
        console.log("$(this).html()  %s \n",$(this).html());
        console.log("$(this).val()  %s \n",$(this).val());
        console.log("$(this).text()  %s \n",$(this).text());
        console.log("\n");
        console.log("$(this).parent.html()   %s\n",$(this).parent().html());
        console.log("$(this).parent.html()   %s\n",$(this).prev().prev().prev().prev().html());
        console.log("$(this).parent.html()   %s\n",$(this).prev().prev().prev().prev().html().substring(0,15));
        console.log("\n");

        var registerID=null;
        registerID=$(this).prev().prev().prev().prev().html().substring(0,15);
        var target="seller_fore.jsp?registrationID="+registerID;
        $(this).attr('href',target);

    })
})
