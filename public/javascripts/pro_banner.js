(function(){
	$(document).bind("pageinit",function(){
		$(".pro_banner .bd li img").load(function(){
			var imgH = $(".pro_banner .bd li img").innerHeight();
			$(".pro_banner").css({"height":imgH+"px"});
		});
		
	})
	$(document).ready(function(){
		var len = $(".pro_banner .bd li").length;
		var winW = $(window).innerWidth();
		var num;
		var bool = true;
		$(".pro_banner .bd ul").css({"width":len*winW+"px"});
		$(".pro_banner .bd li").css({"width":winW+"px"});
		for(var i=0;i<len;i++){
			$(".pro_banner .bd li").eq(i).css({left:winW*i+"px"});
		}
		$(".pro_banner .bd li").on("swipeleft",function(){
			if(bool){
				bool=false;
				num = $(this).index();
				$(".pro_banner .bd li").eq(num).animate({"left":-winW+"px"},function(){$(this).css({left:(len-1)*winW+"px"})});
				$(".pro_banner .bd li").eq(num+1).animate({"left":"0px"},function(){bool=true;});
				for(var i=1;i<len;i++){
					$(".pro_banner .bd li").eq(i).css({"left":winW*(i-1)+"px"});
				};
				$(".pro_banner .bd li").eq(num).appendTo(".pro_banner .bd ul");
			}
		})
		$(".pro_banner .bd li").on("swiperight",function(){
			if(bool){
				bool=false;
				num = $(this).index();
				$(".pro_banner .bd li").eq(num).animate({"left":winW*(num+1)+"px"});
				$(".pro_banner .bd li").eq(len-1).css({"left":-winW+"px"}).animate({"left":"0"},function(){bool=true;});
				for(var i=1;i<len-1;i++){
					$(".pro_banner .bd li").eq(i).css({"left":winW*(i+1)+"px"});
				};
				$(".pro_banner .bd li").eq(len-1).prependTo(".pro_banner .bd ul");
			}
		});

	});
})()