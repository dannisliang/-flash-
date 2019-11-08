package package_8
{
   import flash.events.EventDispatcher;
   import flash.net.Socket;
   import flash.utils.ByteArray;
   import package_2.class_38;
   import flash.events.SecurityErrorEvent;
   import flash.events.IOErrorEvent;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import package_14.GameSocketEvent;
   import package_13.class_82;
   import zebra.class_4;
   
   final class class_63 extends EventDispatcher implements class_62
   {
       
      private var var_22:Socket;
      
      private var var_34:ByteArray;//reviece data
      
      private var var_267:String;//ip address
      
      private var var_240:int;//port
      
      private var var_305:uint = 4;
      
      private var var_241:class_81;
      
      private var var_169:Vector.<class_38>;
      
      public var ioErrorHandler:Function;
      
      public var securityErrorHandler:Function;
      
      public var var_78:Function;
      
      public var closeHandler:Function;
      
      public var var_195:Function;
      
      private var var_72:String;
      
      private var var_196:package_8.class_24;
      
      function class_63(param1:package_8.class_24)
      {
         super();
         this.var_196 = param1;
         this.var_169 = new Vector.<class_38>();
         this.var_22 = new Socket();
         this.var_34 = new ByteArray();
         this.var_241 = new class_81(this.var_169,this.var_196);
         class_4.method_27.method_57(this.var_241);
      }
      
      private static function method_420() : void
      {
      }
      
      public function connect(param1:String, param2:int) : void
      {
         this.var_267 = param1;
         this.var_240 = param2;
         this.var_22.addEventListener(Event.CONNECT,this.method_259);
         this.var_22.addEventListener(ProgressEvent.SOCKET_DATA,this.method_319);
         this.var_22.addEventListener(Event.CLOSE,this.method_284);
         this.var_22.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.method_298);
         this.var_22.addEventListener(IOErrorEvent.IO_ERROR,this.method_287);
         this.var_22.connect(param1,param2);
         this.var_22.timeout = 5000;
      }
      
      public final function close() : void
      {
         try
         {
            this.var_22.close();
            return;
         }
         catch(e:*)
         {
            return;
         }
      }
      
      private final function method_287(param1:IOErrorEvent) : void
      {
         if(this.ioErrorHandler != null)
         {
            this.ioErrorHandler();
         }
         dispatchEvent(new GameSocketEvent(GameSocketEvent.const_193));
      }
      
      private final function method_298(param1:SecurityErrorEvent) : void
      {
         if(this.securityErrorHandler != null)
         {
            this.securityErrorHandler();
         }
         dispatchEvent(new GameSocketEvent(GameSocketEvent.const_172));
      }
      
      private final function method_259(param1:Event) : void
      {
         if(this.var_195 != null)
         {
            this.var_195();
         }
         if(this.var_78 != null)
         {
            this.var_78();
         }
         dispatchEvent(new GameSocketEvent(GameSocketEvent.const_189));
      }
      
      private final function method_284(param1:Event) : void
      {
         if(this.closeHandler != null)
         {
            this.closeHandler();
         }
         dispatchEvent(new GameSocketEvent(GameSocketEvent.CLOSE));
      }
      
      protected final function method_202() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(this.var_34.length >= 4)
         {
            this.var_34.position = 0;
            _loc1_ = uint(this.var_34.readUnsignedInt());
            if(this.var_34.length >= _loc1_)
            {
               _loc2_ = new ByteArray();
               _loc2_.writeBytes(this.var_34,0,_loc1_);
               _loc3_ = new class_38(_loc2_);
               this.var_169.push(_loc3_);
               _loc4_ = new ByteArray();
               _loc4_.writeBytes(this.var_34,_loc1_);
               this.var_34.clear();
               this.var_34 = _loc4_;
               this.method_202();
            }
         }
      }
      
      protected final function method_319(param1:ProgressEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_22.bytesAvailable > 0)
         {
            this.var_34.position = this.var_34.length;
            _loc2_ = new ByteArray();
            this.var_22.readBytes(_loc2_);
            this.var_34.writeBytes(_loc2_);
            this.method_202();
         }
      }
      
      public function send(param1:ByteArray) : void
      {
         if(this.var_22.connected)
         {
            this.var_22.writeBytes(param1);
            this.var_22.flush();
         }
      }
      
      public final function method_267(param1:String, param2:ByteArray) : void
      {
         this.send(class_82.method_294(param1,param2));
      }
      
      public function get bufferList() : Vector.<class_38>
      {
         return this.var_169;
      }
      
      public function get ip() : String
      {
         return this.var_267;
      }
      
      public function get port() : int
      {
         return this.var_240;
      }
      
      public function get method_213() : Boolean
      {
         return this.var_22.connected;
      }
   }
}
