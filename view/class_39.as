package view
{
   import ws.PriceResult2;
   import flash.net.URLLoader;
   import package_1.class_5;
   import flash.events.MouseEvent;
   import flash.utils.setTimeout;
   import flash.utils.clearTimeout;
   import package_1.class_44;
   import zebra.class_4;
   import package_14.class_50;
   import package_1.class_9;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.events.Event;
   import package_10.class_36;
   import package_3.*;
   
   public final class class_39 extends PriceResult2
   {
      
      public static var var_54:Boolean = false;
       
      private var var_164:URLLoader;
      
      public var var_258:uint;
      
      public var logappliction:class_5;
      
      private var var_113:int = 0;
      
      private var var_248:int = 0;
      
      public function class_39()
      {
         this.var_164 = new URLLoader();
         this.logappliction = new class_5();
         super();
         class_4.method_3.method_61(this);
         this.loader.gotoAndStop(1);
         var_227.visible = false;
		 //"行情板块","2-3http请求","100%倒计时结束"
         class_14(class_4.method_3.method_5(class_14)).socketControl.socket.receive("2-3",this.method_238);
         this.visible = !class_39.var_54;
      }
      
      private final function closeHandler(param1:MouseEvent) : void
      {
         this.parent.removeChild(this);
      }
      
      private final function method_238(param1:*) : void
      {
         this.clearTimer();
      }
      
      public final function clearTimer() : void
      {
         clearTimeout(this.var_258);
         this.logappliction.WriteLog2("行情板块","2-3http请求","100%倒计时结束");
      }
      
      public final function setLoaderPos(param1:int) : void
      {
		 //param1 = 100;
         var _loc2_:* = null;
         if(param1 > this.var_248)
         {
            this.var_113 = param1;
            this.var_248 = param1;
            _loc2_ = class_44(class_4.method_3.method_16(class_44));
            if(this.var_113 == 100)
            {
               this.var_113 = 99;
            }
            this.loader.gotoAndStop(this.var_113);
            this.var_14.text = this.var_113 + "%";
            if(param1 == 100)
            {
               if(!var_54)
               {
                  this.var_258 = setTimeout(this.method_318,500);//7000);
                  this.logappliction.WriteLog2("行情板块","2-3http请求","100%倒计时开始");
               }
            }
         }
      }
      
      private final function method_318() : void
      {
         var _loc1_:String = class_14(class_4.method_3.method_5(class_14)).requestid;
         var _loc2_:class_9 = class_9(class_4.method_3.method_16(class_9));
         var _loc3_:String = "http://" + _loc2_.var_64 + "/bid/query.ashx?bidnumber=" + _loc2_.uid + "&requestid=" + _loc1_;
         //this.logappliction.method_77("投标板块","100%后7秒后请求出价情况",_loc3_);
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         _loc4_.method = URLRequestMethod.GET;
         _loc4_.contentType = "application/json";
         this.var_164.load(_loc4_);
         this.var_164.addEventListener(Event.COMPLETE,this.getHttpContentHandler);
      }
      
      private final function getHttpContentHandler(param1:*) : void
      {
         var _loc2_:String = String(this.var_164.data);
         class_36.parse(_loc2_,3);
         var_54 = true;
      }
   }
}
