package package_10
{
   import view.class_41;
   import zebra.class_4;
   import view.class_12;
   import view.class_34;
   import view.class_27;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getDefinitionByName;
   import package_1.class_5;
   import view.PriceInfoWindowPart;
   import flash.utils.clearTimeout;
   
   public final class class_36
   {
       
      public var logappliction:class_5;
	  
	  static public var logappliction:class_5 = new class_5;
      
      public function class_36()
      {
         this.logappliction = new class_5();
         super();
      }
      
      public static function parse(param1:String, param2:int = 0) : *
      {
         switch(param2)
         {
            case 0:
				//1-1连接成功
               class_41(class_4.method_3.method_5(class_41)).setPriceInfo(method_156(param1));
               break;
            case 1:
			   //请求最新出价情况
               method_199(param1);
               break;
            case 2:
				//2-3数据包
               method_153(param1);
               break;
            case 3:
			   //timeout 数据包，类似2-3请求
               httpState2_3(param1);
         }
      }
      
      private static function method_156(param1:String) : *
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc2_:Object = new Object();
         _loc2_ = JSON.parse(param1);
         var _loc3_:String = _loc2_.response.responsecode;
         if(_loc3_ == "0" && _loc2_.response.data.results != null && _loc2_.response.data.results[0] != null)
         {
            _loc4_ = _loc2_.response.data.results[0].bidcount;
			Main.bid_count = _loc4_;
            _loc5_ = _loc2_.response.data.results[0].type;
            _loc6_ = "您第" + _loc4_ + "次出价\n";
            _loc6_ = _loc6_ + ("出价金额:" + _loc2_.response.data.results[0].bidamount + "\n");
            _loc6_ = _loc6_ + ("出价时间:" + _loc2_.response.data.results[0].dealtime + "\n");
            if(_loc5_ == "1")
            {
               _loc6_ = _loc6_ + "出价方式:网络出价";
            }
            else
            {
               _loc6_ = _loc6_ + "出价方式:电话出价";
            }
			//clearTimeout(Main.intervalId);
            return _loc6_;		
         }
         return "";
      }
      
      private static function method_199(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = null;
         var _loc10_:* = undefined;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:String = _loc2_.response.responsecode;
         if(_loc3_ != "0")
         {
			//出价失败则重启持续提交
			//PriceInfoWindowPart.continueBidPrice();
            if(_loc3_ == "2101")
            {
			   //验证码错误
               _loc4_ = _loc2_.response.responsemsg;
               class_12.method_8(new class_34(_loc4_,true));
            }
         }
         else if(_loc2_.response.data != null)
         {
            if(_loc2_.response.data[0] != null)
            {
               _loc5_ = _loc2_.response.data[0].bidamount;
               _loc6_ = _loc2_.response.data[0].bidcount;
			   Main.bid_count = _loc6_;
               _loc7_ = _loc2_.response.data[0].dealtime;
               _loc8_ = _loc2_.response.data[0].type;
               _loc9_ = _loc2_.response.data[0].msg;
               _loc10_ = "您第" + _loc6_ + "次出价\n";
               _loc10_ = _loc10_ + ("出价金额:" + _loc5_ + "\n");
               _loc10_ = _loc10_ + ("出价时间:" + _loc7_ + "\n");
               if(_loc8_ == "1")
               {
                  _loc10_ = _loc10_ + "出价方式:网络出价";
               }
               else
               {
                  _loc10_ = _loc10_ + "出价方式:电话出价";
               }
               class_41(class_4.method_3.method_5(class_41)).setPriceInfo(_loc10_);
			   clearTimeout(Main.intervalId);
            }
         }
      }
      
      private static function httpState2_3(param1:String) : void
      {
         var _loc6_:* = null;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = null;
         var _loc12_:* = undefined;
         var _loc2_:Date = new Date();
         var _loc3_:String = String(_loc2_.getHours()) + ":" + String(_loc2_.getMinutes()) + ":" + String(_loc2_.getSeconds());
         class_27(class_4.method_3.method_5(class_27)).info("投标板块,2-3http最新出价情况,当前时间" + _loc3_ + ",数据：" + param1);
         var _loc4_:Object = JSON.parse(param1);
         var _loc5_:String = _loc4_.response.responsecode;
         if(_loc5_ != "0")
         {
            if(_loc5_ == "2101")
            {
			   //验证码失败
               _loc6_ = _loc4_.response.responsemsg;
               class_12.method_8(new class_34(_loc6_,true));
			   
			   if(Main.price40 != 0){
				   //如果验证码失败，请重新发起
				   PriceInfoWindowPart.autoSendReq4Chaptcha(Main.price40 + Main.extra_price );
			   }
            }
            else
            {
			   //出价失败则重启持续提交
			   PriceInfoWindowPart.continueBidPrice();
               class_12.method_55();
            }
         }
         else if(_loc4_.response.data[0] != null)
         {
            _loc7_ = _loc4_.response.data[0].bidamount;
            _loc8_ = _loc4_.response.data[0].bidcount;
			Main.bid_count = _loc8_;
            _loc9_ = _loc4_.response.data[0].dealtime;
            _loc10_ = _loc4_.response.data[0].type;
            _loc11_ = _loc4_.response.data[0].msg;
            _loc12_ = "您第" + _loc8_ + "次出价\n";
            _loc12_ = _loc12_ + ("出价金额:" + _loc7_ + "\n");
            _loc12_ = _loc12_ + ("出价时间:" + _loc9_ + "\n");
            if(_loc10_ == "1")
            {
               _loc12_ = _loc12_ + "出价方式:网络出价";
            }
            else
            {
               _loc12_ = _loc12_ + "出价方式:电话出价";
            }
            class_41(class_4.method_3.method_5(class_41)).setPriceInfo(_loc12_);
            class_12.method_8(new class_34(_loc11_));
			clearTimeout(Main.intervalId);
         }
         else
         {
            class_12.method_55();
         }
      }
      
      private static function method_153(param1:String) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = undefined;
         var _loc16_:* = undefined;
         var _loc17_:* = undefined;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:String = _loc2_.response.responsecode;
         if(_loc3_ == "0")
         {
            _loc4_ = _loc2_.response.data.bidamount;
            _loc5_ = _loc2_.response.data.bidcount;
			Main.bid_count = _loc5_;
            _loc6_ = _loc2_.response.data.bidtime;
            _loc7_ = _loc2_.response.data.type;
            _loc8_ = _loc2_.response.data.msg;
            _loc9_ = _loc2_.servertime;
            _loc10_ = _loc2_.response.data.dealtime;
            _loc11_ = _loc10_.substring(0,_loc10_.length - 4);
            _loc12_ = _loc8_;
            if(_loc5_ != "0")
            {
               _loc15_ = "您第" + _loc5_ + "次出价\n";
               _loc15_ = _loc15_ + ("出价金额:" + _loc4_ + "\n");
               _loc15_ = _loc15_ + ("出价时间:" + _loc11_ + "\n");
               if(_loc7_ == "1")
               {
                  _loc15_ = _loc15_ + "出价方式: 网络出价";
               }
               else
               {
                  _loc15_ = _loc15_ + "出价方式: 电话出价";
               }
               class_41(class_4.method_3.method_5(class_41)).setPriceInfo(_loc15_);
               class_12.method_8(new class_34(_loc12_));
            }
            else
            {
               _loc15_ = "您第" + _loc5_ + "次出价\n";
               _loc15_ = _loc15_ + ("出价金额:" + _loc4_ + "\n");
               _loc15_ = _loc15_ + ("出价时间:" + _loc11_ + "\n");
               if(_loc7_ == "1")
               {
                  _loc15_ = _loc15_ + "出价方式:网络出价";
               }
               else
               {
                  _loc15_ = _loc15_ + "出价方式:电话出价";
               }
               class_41(class_4.method_3.method_5(class_41)).setPriceInfo(_loc15_);
               class_12.method_8(new class_34(_loc12_));
            }
            _loc13_ = new Date();
            _loc14_ = String(_loc13_.getHours()) + ":" + String(_loc13_.getMinutes()) + ":" + String(_loc13_.getSeconds());
            class_27(class_4.method_3.method_5(class_27)).info("投标板块,接收出价情况2-3,当前时间:" + _loc14_ + ",server time:" + _loc9_);
			clearTimeout(Main.intervalId);
		 }
         else
         {
			 //不成功，启动持续发送
			 PriceInfoWindowPart.continueBidPrice();
            _loc16_ = _loc2_.response.data.bidamount;
            _loc17_ = _loc2_.response.data.bidtime;
            _loc18_ = _loc2_.response.data.msg;
            _loc19_ = _loc2_.servertime;
            _loc20_ = _loc2_.response.data.dealtime;
            _loc21_ = "";
            if(_loc3_ != "4019")
            {
               _loc21_ = _loc20_.substring(0,_loc20_.length - 4);
            }
            else
            {
               _loc21_ = _loc20_;
            }
            _loc22_ = _loc18_ + "\n" + "出价金额:" + _loc16_ + "元" + "\n" + "系统处理时间:" + _loc21_;
            class_12.method_8(new class_34(_loc22_));
         }
      }
      
      private static function method_394(param1:String) : String
      {
         var _loc2_:* = null;
         if(class_41(class_4.method_3.method_5(class_41)).bidcode != 4)
         {
            if(param1.indexOf("000") != -1)
            {
               _loc2_ = param1.substring(0,param1.length - 4);
            }
         }
         else
         {
            _loc2_ = param1;
         }
         return _loc2_;
      }
   }
}
