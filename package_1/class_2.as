package package_1
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
   import flash.external.ExternalInterface;
   
   import view.class_12;
   import view.class_14;
   import view.class_16;
   
   import zebra.class_4;
   
   public class class_2
   {
       
      public var var_314:String;
      //trade server
      public var var_107:Array;
      
      public var port:int = 0;
      
      public var changeCount:int = 0;
      
      private var var_57:int = 0;
      
      private var var_252:Boolean = false;
      
      private var var_187:package_1.class_5;
      
      public function class_2()
      {
		 if(Main.islocal == true){
			 this.var_107 = ["115.28.175.104"];
		 }else{
         	this.var_107 = ["114.80.106.55"];
		 }
         this.var_187 = new package_1.class_5();
         super();
      }
      
      public final function method_360() : void
      {
         this.var_252 = true;
      }
      
      public final function resetAllowChangeCount() : void
      {
         this.var_252 = false;
         this.changeCount = 0;
      }
      
      public function get ip() : String
      {
         return this.var_107[this.var_57];
      }
      
      public final function method_237() : void
      {
         var _loc1_:* = null;
         this.var_187.WriteLog2("Main.isReconnectBy31",String(Main.isReconnectBy31),"");
         this.var_187.WriteLog2("changeCount",String(this.changeCount),"");
         if(Main.isReconnectBy31)
         {
            if(this.changeCount > 9)
            {
               Main.isReconnectBy31 = false;
			   if(ExternalInterface.available)
               		ExternalInterface.call("clearbidcookies");
               Main.var_56 = true;
               class_14(class_4.method_3.method_5(class_14)).socketControl.close();
               _loc1_ = new class_16(2);
               class_12.method_8(_loc1_);
            }
            else
            {
               this.var_57++;
               if(this.var_57 >= this.var_107.length)
               {
                  this.var_57 = 0;
               }
               this.changeCount++;
            }
         }
         else
         {
            this.var_57++;
            if(this.var_57 >= this.var_107.length)
            {
               this.var_57 = 0;
            }
         }
      }
   }
}
