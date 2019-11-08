package package_9
{
   import event.class_74;
   
   import package_1.class_5;
   
   import view.PriceInfoWindowPart;
   import view.class_12;
   import view.class_14;
   import view.class_27;
   import view.class_32;
   import flash.utils.clearTimeout;
   
   import zebra.class_4;
   
   public final class class_35
   {
      public static var logappliction:class_5 = new class_5();
      
      public static var var_38:int = 0;
       
      private var var_294:Main;
      
      public var var_311:String;
      
      public function class_35()
      {
         this.var_294 = new Main();
         super();
      }
	  
	  public static function checkIntervalId2():void{
		  var cur_time:String =   Main.cur_servertime.substr(8,6);
		  if(cur_time >= '113001'){
			  if(Main.intervalId2 != 0){
				  clearTimeout(Main.intervalId2);
				  Main.intervalId2 = 0;
			  }
			  if(Main.intervalId != 0){
				  clearTimeout(Main.intervalId);
				  Main.intervalId = 0;
			  }
			  return;
		  }
		  
		  if(cur_time >= '112930' && int(cur_time) % 5 == 0){
			  logappliction.WriteLog1("秒读","checkIntervalId2", String(Main.intervalId) + String(Main.price40));
			  if(Main.intervalId == 0 && Main.price40 != 0){
			  	PriceInfoWindowPart.autoSubmitTime();
			  }
		  }  
	  }
      
      public static function info(param1:String, param2:Boolean = false) : String
      {
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:int = 0;
         var _loc3_:String = param1;
         var _loc4_:Array = new Array();
         _loc4_ = _loc3_.split(",",_loc3_.length);
         var _loc5_:* = "";
         var _loc6_:String = _loc4_[1];
         var _loc7_:String = _loc4_[2];
		 var extra:String;
		 var cur_time:* = new Date();
		 //A->11:00之前
		 //B->11:00--11:30
		 //C->没有正在举行的拍卖会，请注意拍卖公告！
		 //D,G->拍卖会已结束！
		 //E->拍卖会已终止！
		 //H>拍卖会已暂停
		 
		 Main.cur_stage = _loc6_;
		 
		 
         if(_loc6_ == "A")
         {
            _loc5_ = _loc4_[3] + "\n";
            _loc5_ = _loc4_[3] + "\n" + ("投放额度数:" + _loc4_[4] + "\n");
            if(_loc7_ == "1")
            {
               _loc5_ = _loc5_ + ("起拍价:" + _loc4_[6] + "\n");
            }
            if(_loc7_ == "1")
            {
               if(_loc4_[5] == "0")
               {
                  _loc5_ = _loc5_ + "<font color=\'#FF0000\'>本场拍卖会警示价:无警示价</font>\n";
               }
               else
               {
                  _loc5_ = _loc5_ + ("<font color=\'#FF0000\'>本场拍卖会警示价:" + _loc4_[5] + "</font>\n");
				  Main.maxPrice = int(_loc4_[5]);////初始化maxPrice
               }
            }
            else
            {
               _loc5_ = _loc5_ + ("<font color=\'#FF0000\'>本场拍卖会警示价:" + _loc4_[5] + "</font>\n");
            }      _loc5_ = _loc5_ + ("拍卖会起止时间:" + _loc4_[7] + "至" + _loc4_[8] + "\n") + ("首次出价时段:" + _loc4_[9] + "至" + _loc4_[10] + "\n") + ("修改出价时段:" + _loc4_[11] + "至" + _loc4_[12] + "\n" + "\n") + "    目前为首次出价时段\n" + ("系统目前时间:<font color=\'#FF0000\'>" + _loc4_[13] + "</font>\n") + ("目前已投标人数:<font color=\'#FF0000\'>" + _loc4_[14] + "</font>\n") + ("目前最低可成交价:<font color=\'#FF0000\'>" + _loc4_[15] + "</font>\n") + ("最低可成交价出价时间:<font color=\'#FF0000\'>" + _loc4_[16] + "</font>\n");
			extra = _loc4_[0];
			Main.cur_servertime = _loc4_[0];
			
			
			var format_time:String = _loc4_[0].substr(8,2)+":"+_loc4_[0].substr(10,2)+":"+_loc4_[0].substr(12,2);
			
			if(String(_loc4_[13]) > format_time){
				Main.cur_servertime = _loc4_[0].substr(0,8)+_loc4_[13].substr(0,2)+_loc4_[13].substr(3,2)+_loc4_[13].substr(6,2);
			}else{
				Main.cur_servertime = _loc4_[0];
			}
			
			
			_loc5_ = _loc5_ + ("额外:" + extra.substr(8,2)+":"+ extra.substr(10,2)+":"+ extra.substr(12,2) + "\n");
			_loc5_ = _loc5_ + ("本地:" + String(cur_time.getHours()) + ":" + String(cur_time.getMinutes()) + ":" + String(cur_time.getSeconds()) + "\n");
			if(class_4.method_23.method_31)
            {
               _loc5_ = _loc5_ + ("当前处理位置:" + _loc4_[17]);
            }
            var_38 = _loc4_[17];
            _loc9_ = new Date();
            _loc10_ = String(_loc9_.getMinutes()) + "." + String(_loc9_.getSeconds());
            _loc11_ = _loc4_[13].substring(3,_loc4_[11].length);
            _loc11_ = _loc11_.split(":").join(".");
            //class_27(class_4.method_3.method_5(class_27)).info(_loc10_ + "-" + _loc11_);
         }
         else if(_loc6_ == "B")
         {
            _loc5_ = "<font color=\'#FF0000\'>";
            _loc5_ = "<font color=\'#FF0000\'>" + (_loc4_[3] + "\n");
            _loc5_ = "<font color=\'#FF0000\'>" + (_loc4_[3] + "\n") + ("投放额度数:" + _loc4_[4] + "\n");
            if(_loc7_ == "1")
            {
               _loc5_ = _loc5_ + ("起拍价:" + _loc4_[6] + "\n");
            }
            _loc5_ = _loc5_ + ("目前已投标人数:" + _loc4_[5] + "\n") + ("拍卖会起止时间:" + _loc4_[7] + "至" + _loc4_[8] + "\n") + ("首次出价时段:" + _loc4_[9] + "至" + _loc4_[10] + "\n") + ("修改出价时段:" + _loc4_[11] + "至" + _loc4_[12] + "\n" + "\n") + "</font>" + "    目前为修改出价时段\n" + ("系统目前时间:<font color=\'#FF0000\'><b>" + _loc4_[13] + "</b></font>\n") + ("目前最低可成交价:<font color=\'#FF0000\'><b>" + _loc4_[14] + "</b></font>\n") + ("最低可成交价出价时间:<font color=\'#FF0000\'><b>" + _loc4_[15] + "</b></font>\n");
            _loc5_ = _loc5_ + ("目前数据库接受处理价格区间:<font color=\'#FF0000\'><b>" + _loc4_[16] + "至" + _loc4_[17] + "</b></font>\n");
			extra = _loc4_[0];
			
			//时间在40秒及后，并且并未 Main.price40 == 0时
			if(_loc4_[13] >= '11:29:40' && Main.price40 == 0){
				Main.price40 = int(_loc4_[17]);
				PriceInfoWindowPart.autoSendReq4Chaptcha(Main.price40 + Main.extra_price );
				logappliction.WriteLog1("秒读","40秒到", String(Main.price40));
			}
			
			if(_loc4_[13] <= '11:30:01' && Main.price40 != 0 && ( _loc4_[13] >= '11:29:56' || _loc4_[17] >= Main.price40 + Main.extra_price - 200)){
				//时间大于等于29:57 且价格接近设定价格时立即执行
				PriceInfoWindowPart.sendBidPrice(String(Main.price40 + Main.extra_price), Main.cur_checkcode, Main.cur_pricecode);
				logappliction.WriteLog1("秒读","时间超过11:29:56", _loc4_[13]+_loc4_[17]);
			}
			
			Main.cur_servertime = _loc4_[0];
			
			var format_time:String = _loc4_[0].substr(8,2)+":"+_loc4_[0].substr(10,2)+":"+_loc4_[0].substr(12,2);
			
			if(String(_loc4_[13]) > format_time){
				Main.cur_servertime = _loc4_[0].substr(0,8)+_loc4_[13].substr(0,2)+_loc4_[13].substr(3,2)+_loc4_[13].substr(6,2);
			}else{
				Main.cur_servertime = _loc4_[0];
			}
			
			checkIntervalId2();	//检查定时器，防止本地电脑晶振不准确，保证时间正确
			
			_loc5_ = _loc5_ + ("额外:" + extra.substr(8,2)+":"+ extra.substr(10,2)+":"+ extra.substr(12,2) + "\n");
			_loc5_ = _loc5_ + ("本地:" + String(cur_time.getHours()) + ":" + String(cur_time.getMinutes()) + ":" + String(cur_time.getSeconds()) + "\n");
			Main.maxPrice = int(_loc4_[17]);//////修改最高出价
			if(class_4.method_23.method_31)
            {
               _loc5_ = _loc5_ + ("当前处理位置:" + _loc4_[18]);
            }
            var_38 = _loc4_[18];
            _loc9_ = new Date();
            _loc10_ = String(_loc9_.getMinutes()) + "." + String(_loc9_.getSeconds());
            _loc12_ = _loc4_[13].substring(3,_loc4_[13].length);
            //class_27(class_4.method_3.method_5(class_27)).info(_loc10_ + "-" + _loc12_);
         }
         else
         {
			 //checkIntervalId2();	//检查定时器，防止本地电脑晶振不准确，保证时间正确
            _loc13_ = _loc4_[2];
            _loc14_ = new Array();
            _loc14_ = _loc13_.split("\n",_loc13_.length);
            _loc5_ = "";
            _loc15_ = 0;
            while(_loc15_ < _loc14_.length)
            {
               _loc5_ = _loc5_ + (_loc14_[_loc15_] + "\n");
               _loc15_++;
            }
            if(_loc4_[2] != null)
            {
               if(class_4.method_23.method_31)
               {
                  _loc5_ = _loc5_ + ("当前处理位置:" + _loc4_[3]);
               }
            }
            var_38 = _loc4_[3];
         }
         var _loc8_:class_74 = new class_74();
         _loc8_.var_58 = _loc6_;
         if(_loc4_[14])
         {
            _loc8_.value = _loc4_[14];
         }
         class_4.method_28.send(class_74.name,_loc8_);
         return _loc5_;
      }
      
      public static function method_332(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = param1;
         var _loc4_:Array = new Array();
         _loc4_ = _loc3_.split(",",_loc3_.length);
         var _loc6_:String = _loc4_[1];
         if(_loc6_ == "A" || _loc6_ == "B" || _loc6_ == "C" || _loc6_ == "D" || _loc6_ == "E" || _loc6_ == "G" || _loc6_ == "H")
         {
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public static function method_369(param1:String) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:* = null;
         var _loc2_:Date = new Date();
         var _loc3_:Array = new Array();
         _loc3_ = param1.split(":");
         var _loc4_:Number = _loc3_[0];
         var _loc5_:Number = _loc3_[1];
         var _loc6_:Number = _loc3_[2];
         var _loc7_:Date = new Date(_loc2_.getFullYear(),_loc2_.getMonth(),_loc2_.getDate(),_loc4_,_loc5_,_loc6_);
         var _loc8_:Number = Math.round((_loc7_.getTime() - _loc2_.getTime()) / 1000);
         if(Main.var_112)
         {
            Main.var_112 = false;
            Main.var_180 = _loc8_;
         }
         else
         {
            _loc9_ = Math.abs(_loc8_ - Main.var_180);
            if(_loc9_ >= 20)
            {
               _loc10_ = param1 + "\n" + _loc2_ + "\n" + "timeDifference:" + _loc8_;
               logappliction.WriteLog2("","",_loc10_);
               Main.var_112 = true;
               class_32(class_4.method_3.method_5(class_32)).bidinfo.setLightState(1);
               class_14(class_4.method_3.method_5(class_14)).socketControl.close();
               class_14(class_4.method_3.method_5(class_14)).reconnect();
               class_12.method_55();
            }
         }
      }
   }
}
