package package_1
{
   import flash.net.URLRequest;
   import zebra.class_4;
   import view.class_27;
   
   public final class class_5
   {
       
      public function class_5()
      {
         super();
      }
      
      public final function WriteLog1(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(class_4.method_23.method_31)
         {
            _loc4_ = new Date();
            _loc5_ = String(_loc4_.getHours()) + ":" + String(_loc4_.getMinutes()) + ":" + String(_loc4_.getSeconds()) + "." + String(_loc4_.getMilliseconds());
            class_27(class_4.method_3.method_5(class_27)).info(_loc5_ + "," + param1 + "," + param2 + ",requestid=" + param3);
         }
      }
      
      public final function WriteLog2(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(class_4.method_23.method_31)
         {
            _loc4_ = new Date();
            _loc5_ = String(_loc4_.getHours()) + ":" + String(_loc4_.getMinutes()) + ":" + String(_loc4_.getSeconds()) + "." + String(_loc4_.getMilliseconds());
            class_27(class_4.method_3.method_5(class_27)).info(_loc5_ + "," + param1 + "," + param2 + "," + param3);
         }
      }
      
      public final function method_54(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(class_4.method_23.method_31)
         {
            _loc4_ = new Date();
            _loc5_ = String(_loc4_.getHours()) + ":" + String(_loc4_.getMinutes()) + ":" + String(_loc4_.getSeconds()) + "." + String(_loc4_.getMilliseconds());
            class_27(class_4.method_3.method_5(class_27)).info(_loc5_ + "," + param1 + "," + param2 + "," + param3);
         }
      }
      
      public final function WriteLogWithIpAndPort(param1:String, param2:String, param3:String, param4:String) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(class_4.method_23.method_31)
         {
            _loc5_ = new Date();
            _loc6_ = String(_loc5_.getHours()) + ":" + String(_loc5_.getMinutes()) + ":" + String(_loc5_.getSeconds()) + "." + String(_loc5_.getMilliseconds());
            class_27(class_4.method_3.method_5(class_27)).info(_loc6_ + "," + param1 + "," + param2 + ",ip=" + param3 + ":" + param4);
         }
      }
      
      public final function method_77(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(class_4.method_23.method_31)
         {
            _loc4_ = new Date();
            _loc5_ = String(_loc4_.getHours()) + ":" + String(_loc4_.getMinutes()) + ":" + String(_loc4_.getSeconds()) + "." + String(_loc4_.getMilliseconds());
            class_27(class_4.method_3.method_5(class_27)).info(_loc5_ + "," + param1 + "," + param2 + "," + "url:" + param3);
         }
      }
   }
}
