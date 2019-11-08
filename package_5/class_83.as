package package_5
{
   import flash.system.LoaderContext;
   import zebra.class_4;
   import package_15.class_87;
   import package_15.class_55;
   import package_15.class_89;
   
   public final class class_83
   {
      
      public static const name_1:String = "GameAssetChannel";
      
      private static var var_163:LoaderContext;
       
      public function class_83()
      {
         super();
      }
      
      public static function get method_274() : LoaderContext
      {
         if(var_163 == null)
         {
            var_163 = new LoaderContext(false,class_4.method_173);
         }
         return var_163;
      }
      
      public static function receive(param1:String, param2:*) : void
      {
         class_4.method_28.receive(param1,param2,name_1);
      }
      
      public static function destroy(param1:String, param2:*) : void
      {
         class_4.method_28.destroy(param1,param2,name_1);
      }
      
      public static function load(param1:String, param2:String = "auto", param3:Boolean = false, param4:Object = null) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(param2 == "auto")
         {
            param2 = method_215(param1);
         }
         if(!param3)
         {
            _loc5_ = new class_87(param2,param3);
            _loc5_.load(param1,param4);
         }
         else
         {
            _loc6_ = class_4.method_3.method_302(param1);
            if(_loc6_ != null)
            {
               new class_88(_loc6_);
            }
            else
            {
               _loc5_ = new class_87(param2,param3);
               _loc5_.load(param1,param4);
            }
         }
      }
      
      private static function method_215(param1:String) : String
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
   }
}
