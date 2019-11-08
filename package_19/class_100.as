package package_19
{
   import package_20.class_120;
   
   public final class class_100
   {
       
      public function class_100()
      {
         super();
      }
      
      public static function method_35(param1:String, param2:int = 0, param3:String = "0x000000", param4:String = "0xFFFFFF") : void
      {
         var _loc5_:* = "[Tab:" + param2 + "],{" + param1 + "},{" + param3 + "},{" + param4 + "}";
      }
      
      public static function method_391(param1:*, param2:int = 0, param3:String = "0x0000FF", param4:String = "0xFFFFFF") : void
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         method_35(param1.toString(),param2,param3,param4);
         method_35("{",param2,param3,param4);
         var _loc5_:class_120 = new class_120(param1);
         for each(_loc6_ in _loc5_.variable.method_190)
         {
            method_35("  " + _loc6_ + ":" + _loc5_.variable.method_17(_loc6_),param2,param3,param4);
         }
         for each(_loc7_ in _loc5_.accessor.method_190)
         {
            method_35("  " + _loc7_ + ":" + _loc5_.accessor.method_17(_loc7_),param2,param3,param4);
         }
         method_35("}",param2,param3,param4);
      }
      
      public static function method_52(param1:*) : void
      {
         var _loc2_:* = undefined;
         if(!param1)
         {
            return;
         }
         for(_loc2_ in param1)
         {
         }
      }
   }
}
