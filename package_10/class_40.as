package package_10
{
   import package_8.class_24;
   import package_1.class_5;
   import view.class_27;
   import zebra.class_4;
   import package_1.class_2;
   import flash.utils.setTimeout;
   
   public final class class_40
   {
       
      private var _model;
      
      private var var_290:String;
      
      public var socket:class_24;
      
      public var logappliction:class_5;
      
      public var var_226:Function;
      
      public var closeHandler:Function;
      
      public var ioErrorHandler:Function;
      
      public var securityErrorHandler:Function;
      
      public function class_40(param1:String, param2:*)
      {
         this.logappliction = new class_5();
         super();
         this.var_290 = param1;
         this._model = param2;
         class_4.method_3.method_282("socketControl");
         class_4.method_3.method_235("socketControl",this);
         this.method_262();
      }
      
      private final function method_262() : void
      {
         this.socket = new class_24();
         this.socket.connect(this._model.ip,this._model.port);
         var _loc1_:String = this._model.ip;
         var _loc2_:String = this._model.port;
         var _loc3_:Date = new Date();
         var _loc4_:String = String(_loc3_.getHours()) + ":" + String(_loc3_.getMinutes()) + ":" + String(_loc3_.getSeconds()) + "." + String(_loc3_.getMilliseconds());
         class_27(class_4.method_3.method_5(class_27)).info(_loc4_ + "," + "建立socket连接" + "," + "socket" + "," + "IP:" + _loc1_ + "port:" + _loc2_);
         this.socket.var_78 = this.method_285;
         this.socket.closeHandler = this.method_326;
         this.socket.ioErrorHandler = this.method_255;
         this.socket.securityErrorHandler = this.method_236;
      }
      
      public final function reconnect(param1:class_2, param2:int = 1000) : void
      {
         var _model:class_2 = param1;
         var timer:int = param2;
         setTimeout(function():*
         {
            var _loc1_:* = null;
            var _loc2_:* = null;
            if(!Main.var_56)
            {
               _model.method_237();
               socket.connect(_model.ip,_model.port);
               _loc1_ = _model.ip;
               _loc2_ = String(_model.port);
               logappliction.WriteLogWithIpAndPort("投标板块","断线重连",_loc1_,_loc2_);
            }
         },timer);
      }
      
      private final function method_236(param1:class_24) : void
      {
         if(this.securityErrorHandler != null)
         {
            this.securityErrorHandler();
         }
      }
      
      private final function method_255(param1:class_24) : void
      {
         if(this.ioErrorHandler != null)
         {
            this.ioErrorHandler();
         }
      }
      
      private final function method_326(param1:class_24) : void
      {
         if(this.closeHandler != null)
         {
            this.closeHandler();
         }
      }
      
      private final function method_285(param1:class_24) : void
      {
         if(this.var_226 != null)
         {
            this.var_226();
         }
      }
      
      public final function close() : void
      {
         this.socket.close();
      }
   }
}
