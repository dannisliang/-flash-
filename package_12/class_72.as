package package_12
{
   import package_11.class_46;
   import package_1.class_5;
   import view.class_71;
   import view.class_41;
   import view.class_14;
   import flash.utils.getTimer;
   import zebra.class_4;
   import package_15.class_55;
   import package_9.class_35;
   import package_5.class_83;
   
   public final class class_72 extends class_46
   {
      
      public static var var_152:int;
      
      public static var var_88:Boolean = false;
       
      public var logappliction:class_5;
      
      public function class_72()
      {
         this.logappliction = new class_5();
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.execute();
         var_88 = false;
         if(getTimer() - var_152 > 10000)
         {
            _loc1_ = class_71(class_4.method_3.method_5(class_71));
            _loc2_ = class_14(class_4.method_3.method_5(class_14)).bidstagePart;
            _loc3_ = class_14(class_4.method_3.method_5(class_14));
            var_152 = getTimer();
            _loc1_.setLightState(1);
            if(!Main.isReconnectBy31)
            {
               Main.isReconnectBy31 = true;
               _loc3_.reconnect();
            }
         }
      }
      
      private final function method_331(param1:class_55) : *
      {
         var_88 = true;
         var _loc2_:class_71 = class_71(class_4.method_3.method_5(class_71));
         _loc2_.info.htmlText = class_35.info(param1.content,true);
         class_83.destroy(param1.key,this.method_331);
      }
   }
}
