package view
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   import mx.utils.StringUtil;
   
   import package_1.class_5;
   import package_1.class_7;
   import package_1.class_8;
   import package_1.class_9;
   
   import package_10.class_36;
   
   import package_15.class_55;
   
   import package_2.class_29;
   import package_2.class_38;
   
   import package_5.class_83;
   
   import package_8.class_24;
   import package_8.class_43;
   
   import package_9.class_28;
   
   import r1.deval.D;
   
   import ws.PriceInfoWindow;
   
   import zebra.class_4;
   
   public final class PriceInfoWindowPart extends PriceInfoWindow
   {
       
      public var var_316:Boolean = false;
      
      private var var_191:int = 0;
      
	  //保留上一次价格及验证码图片URL
	  private static var prevPriece:int = 0;
	  
	  private static var prevURL:String = "";
	  
	  private static var prompt_tip ="";
	  
      private var var_313:String;
      
      public var otTimer:uint;
      
      public var priceCode:String;
      
      private var var_178:URLLoader;
      
      public var var_7:class_8;
      
      static public var logappliction:class_5 = new class_5;
	  
	  static private var sendBuf:ByteArray = null;	  
	  static private var sndPrice:String = "";
	  static private var sndPriceCode:String = "";
	  static private var captcha:String = "";
      
      private var var_151:Boolean = false;
      
      public var var_65:String;
      
      private var imageurl:String;
      
      public function PriceInfoWindowPart(param1:int)
      {
         this.var_178 = new URLLoader();
         this.var_7 = new class_8(Main.var_53);
         //this.logappliction = new class_5();
         this.var_65 = class_28.method_25(Main.var_65);
         super();
         this.imageurl = "";
         this.var_151 = false;
         var_52.restrict = "0-9";
         this.var_191 = param1;
         this.var_302.text = "您的出价为: " + param1 + "元";
         var_159.addEventListener(MouseEvent.CLICK,this.closeHandler);
         okBut.addEventListener(MouseEvent.CLICK,this.method_278);
         setTimeout(this.method_251,3000);//检查验证码URL是否获取
         addEventListener(Event.ADDED_TO_STAGE,this.method_181);
         addEventListener(IOErrorEvent.IO_ERROR,this.method_344);
         class_14(class_4.method_3.method_5(class_14)).socketControl.socket.receive("2-2",this.method_345);
		 clearSndBuf();
      }
	  
	  private final function method_181(param1:Event) : void
	  {
		  removeEventListener(Event.ADDED_TO_STAGE,this.method_181);
		  stage.addEventListener(KeyboardEvent.KEY_DOWN, xxKeyboardEventHandler);
		  if(Main.optimizeCaptcha == true && prevPriece != 0 && prevURL  != "" && prevPriece == this.var_191){
			  this.var_293.text = prompt_tip;
			  this.priceCode = Main.cur_pricecode;
			  stage.focus = var_52;
		  	  //提交价格与上次相等，则直接显示验证码图片
			  this.imageurl = prevURL;
			  this.vcodeImg.source = this.imageurl;
			  var _loc16_:int = this.numChildren - 1;
			  this.setChildIndex(this.vcodeImg,_loc16_);
			  logappliction.method_77("投标板块","获取验证码请求","优化过程");
		  }else{
			  var _loc2_:class_29 = new class_29();
			  var _loc3_:class_7 = class_7(class_4.method_3.method_16(class_7));
			  var _loc4_:class_24 = class_14(class_4.method_3.method_5(class_14)).socketControl.socket;
			  _loc4_.receive("2-1",this.method_171);//接收验证码
			  _loc4_.send("2-1",_loc3_.bytes2_1(String(this.var_191)));//发送价格
			  stage.focus = var_52;
			  
			  prevPriece = this.var_191;
			  prevURL = "";
			  logappliction.method_77("投标板块","获取验证码请求","未优化过程");
		  }
	  }
	  
	  private function xxKeyboardEventHandler(e:KeyboardEvent):void
	  {
		  if(StringUtil.trim(var_52.text).length==4 && e.keyCode==13){
			  doOkButClick();
			  this.closeHandler(null);
		  }
	  }
	  
      public static function clearTimer() : void
      {
      }
      
      private final function method_344(param1:IOErrorEvent) : void
      {
      }
      
      private final function method_251() : void
      {
         var btnsp:Sprite = null;
         var btnspIndex:int = 0;
         if(this.imageurl != null)
         {
            btnsp = this.method_269();
            addChild(btnsp);
            btnspIndex = this.numChildren - 3;
            this.setChildIndex(btnsp,btnspIndex);
            btnsp.buttonMode = true;
            btnsp.addEventListener(MouseEvent.CLICK,this.method_291);
         }
         else
         {
            setTimeout(function():*
            {
               if(!var_151)
               {
                  class_12.method_55();
               }
            },3000);
         }
      }
      
      private final function method_269() : Sprite
      {
         var mousesj1:Function = null;
         var mousesj2:Function = null;
         mousesj1 = function(param1:MouseEvent):*
         {
            Mouse.cursor = "button";
         };
         mousesj2 = function(param1:MouseEvent):*
         {
            Mouse.cursor = "auto";
         };
         var sprite:Sprite = new Sprite();
         var background:Shape = this.method_252(2589655);
         var textField:TextField = new TextField();
         textField.text = "刷新校验码";
         textField.x = 335;
         textField.y = 222;
         textField.textColor = 16777215;
         var format:TextFormat = new TextFormat();
         format.size = 23;
         textField.defaultTextFormat = format;
         textField.addEventListener(MouseEvent.MOUSE_OVER,mousesj1);
         textField.addEventListener(MouseEvent.MOUSE_OUT,mousesj2);
         sprite.addChild(background);
         sprite.addChild(textField);
         return sprite;
      }
      
      private final function method_252(param1:uint) : Shape
      {
         var _loc2_:Shape = new Shape();
         _loc2_.graphics.lineStyle(1,2779313);
         _loc2_.graphics.beginFill(param1);
         _loc2_.graphics.drawRoundRect(310,219,110,25,7);
         _loc2_.graphics.endFill();
         return _loc2_;
      }
      
      private final function method_291(param1:MouseEvent) : void
      {
         if(this.imageurl != null)
         {
           this.vcodeImg.source = this.imageurl + "&random=" + Math.random();
         }
      }
      
      private final function method_395() : void
      {
         var _loc1_:Number = int((Math.random() * 39 + 293) * 100) / 100;
         var_159.y = _loc1_;
         okBut.y = _loc1_;
      }
      
      private final function method_345(param1:*) : void
      {
         PriceInfoWindowPart.clearTimer();
      }
      
      private final function method_278(param1:MouseEvent) : void
      {
         if(param1.target.name == "okBut")
         {
			 doOkButClick();
         }
         this.closeHandler(param1);
      }
	  
	  //清除发送缓存
	  static public function clearSndBuf():void{
		  sendBuf = null;
		  sndPrice = "";
		  sndPriceCode = "";
		  captcha = "";
	  }
	  
	  static public function getSndBuf(param1:String, param2:String, param3:String):ByteArray{		  
		  var _loc2_:* = class_7(class_4.method_3.method_16(class_7));
		  sendBuf = _loc2_.bytes2_2(param1, param2, param3);
		  sndPrice = param1;
		  captcha = param2;
		  sndPriceCode = param3;
		  logappliction.method_77("投标板块","发送入队请求-未优化过程",param1+param2+param3);
		  return sendBuf;
	  }
	  
	  static public function autoSendReq4Chaptcha(price:int):void{
		  logappliction.method_77("投标板块","autoSendReq4Chaptcha",String(price));
		  class_12.method_8(new PriceInfoWindowPart(price));
	  }
	  
	  static public function autoBidPriceTimeout():void{
		  class_12.method_8(new class_34(6,false));
		  Main.intervalId2 = 0;
		  logappliction.method_77("投标板块","自动提交时间到",Main.cur_servertime);
		  sendBidPrice(String(Main.cur_bidprice), Main.cur_checkcode, Main.cur_pricecode);
	  }
	  
	  //开启自动提交定时器
	  static public function autoSubmitTime():void{
		  
		  var cur_time:Date = new Date();
		  var year:int = cur_time.getFullYear();
		  var month:int = cur_time.getMonth();
		  var date:int = cur_time.getDate();
		  var hour:int = int(Main.cur_servertime.substr(8,2));
		  var minute:int = int(Main.cur_servertime.substr(10,2));
		  var second:int = int(Main.cur_servertime.substr(12,2));
		  var millisecond:int = 0;
		  
		  var server_time:Date = new Date(year, month,date, hour, minute,second, millisecond);
		  		  
		  hour = 11;
		  minute = int(Main.auto_submit_time.substr(0,2));
		  second = int(Main.auto_submit_time.substr(2,2));
		  millisecond = int(Main.auto_submit_time.substr(4,3));
		  
		  var alert_time:Date = new Date(year, month, date, hour, minute, second, millisecond);		  
		  
		  var timeout:int = alert_time.getTime();
		  timeout = timeout -  server_time.getTime();
		  
		  if(timeout <= 0){
			  logappliction.WriteLog2("投标板块","立即执行",String(timeout));
			  sendBidPrice(String(Main.cur_bidprice), Main.cur_checkcode, Main.cur_pricecode);
			  if(Main.intervalId2 != 0){
				  clearTimeout(Main.intervalId2);
				  Main.intervalId2 = 0;
			  }
		  }else{
			logappliction.WriteLog2("投标板块","开启自动提交定时器",String(timeout));
			if(Main.intervalId2 != 0){
				clearTimeout(Main.intervalId2);
			}
		  	Main.intervalId2 = setTimeout(autoBidPriceTimeout, timeout);
		  }
	  }
	  
	  static public function continueBidPrice():void{
		  Main.intervalId = 0;
		  logappliction.method_77("投标板块","持续提交时间","开始执行");
		  sendBidPrice(String(Main.cur_bidprice), Main.cur_checkcode, Main.cur_pricecode);
	  }
	  
	  static public function sendBidPrice(param1:String, param2:String, param3:String):void{
		  //var _loc2_:* = class_7(class_4.method_3.method_16(class_7));
		  logappliction.method_77("出价详情",param1+param2,param3);
		  
		  Main.cur_bidprice = int(param1);
		  
		  var timeout:int = int(Main.cur_servertime.substr(8,6));
		  logappliction.method_77("投标板块","服务器当前时间",String(timeout));
		  if(timeout == 112958){
			  //如果到29分58秒服务器还未接收数据，频率为4次/秒
			  Main.submit_every_time = 250;
			  logappliction.method_77("投标板块","修改持续提交间隔",String(Main.submit_every_time));
		  }else if(timeout == 112959){
			  //最后一秒，频率提示为次6/秒
			  Main.submit_every_time = 150;
			  logappliction.method_77("投标板块","修改持续提交间隔",String(Main.submit_every_time));
		  }
		  logappliction.method_77("投标板块","是否自动提交",String(Main.auto_submit));
		  
		  class_14(class_4.method_3.method_5(class_14)).socketControl.socket.send("2-2", getSndBuf(String(Main.cur_bidprice), param2, param3));
		  
		  logappliction.method_77("出价详情", "开启持续出价之旅",String(Main.submit_every_time));
		  if(Main.intervalId != 0){
			  clearTimeout(Main.intervalId);
		  }
		  Main.intervalId = setTimeout(continueBidPrice, Main.submit_every_time);
	  }
	  
	  static public function sendBidPrice2(param1:String, param2:String, param3:String):void{
		  //var _loc2_:* = class_7(class_4.method_3.method_16(class_7));
		  logappliction.method_77("出价详情2",param1+param2,param3);
		  
		  Main.cur_bidprice = int(param1);
		  
		  class_14(class_4.method_3.method_5(class_14)).socketControl.socket.send("2-2", getSndBuf(String(param1), param2, param3));
	  }
	  
	  static public function dealBidPrice(param1:String):void{
		  //_loc2_ = class_7(class_4.method_3.method_16(class_7));
		  logappliction.method_77("投标板块","出价阶段",Main.cur_stage);
		  
		  if(Main.cur_stage == 'A'){
			  class_12.method_8(new class_34(6,false));
			  sendBidPrice(param1, Main.cur_checkcode, Main.cur_pricecode);
		  }else{
			  class_12.method_8(new class_34(6,false));
			  sendBidPrice(param1, Main.cur_checkcode, Main.cur_pricecode);
		  }
	  }
	  
	  private function doOkButClick():void{
		  //var _loc2_:* = null;
		  this.var_151 = true;
		  
		  class_39.var_54 = false;
		  if(var_52.text.length == 0){
			  class_12.method_8(new class_34(4));
		  }else if(var_52.text == " "){
			  class_12.method_8(new class_34(4));
		  }else{
			  Main.cur_checkcode = var_52.text;
			  Main.cur_pricecode = this.priceCode;
			  dealBidPrice(String(this.var_191));
		  }
	  }
      
      private final function method_451() : void
      {
         var _loc1_:String = class_7(class_4.method_3.method_5(class_7)).requestid2to2;
         var _loc2_:class_9 = class_9(class_4.method_3.method_16(class_9));
         var _loc3_:String = "http://" + _loc2_.var_64 + "/bid/query.ashx?bidnumber=" + _loc2_.uid + "&requestid=" + _loc1_;
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         _loc4_.method = URLRequestMethod.GET;
         _loc4_.contentType = "application/json";
         this.var_178.load(_loc4_);
         logappliction.method_77("投标板块","2-2发出15秒后请求出价情况",_loc3_);
         this.var_178.addEventListener(Event.COMPLETE,this.getHttpContentHandler);
      }
      
      private final function getHttpContentHandler(param1:*) : void
      {
         var _loc2_:String = String(this.var_178.data);
         class_36.parse(_loc2_,3);
      }
      
      
      private final function method_171(param1:class_43) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:int = 0;
         var _loc17_:* = null;
         var _loc18_:* = null;
		 var _loc19_:* = null;
         _loc3_ = new Date();
         _loc4_ = String(_loc3_.getHours()) + ":" + String(_loc3_.getMinutes()) + ":" + String(_loc3_.getSeconds()) + "." + String(_loc3_.getMilliseconds());
         var _loc5_:class_38 = param1.var_40.clone();
         var _loc6_:String = _loc5_.method_46();
         var _loc7_:String = this.var_7.method_50(_loc6_);
         var _loc8_:Object = JSON.parse(_loc7_);
         var _loc9_:String = _loc8_.response.responsecode;
         var _loc10_:String = _loc8_.servertime;
         if(_loc9_ == "0")
         {
			 if(Main.islocal == true){
				 _loc8_.response.data.imageurl = 'http://www.shuiguozhuan.com/web/res/imgs/vcode/0f76ff93-c33e-4bb1-82b3-deec1ad51d60.jpg?ep=278';
			 }
			 
            _loc12_ = _loc8_.response.data.imageurl;
			
			_loc13_ = new Array();
			if(_loc12_.indexOf("ep") == -1)
			{
				_loc13_[0] = _loc12_;
			}
			else if(_loc12_.indexOf("&") == -1)
			{
				_loc13_[0] = _loc12_.split("?")[0];
				if(_loc12_.split("?").length > 1 && _loc12_.split("?")[1].split("=").length == 2)
				{
					_loc13_[1] = _loc12_.split("?")[1].split("=")[1];
				}
			}
			else
			{
				_loc13_[0] = _loc12_.split("&")[0];
				if(_loc12_.split("&").length > 1 && _loc12_.split("&")[1].split("=").length == 2)
				{
					_loc13_[1] = _loc12_.split("&")[1].split("=")[1];
				}
			}
			
            this.imageurl = _loc13_[0];
			
            if(_loc13_.length == 2)
            {
               logappliction.WriteLog2("投标板块","得到的数据","type:" + _loc8_.response.data.type + ",字符串" + _loc13_[1]);
               if(_loc8_.response.data.type == 1)
               {
                  logappliction.WriteLog2("投标板块","eval计算结果",String(D.eval(_loc13_[1])));
                  this.priceCode = String(D.eval(_loc13_[1]));
               }
               else
               {
                  this.priceCode = _loc13_[1];
               }
               logappliction.WriteLog2("投标板块","priceCode",this.priceCode);
            }
            else
            {
               this.priceCode = "";
            }
            _loc14_ = _loc8_.response.data.prompt;
			prompt_tip = _loc14_;
            this.var_293.text = _loc14_;
            _loc3_ = new Date();
            _loc4_ = String(_loc3_.getHours()) + ":" + String(_loc3_.getMinutes()) + ":" + String(_loc3_.getSeconds()) + "." + String(_loc3_.getMilliseconds());
            _loc15_ = _loc8_.requestid;
            logappliction.method_54("投标板块","接收校验码2-1","requestid:" + _loc15_ + ",server time:" + _loc10_);
            logappliction.method_77("投标板块","接收校验码2-1",this.imageurl);
            
			if(this.imageurl.indexOf("?") != -1)
			{
				this.imageurl = this.imageurl + "&b=" + this.var_65;
			}
			else
			{
				this.imageurl = this.imageurl + "?b=" + this.var_65;
			}
			
			prevURL = this.imageurl;
			this.vcodeImg.source = this.imageurl;
            _loc16_ = this.numChildren - 1;
            this.setChildIndex(this.vcodeImg,_loc16_);
         }
         else
         {
            _loc17_ = _loc8_.response.responsemsg;
            _loc18_ = new class_34(_loc17_);
            class_12.method_8(_loc18_);
            logappliction.method_54("投标板块","系统提示2-1",_loc17_);
         }
         var _loc11_:class_24 = class_14(class_4.method_3.method_5(class_14)).socketControl.socket;
         _loc11_.destroy("2-1",this.method_171);
      }
      
      private final function method_82(param1:*) : void
      {
         var _loc2_:Loader = Loader(param1.target.loader);
         var _loc3_:Bitmap = Bitmap(_loc2_.content);
         _loc3_.x = 309;
         _loc3_.y = 218;
         addChild(_loc3_);
         //logappliction.WriteLog2("投标板块","出价校验码","校验码加载完成");
      }
      
      private final function method_312(param1:class_55) : void
      {
         param1.content.x = 309;
         param1.content.y = 218;
         addChild(param1.content);
         //logappliction.WriteLog2("投标板块","出价校验码","校验码加载完成");
         class_83.destroy(param1.key,this.method_312);
      }
      
      private final function closeHandler(param1:MouseEvent) : void
      {
         this.var_151 = true;
         try
         {
            this.imageurl = "";
            this.parent.removeChild(this);
            return;
         }
         catch(e:*)
         {
            return;
         }
      }
   }
}
