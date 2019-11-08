package view
{
   import flash.display.Sprite;
   import package_10.class_40;
   import package_1.class_5;
   import package_1.class_8;
   import package_8.class_43;
   import package_2.class_38;
   import package_9.class_35;
   import package_12.class_73;
   import zebra.class_4;
   import package_12.class_72;
   import flash.utils.getTimer;
   import package_1.class_44;
   import package_1.class_69;
   import package_1.class_10;
   import package_8.class_24;
   
   public final class class_32 extends Sprite
   {
       
      public var bidinfo:view.class_71;
      
      public var socketControl:class_40;
      
      public var logappliction:class_5;
      
      public var var_7:class_8;
      
      public function class_32()
      {
         this.bidinfo = new view.class_71();
         this.logappliction = new class_5();
         this.var_7 = new class_8(Main.var_53);
         super();
         class_4.method_3.method_61(this);
         var _loc1_:class_69 = class_69(class_4.method_3.method_16(class_69));
         var _loc2_:class_10 = class_10(class_4.method_3.method_16(class_10));
         var _loc3_:class_12 = class_12(class_4.method_3.method_5(class_12));
         var _loc4_:class_24 = class_14(class_4.method_3.method_5(class_14)).socketControl.socket;
         _loc4_.receive("3-1",this.Reader3to1Handler);
         this.bidinfo.setLightState(2);
         addChild(this.bidinfo);
         class_4.method_27.method_57(new class_72(),1000);
      }
      
      private final function Reader1to1Handler(param1:class_43) : void
      {
         var _loc2_:class_38 = param1.var_40.clone();
         var _loc3_:String = _loc2_.method_46();
         var _loc4_:String = this.var_7.method_50(_loc3_);
         var _loc5_:String = _loc4_;
         this.bidinfo.info.htmlText = class_35.info(_loc5_);
         var _loc6_:class_73 = new class_73();
         _loc6_.execute();
         class_4.method_23.method_134();
      }
      
      private final function Reader3to1Handler(param1:class_43) : void
      {
         if(class_4.method_23.method_31)
         {
            class_41(class_4.method_3.method_5(class_41)).bidstage.ver.text = Main.var_94 + " 帧频：" + String(this.stage.frameRate);
         }
         Main.isReconnectBy31 = false;
         class_72.var_152 = getTimer();
         this.bidinfo.setLightState(2);
         var _loc4_:class_38 = param1.var_40.clone();
         var _loc5_:String = _loc4_.method_46();
         var _loc6_:String = this.var_7.decode3_1(_loc5_);
         var _loc7_:String = _loc6_;
         if(class_35.method_332(_loc7_))
         {
            this.bidinfo.info.htmlText = class_35.info(_loc7_);
         }
         var _loc8_:class_44 = class_44(class_4.method_3.method_16(class_44));
         if(_loc8_ != null)
         {
            if(class_39(class_4.method_3.method_5(class_39)))
            {
               class_39(class_4.method_3.method_5(class_39)).setLoaderPos(_loc8_.method_338());
            }
         }
      }
   }
}
