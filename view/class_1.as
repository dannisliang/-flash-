package view
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.events.Event;
   import wicresoft.errorInfo;
   import flash.net.SharedObject;
   import zebra.class_4;
   import flash.external.ExternalInterface;
   import package_2.class_13;
   
   public final class class_1 extends Sprite
   {
       
      private var var_48:String;
      
      private var var_259:TextField;
      
      public function class_1()
      {
         this.var_48 = class_13.create();
         this.var_259 = new TextField();
		 var_259.width = 600;
		 var_259.x = 10;
		 var_259.y = 460;
		 this.addChild(var_259);
         super();
         var _loc1_:SharedObject = SharedObject.getLocal("browserSO");
         _loc1_.data["uuid"] = this.var_48;
         _loc1_.flush();
         addChild(new class_12());
         addEventListener(Event.ENTER_FRAME,this.method_176);
      }
      
      private final function method_176(param1:Event) : void
      {
         var _loc3_:* = null;
         var _loc2_:SharedObject = SharedObject.getLocal("browserSO");
         this.var_259.text = _loc2_.data["uuid"] + "<<>>" + this.var_48 + ">>"// + Math.random();
         if(_loc2_.data["uuid"] != this.var_48)
         {
            removeEventListener(Event.ENTER_FRAME,this.method_176);
            Main.var_56 = true;
			if(ExternalInterface.available)
            	ExternalInterface.call("clearbidcookies");
			removeChildren();
            class_14(class_4.method_3.method_5(class_14)).socketControl.close();
            _loc3_ = new errorInfo();
            _loc3_.x = 25;
            class_4.method_39.stage.addChild(_loc3_);
         }
      }
   }
}
