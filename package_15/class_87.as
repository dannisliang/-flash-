package package_15
{
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import zebra.class_4;
   import flash.events.ProgressEvent;
   import package_14.AssetLoaderEvent;
   import flash.events.Event;
   import package_3.class_25;
   import package_5.class_83;
   import flash.events.IOErrorEvent;
   import package_19.class_100;
   
   public final class class_87 extends EventDispatcher implements class_79
   {
       
      public var progress:Number;
      
      private var var_5:package_15.class_97;
      
      private var var_158:String;
      
      private var var_153:Boolean;
      
      private var var_284:String;
      
      private var var_310;
      
      public function class_87(param1:String, param2:Boolean)
      {
         super();
         this.progress = 0;
         this.var_158 = param1;
         this.var_153 = param2;
         switch(this.var_158)
         {
            case class_89.const_7:
               this.var_5 = new class_101(this);
               class_101(this.var_5).contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
               class_101(this.var_5).contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.method_94);
               class_101(this.var_5).contentLoaderInfo.addEventListener(Event.COMPLETE,this.method_82);
               break;
            case class_89.const_19:
               this.var_5 = new class_98(this);
               class_98(this.var_5).contentLoader.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
               class_98(this.var_5).contentLoader.addEventListener(ProgressEvent.PROGRESS,this.method_94);
               class_98(this.var_5).contentLoader.addEventListener(Event.COMPLETE,this.method_82);
         }
         this.var_5.state = class_102.const_139;
      }
      
      private final function method_215(param1:String) : String
      {
         var _loc2_:String = "";
         if(param1.indexOf(".xml") != -1)
         {
            _loc2_ = class_89.const_19;
         }
         if(param1.indexOf(".swf") != -1)
         {
            _loc2_ = class_89.const_7;
         }
         if(param1.indexOf(".jpg") != -1)
         {
            _loc2_ = class_89.const_7;
         }
         if(param1.indexOf(".png") != -1)
         {
            _loc2_ = class_89.const_7;
         }
         if(param1.indexOf(".gif") != -1)
         {
            _loc2_ = class_89.const_7;
         }
         if(_loc2_ == "")
         {
            _loc2_ = class_89.const_19;
         }
         return _loc2_;
      }
      
      public function load(param1:*, param2:Object = null) : void
      {
         var _loc3_:* = null;
         if(param1 is URLRequest)
         {
            _loc3_ = param1;
         }
         else
         {
            _loc3_ = new URLRequest(param1);
         }
         this.var_284 = _loc3_.url;
         this.var_5.param = param2;
         this.var_5.load(_loc3_);
         if(this.var_153)
         {
            class_4.method_3.method_309(_loc3_.url,this.var_5);
         }
      }
      
      private final function method_94(param1:ProgressEvent) : void
      {
         this.var_5.state = class_102.const_164;
         this.progress = param1.bytesLoaded / param1.bytesTotal;
         dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.PROGRESS));
      }
      
      public function method_82(param1:Event) : void
      {
         var _loc4_:int = 0;
         this.progress = 1;
         this.var_5.state = class_102.const_136;
         var _loc2_:Array = class_25(class_4.method_28).getReceiveData(class_83.name_1);
         if(_loc2_ != null)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc2_[0].length)
            {
               if(_loc2_[0][_loc4_] == this.var_5.request.url)
               {
                  if(_loc2_[1][_loc4_] is class_99)
                  {
                     class_99(_loc2_[1][_loc4_]).assetloader = this.var_5;
                  }
               }
               _loc4_++;
            }
         }
         class_4.method_28.send(this.var_5.request.url,this.var_5,class_83.name_1);
         var _loc3_:AssetLoaderEvent = new AssetLoaderEvent(AssetLoaderEvent.COMPLETE);
         _loc3_.assetloader = this.var_5;
         dispatchEvent(_loc3_);
      }
      
      private final function ioErrorHandler(param1:IOErrorEvent) : void
      {
         var _loc2_:AssetLoaderEvent = new AssetLoaderEvent(AssetLoaderEvent.const_191);
         dispatchEvent(_loc2_);
         class_100.method_35("[加载错误]:" + this.var_5.request.url,1,"0xFFFF00","0x9F0050");
         this.method_198();
      }
      
      public function get type() : String
      {
         return this.var_158;
      }
      
      private final function method_198() : void
      {
         if(this.var_5)
         {
            switch(this.var_158)
            {
               case class_89.const_7:
                  class_101(this.var_5).contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
                  class_101(this.var_5).contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.method_94);
                  class_101(this.var_5).contentLoaderInfo.removeEventListener(Event.COMPLETE,this.method_82);
                  break;
               case class_89.const_19:
                  class_98(this.var_5).contentLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
                  class_98(this.var_5).contentLoader.removeEventListener(ProgressEvent.PROGRESS,this.method_94);
                  class_98(this.var_5).contentLoader.removeEventListener(Event.COMPLETE,this.method_82);
            }
         }
      }
      
      public function dispose() : void
      {
         this.var_5.state = class_102.const_176;
         this.method_198();
      }
   }
}
