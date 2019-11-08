package package_13
{
   import flash.utils.ByteArray;
   import package_2.class_29;
   
   public final class class_82
   {
       
      public function class_82()
      {
         super();
      }
      
      public static function method_439(param1:ByteArray) : ByteArray
      {
         param1.position = 0;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeBytes(param1,3);
         return _loc2_;
      }
      
      public static function method_294(param1:String, param2:ByteArray) : ByteArray
      {
         param2.position = 0;
         var _loc3_:Array = param1.split("-");
         var _loc4_:class_29 = new class_29();
         _loc4_.toUInt32(param2.length + 4 + 1 + 1);
         _loc4_.toUInt8(_loc3_[0]);
         _loc4_.toUInt8(_loc3_[1]);
         _loc4_.writeBytes(param2);
         return _loc4_;
      }
   }
}
