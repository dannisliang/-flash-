package view
{
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   
   import package_1.class_5;
   import package_1.class_7;
   import package_1.class_8;
   import package_1.class_9;
   
   import package_10.class_36;
   
   import package_15.class_55;
   
   import package_5.class_83;
   
   import ws.class_76;
   
   import zebra.class_4;
   
   public final class class_77 extends class_76
   {
       
      private var imageurl:String;
      
      private var var_207:String;
      
      public var logappliction:class_5;
      
      private var var_287:class_8;
      
      public function class_77()
      {
         this.logappliction = new class_5();
         this.var_287 = new class_8(Main.var_53);
         super();
         var_52.restrict = "0-9";
         var_159.addEventListener(MouseEvent.CLICK,this.method_133);
         okBut.addEventListener(MouseEvent.CLICK,this.method_278);
         addEventListener(Event.ADDED_TO_STAGE,this.method_181);
      }
      
      private final function method_181(param1:Event) : void
      {
		  trace(0);
         var webParamModel:class_9 = null;
         var httpUrl:String = null;
         var loader:URLLoader = null;
         var request:URLRequest = null;
         var e:Event = param1;
         stage.focus = var_52;
         this.logappliction.WriteLog2("投标板块","http查询最新出价情况","");
         var bidcode:Number = class_41(class_4.method_3.method_5(class_41)).bidcode;
         if(bidcode == 3)
         {
            class_12.method_8(new class_34(7));
         }
         else if(bidcode == 4)
         {
            class_12.method_8(new class_34(10));
         }
         else if(bidcode == 5)
         {
            class_12.method_8(new class_34(11));
         }
         else if(bidcode == 6)
         {
            class_12.method_8(new class_34(12));
         }
         else
         {
            webParamModel = class_9(class_4.method_3.method_16(class_9));
            httpUrl = "http://" + webParamModel.var_64 + "/webwcf/BidCmd.svc/WebCmd?p=" + Math.random();
            loader = new URLLoader();
            request = new URLRequest(httpUrl);
            request.method = URLRequestMethod.POST;
            request.data = class_7(class_4.method_3.method_16(class_7)).selfPriceInfowithoutUniqueid();
            request.contentType = "application/json";
            loader.addEventListener(Event.COMPLETE,function getHttpContentHandler(param1:Event):void
            {
               var _loc9_:int = 0;
               var _loc10_:int = 0;
               var _loc2_:String = String(loader.data);
               if(_loc2_.indexOf("</string") == -1)
               {
                  _loc2_ = _loc2_.split("\\\"").join("\"");
                  _loc2_ = _loc2_.substr(1,_loc2_.length - 2);
               }
               else
               {
                  _loc9_ = _loc2_.indexOf("/\">");
                  _loc10_ = _loc2_.indexOf("</string>");
                  _loc2_ = _loc2_.substring(_loc9_ + 3,_loc10_);
               }
               var _loc3_:String = _loc2_.split("\\/").join("/");
               var _loc4_:String = _loc3_;
               var _loc5_:Object = JSON.parse(_loc4_);
               var _loc6_:String = _loc5_.response.data;
               var _loc7_:Array = new Array();
               _loc7_ = _loc6_.split(",",_loc6_.length);
               var _loc8_:String = _loc7_[1];
               var_207 = _loc7_[0];
               method_160(_loc8_);
               logappliction.method_77("投标板块","请求最新出价情况校验码",_loc8_);
            });
            loader.load(request);
         }
      }
      
      private final function method_160(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 != null)
         {
			 vcodeImg.source = param1;
//            param1 = " <img src=\'" + param1 + "\' id=\'image2\'>";
//            _loc2_ = new TextField();
//            _loc2_.htmlText = param1;
//            addChild(_loc2_);
//            _loc3_ = _loc2_.getImageReference("image2");
//            _loc3_.x = 310;
//            _loc3_.y = 200;
//            addChild(_loc3_);
         }
         else
         {
            this.method_133(null);
         }
      }
      
      private final function method_278(param1:MouseEvent) : void
      {
         var _loc2_:* = null;
         if(var_52.text.length == 0)
         {
            _loc2_ = new class_34(4);
            class_12.method_8(_loc2_);
         }
         else
         {
            this.method_315();
         }
         this.method_133(param1);
      }
      
      private final function method_133(param1:MouseEvent) : void
      {
         try
         {
            this.parent.removeChild(this);
            return;
         }
         catch(e:*)
         {
            return;
         }
      }
      
      private final function method_306(param1:class_55) : void
      {
         param1.content.x = 310;
         param1.content.y = 200;
         addChild(param1.content);
         class_83.destroy(param1.key,this.method_306);
      }
      
      private final function method_315() : void
      {
         var loader:URLLoader = null;
         var webParamModel:class_9 = class_9(class_4.method_3.method_16(class_9));
         var httpUrl:String = "http://" + webParamModel.var_64 + "/webwcf/BidCmd.svc/WebCmd?p=" + Math.random();
         this.logappliction.method_77("投标板块","请求最新出价情况",httpUrl);
         loader = new URLLoader();
         var request:URLRequest = new URLRequest(httpUrl);
         request.method = URLRequestMethod.POST;
         request.data = class_7(class_4.method_3.method_16(class_7)).sendPriceInfo(var_52.text,this.var_207);
         request.contentType = "application/json";
         loader.load(request);
         loader.addEventListener(Event.COMPLETE,function getHttpContentHandler(param1:Event):void
         {
            var _loc5_:int = 0;
            var _loc6_:int = 0;
            var _loc2_:String = String(loader.data);
            if(_loc2_.indexOf("</string") == -1)
            {
               _loc2_ = _loc2_.split("\\\"").join("\"");
               _loc2_ = _loc2_.substr(1,_loc2_.length - 2);
            }
            else
            {
               _loc5_ = _loc2_.indexOf("/\">");
               _loc6_ = _loc2_.indexOf("</string>");
               _loc2_ = _loc2_.substring(_loc5_ + 3,_loc6_);
            }
            var _loc3_:String = _loc2_.split("\\/").join("/");
            var _loc4_:String = _loc3_;
            logappliction.method_54("投标板块","接收最新出价情况",_loc4_);
            class_36.parse(_loc4_,1);
         });
      }
   }
}
