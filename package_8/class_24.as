package package_8
{
   import zebra.class_4;
   import flash.utils.ByteArray;
   import package_3.class_42;
   import flash.utils.setTimeout;
   
   public final class class_24
   {
      
      public static var var_48:int = 0;
      
      public static var var_175:uint;
       
      public var var_273:String = "GameSocketThreadConnect_Success";
      
      public var var_236:String = "GameSocketThread_Close";
      
      public var var_249:String = "GameSocketThread_ioerror";
      
      public var var_255:String = "GameSocketThread_securityerror";
      
      private var var_26:class_63;
      
      public var var_304:Function;
      
      private var var_214:uint = 3000;
      
      private var var_149:Boolean;
      
      private var var_72:String = "GameSocketThread_channel";
      
      public var var_78:Function;
      
      public var ioErrorHandler:Function;
      
      public var securityErrorHandler:Function;
      
      public var closeHandler:Function;
      
      public function class_24()
      {
         super();
         var_48++;
         this.var_72 = "GameSocketThread_channel" + var_48;
         this.var_273 = "GameSocketThreadConnect_Success" + var_48;
         this.var_236 = "GameSocketThread_Close" + var_48;
         this.var_249 = "GameSocketThread_ioerror" + var_48;
         this.var_255 = "GameSocketThread_securityerror" + var_48;
         this.var_26 = new class_63(this);
         this.var_26.var_78 = this.method_285;
         this.var_26.ioErrorHandler = this.method_255;
         this.var_26.securityErrorHandler = this.method_236;
         this.var_26.closeHandler = this.method_326;
      }
      
      public final function method_379(param1:Function) : void
      {
         this.var_26.var_195 = param1;
      }
      
      public final function receive(param1:String, param2:*) : void
      {
         class_4.method_28.receive(param1,param2,this.var_72);
      }
      
      public final function destroy(param1:String, param2:*) : void
      {
         class_4.method_28.destroy(param1,param2,this.var_72);
      }
      
      public final function send(param1:String, param2:ByteArray) : void
      {
         this.var_26.method_267(param1,param2);
      }
      
      private final function method_326() : void
      {
         if(this.closeHandler != null)
         {
            this.closeHandler(this);
         }
         class_4.method_28.send(this.var_236,new class_42(),this.var_72);
         if(this.var_149)
         {
            setTimeout(function():void
            {
               class_4.method_175.connect(var_26.ip,var_26.port,var_175);
            },this.var_214);
         }
      }
      
      private final function method_255() : void
      {
         if(this.ioErrorHandler != null)
         {
            this.ioErrorHandler(this);
         }
         class_4.method_28.send(this.var_249,new class_42(),this.var_72);
         if(this.var_149)
         {
            setTimeout(function():void
            {
               class_4.method_175.connect(var_26.ip,var_26.port,var_175);
            },this.var_214);
         }
      }
      
      private final function method_236() : void
      {
         if(this.securityErrorHandler != null)
         {
            this.securityErrorHandler(this);
         }
         class_4.method_28.send(this.var_255,new class_42(),this.var_72);
      }
      
      private final function method_285() : void
      {
         if(this.var_78 != null)
         {
            this.var_78(this);
         }
         class_4.method_28.send(this.var_273,new class_42(),this.var_72);
      }
      
      public final function connect(param1:String, param2:int, param3:uint = 0) : void
      {
         this.var_26.connect(param1,param2);
         param3 = param3;
      }
      
      public final function method_413(param1:uint = 3000) : void
      {
         this.var_214 = param1;
         this.var_149 = true;
      }
      
      public final function method_440() : void
      {
         this.var_149 = false;
      }
      
      public final function close() : void
      {
         this.var_26.close();
      }
      
      public function get name_1() : String
      {
         return this.var_72;
      }
      
      public function get method_213() : Boolean
      {
         return this.var_26.method_213;
      }
   }
}
