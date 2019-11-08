// ==UserScript==
// @name        shcarbid
// @namespace   http://www.shuiguozhuan.com
// @description my god
// @include     https://paimai2.alltobid.com/bid/*
// @include     https://paimai.alltobid.com/bid/*
// @include     https://www.shuiguozhuan.com/shcarbid/*
// @version     1
// @grant       none
// ==/UserScript==
(function() {
	
	  alert("test");
		
	  $("#altContent01_parent").empty();
	  $("#altContent01_parent").html("<div id='altContent02'></div>");
    
    var usernumber=$.cookie('bidnumber');
		if(!usernumber){
			location.href='login.htm';
		}else{
			var userName=$.cookie('username');
			$("#spClientName").html(userName).attr("title",userName);
			$("#getNumber").html(usernumber);
			$("#spBidCount").html($.cookie('bidcount')+'次'); 
			$("#spVDate").html($.cookie('vdate'));
			var clientId=$.cookie('clientId'+usernumber);
			var tradeserverstr=$.cookie('tradeserver');
			var informationserverstr='';
			var webserver=$.cookie('webserver');
			var lcserver='';
			var auctype=$("#hidtype").val();
			var flashvars={
				uid:usernumber,
				uname:userName,
				clientId:clientId,
				tradeserverstr:tradeserverstr,
				informationserverstr:informationserverstr,
				webserverstr:webserver,
				lcserverstr:lcserver,
				auctype:auctype};
		  	var params={menu:"false",scale:"noScale",allowFullscreen:"true",allowScriptAccess:"always",bgcolor:"",wmode:"transparent"};
		  	var attributes={id:"testsocket"};
			swfobject.embedSWF("https://www.pincai88.com:453/web/res/4/ws-2016-client.swf","altContent02","900","500","11","expressInstall.swf",flashvars,params,attributes);
	  }
})();

//xxtea秘钥
window.getDecodeKey =  function(){
	return 'ji!@p!a';
};

//秒读解密移位数
window.getDecode3_1 =  function(){
	return 7;
};

//xxx解密移位1
window.getXxxtea_shift_1 =  function(){
	return 4;
};

//xxx解密移位2
window.getXxxtea_shift_2 =  function(){
	return 6;
};

//是否自动提交
window.getAuto_submit =  function(){
	return true;
};

//自动提交增加额外价格，毫秒
window.getExtra_price = function(){
	return 200;
};

//开始自动提交时间
window.getAuto_submit_time = function(){
	return '2955000';
};

//自动提交间隔时间
window.getSubmit_every_time = function(){
	return 500;
};

//是否提交实时价格
window.getPostRealtimePrice = function(){
	return true;
};

window.getBid_md5 = function(){
	return true;
};

window.getShare_checkcode = function(){
	return false;
};

window.getNo_checkcode = function(){
	return false;
};

