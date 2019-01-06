/**
 * Created by intman on 2018/5/13.
 */
$(document).ready(function () {
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

        // registerID="130642030981111";
        registerID=$(this).prev().prev().prev().prev().html().substring(0,15);
        var target="seller_fore.jsp?registrationID="+registerID;
        $(this).attr('href',target);

    })
})