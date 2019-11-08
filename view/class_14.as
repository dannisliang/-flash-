package view
{
   import flash.display.Sprite;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.clearTimeout;
   
   import package_1.class_3;
   import package_1.class_44;
   import package_1.class_5;
   import package_1.class_7;
   import package_1.class_8;
   
   import package_10.class_36;
   import package_10.class_40;
   
   import package_12.class_47;
   
   import package_2.class_38;
   
   import package_8.class_43;
   
   import package_9.class_35;
   
   import zebra.class_4;
   
   public final class class_14 extends Sprite
   {
      
      public static var var_102:class_47 = new class_47();
       
      public var bidstagePart:view.class_41;
      
      public var socketControl:class_40;
      
      public var requestid:String;
      
      public var var_7:class_8;
      
      public var logappliction:class_5;
      
      public var serverModel:class_3;
      
      private var var_286:uint = 0;
      
      private var var_292:Boolean = false;
      
      public var _IsPut11:Boolean = false;
      
      public function class_14()
      {
         var userModel:class_7 = null;
         this.bidstagePart = new view.class_41();
         this.var_7 = new class_8(Main.var_53);
         this.logappliction = new class_5();
         this.serverModel = class_3(class_4.method_3.method_16(class_3));
         super();
         class_4.method_3.method_61(this);
         userModel = class_7(class_4.method_3.method_16(class_7));
         this.socketControl = new class_40("右边操作出价",this.serverModel);
         this.socketControl.var_226 = function():void
         {
			//"投标板块","上线结果1-1","成功连接"
            socketControl.socket.receive("1-1",Reader1to1Handler);
			//上线请求
            socketControl.socket.send("1-1",userModel.bytes1_1);
			//接收队列消息
            socketControl.socket.receive("2-2",Reader2to2Handler);
			//接收出价情况
            socketControl.socket.receive("2-3",Reader2to3Handler);
			//开标结果
            socketControl.socket.receive("3-2",Reader3to2Handler);
			//被强制下线
            socketControl.socket.receive("1-2",Reader1to2Handler);//本标在其他地方登入
            var _loc1_:String = new String("this is a new book");
         };
         this.socketControl.ioErrorHandler = function():void
         {
            _IsPut11 = false;
            class_4.method_27.method_53(class_14.var_102);
            class_32(class_4.method_3.method_5(class_32)).bidinfo.setLightState(1);
            logappliction.WriteLog2("行情板块","ioErrorHandler","亮红灯");
            if(!Main.var_56)
            {
               socketControl.reconnect(serverModel);
               class_12.method_55();
            }
         };
         this.socketControl.securityErrorHandler = function():void
         {
            _IsPut11 = false;
            class_4.method_27.method_53(class_14.var_102);
            class_32(class_4.method_3.method_5(class_32)).bidinfo.setLightState(1);
            logappliction.WriteLog2("行情板块","securityErrorHandler","亮红灯");
            if(!Main.var_56)
            {
               socketControl.reconnect(serverModel);
               class_12.method_55();
            }
         };
         this.socketControl.closeHandler = function():void
         {
            _IsPut11 = false;
            class_4.method_27.method_53(class_14.var_102);
            class_32(class_4.method_3.method_5(class_32)).bidinfo.setLightState(1);
            logappliction.WriteLog2("行情板块","closeHandler","亮红灯");
            if(!Main.var_56)
            {
               socketControl.reconnect(serverModel);
               class_12.method_55();
            }
         };
         addChild(this.bidstagePart);
      }
      
      private final function Reader3to2Handler(param1:class_43) : void
      {
         var _loc2_:class_38 = param1.var_40.clone();
         var _loc3_:String = _loc2_.method_46();
         var _loc4_:String = this.var_7.method_50(_loc3_);
         var _loc5_:String = _loc4_;
         this.logappliction.method_54("投标板块","开标结果3-2",_loc5_);
         var _loc6_:Object = JSON.parse(_loc5_);
         var _loc7_:String = _loc6_.response.responsecode;
         var _loc8_:String = _loc6_.response.data;
         class_12(class_4.method_3.method_5(class_12)).setMessage(_loc8_,true);
      }
      
      private function Reader1to2Handler(param1:class_43) : void
      {
         this.logappliction.WriteLog2("投标板块","1-2","被强制下线");
         Main.var_56 = true;
		 if(ExternalInterface.available)
         	ExternalInterface.call("clearbidcookies");
         navigateToURL(new URLRequest("javascript:clearbidcookies()"),"_self");
         var _loc3_:class_16 = new class_16(1);
         class_12.method_8(_loc3_);
      }
      
      private final function Reader2to3Handler(param1:class_43) : void
      {
         class_39.var_54 = true;
         var _loc2_:class_38 = param1.var_40.clone();
         var _loc3_:String = _loc2_.method_46();
         var _loc4_:String = this.var_7.method_50(_loc3_);
         var _loc5_:String = _loc4_;
         this.logappliction.method_54("投标板块","接收出价情况2-3",_loc5_);
         class_36.parse(_loc5_,2);
      }
      
      private final function Reader2to2Handler(param1:class_43) : void
      {
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = undefined;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc3_:String = "this is a new book".concat("a");
         var _loc4_:class_38 = param1.var_40.clone();
         var _loc5_:String = _loc4_.method_46();
         var _loc6_:String = this.var_7.method_50(_loc5_);
         //this.logappliction.WriteLog2("投标板块","接收队列消息2-2",_loc6_);
		 this.logappliction.WriteLog2("接收数据解包前", Main.cur_servertime, String(Main.maxPrice));
         var _loc7_:String = _loc6_;
         var _loc8_:Object = new Object();
         _loc8_ = JSON.parse(_loc7_);
         var _loc9_:String = _loc8_.response.responsecode;
         _loc10_ = _loc8_.servertime;
         if(_loc9_ != "0")
         {
			if(4001 == int(_loc9_) || 2101 == int(_loc9_)){
				//拍卖会已结束，出价请求被退回->4001
				//图像校验码错误->2101
				clearTimeout(Main.intervalId);
				Main.intervalId = 0;
				if(4001 == int(_loc9_)){
					this.logappliction.WriteLog2("出价详情", "关闭持续出价","拍卖会已结束，出价请求被退回");
				}
				if(2101 == int(_loc9_)){
					this.logappliction.WriteLog2("出价详情", "验码错误","图像校验码错误");
					//如果验证码失败，请重新发起
					PriceInfoWindowPart.autoSendReq4Chaptcha(Main.cur_bidprice );
					return;
				}
			}
			
            _loc11_ = _loc8_.response.responsemsg;
            class_12.method_8(new class_34(_loc11_,true));
            this.logappliction.method_54("投标板块","接收系统提示2-2",_loc11_);
            this.logappliction.method_54("投标板块","接收系统提示2-2","servertime is:" + _loc10_);
         }else{
			
            if(!class_39.var_54)
            {
               class_12.method_8(new class_39());
            }
            _loc12_ = _loc8_.response.data.bidcount;
			Main.bid_count = _loc12_;
            _loc13_ = _loc8_.response.data.bidamount;
            _loc14_ = _loc8_.response.data.bidnumber;
            _loc15_ = _loc8_.response.data.bidtime;
            _loc10_ = _loc8_.servertime;
            this.requestid = _loc8_.response.data.requestid;
            _loc11_ = _loc8_.response.data.msg;
            _loc16_ = _loc11_.split("，");
            if(_loc16_[1] != null)
            {
               _loc17_ = _loc16_[2];
               _loc18_ = String(Number(_loc16_[2]) - Number(_loc16_[3]));
               _loc19_ = "我的序号:" + _loc16_[2] + ",正处理的序号:" + _loc16_[3];
               this.logappliction.WriteLog2("投标板块","接收队列消息2-2",_loc19_ + ",server time:" + _loc10_);
               if(class_44(class_4.method_3.method_16(class_44)) == null)
               {
                  _loc20_ = new class_44();
               }
               else
               {
                  _loc20_ = class_44(class_4.method_3.method_16(class_44));
               }
               _loc20_.var_148 = _loc16_[2];
               _loc20_.var_144 = _loc16_[3];
               _loc20_.method_330();
               if(_loc16_[2] > class_35.var_38)
               {
                  class_39(class_4.method_3.method_5(class_39)).setLoaderPos(0);
               }
               this.logappliction.WriteLog1("投标板块","接收队列消息2-2",this.requestid);
            }
         }
      }
      
      private final function Reader1to1Handler(param1:class_43) : void
      {
         class_32(class_4.method_3.method_5(class_32)).bidinfo.setLightState(2);
         this.var_292 = true;
         this.method_323();
         class_3(class_4.method_3.method_16(class_3)).resetAllowChangeCount();
         this.logappliction.WriteLog2("投标板块","上线结果1-1","成功连接");
         var _loc2_:class_38 = param1.var_40.clone();
         var _loc3_:String = _loc2_.method_46();
         var _loc4_:String = this.var_7.method_50(_loc3_);
         var _loc5_:String = _loc4_;
         class_36.parse(_loc5_,0);
         class_4.method_27.method_57(class_14.var_102,10000);
      }
      
      public final function reconnect() : void
      {
         this.socketControl.reconnect(this.serverModel);
      }
      
      public final function method_323() : *
      {
         clearTimeout(this.var_286);
      }
   }
}
