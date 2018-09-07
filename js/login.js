$(".login_erwei").hover(function(){
    $(".login_img").css({display:"inline-block"});
},function(){
    $(".login_img").css({display:"none"});
});
$("#login").click(function(){
    $("#div_dialog").css({display:"inline-block"});
    $("#black_mask").css({display:"inline-block"});
    $("body").css({height:"100%",overflow:"hidden"})
});
$(".popup_close").click(function(){
    $("#div_dialog").css({display:"none"});
    $("#black_mask").css({display:"none"});
    $("body").css({height:"100%",overflowY:"scroll"})
})
$("#auto_login_check").click(function(){
    var $this=$(this);
    if($this.hasClass("auto_login_checked")){
        $this.removeClass("auto_login_checked").addClass("auto_login_unchecked")
    }
    else{
        $this.removeClass("auto_login_unchecked").addClass("auto_login_checked")
    }
})
// 点击账号密码登录改变的样式
$(".login_link").click(function(e){
    e.preventDefault();
    $(".login_body_tit").html("帐号密码登录");
    $(".login_body_a").html(`推荐使用
    <a class="link_tips" href="#">
        快速安全登录
    </a>防止盗号`);
    $("#loginform").show().siblings().hide();
    $(".link_tips").click(function(e){
        e.preventDefault();
        $(".login_body_tit").html("快速安全登录");
         $(".login_body_a").html(`请使用
         <a class="link_tips" href="#">
             QQ手机版
         </a>扫描二维码，
         <br>或点击头像授权登录。`);
        $(".safe_login").show().siblings().hide();
    })
});

// 检测是否已经登录
$.ajax({
    type:"get",
    url:"data/music_user/islogin.php",
    dataType:"json",
    success:function(data){
        if(data.ok==0){
            $("#login").show().next().hide();
        }
        else{
            var pic=data["user"].pic;
            var uname=data["user"].uname;
             $(".login_pic").css("backgroundImage",`url(${pic}`);
             $(".user_pic").attr("src",pic);
             $(".user_name").html(`${uname}`);
            // console.log($(".login_pic").css("backgroundImage"));
        }
        
    }

});
$("#form_submit").click(function(){
    var qq=$("#form_qq").val();
    var upwd=$("#form_upwd").val();
    $.ajax({
        type:"post",
        url:"data/music_user/signin.php",
        dataType:"json",
        data:{qq,upwd},
        success:function(output){
            location.reload();
        },
        error:function(){
            alert("请检查网络")
        }

    });
})
// if($(".link_tips").html()=="快速安全登录"){
$("#quit").click(function(){
    $.ajax({
        type:"get",
        url:"data/music_user/signout.php",
        success:function(data){
            console.log(1);
            location.reload();
            
        }
    })
})
// }
// 用户信息表
var t1;
$(".login_pic").mouseout(function(){
    t1=setTimeout(function(){
        console.log(1);
        $(".user_info").removeClass("in");
    },500);
})
$(".login_pic").mouseover(function(){
    $(this).children(".user_info").addClass("in");
    clearTimeout(t1);
    t1=null;
});
// $(".reg_link").click(function(e){
//     e.preventDefault();
//     console.log(1);
//     window.open("reg.html");
// })