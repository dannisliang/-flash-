package package_9
{
   public final class class_67
   {
      
      private static var var_95:String = "0123456789abcdef";
       
      public function class_67()
      {
         super();
      }
      
      public static function method_67(param1:int, param2:int) : int
      {
         return param1 << param2 | param1 >>> 32 - param2;
      }
      
      public static function method_427(param1:int, param2:int) : uint
      {
         var _loc3_:int = 32 - param2;
         return param1 << _loc3_ | param1 >>> 32 - _loc3_;
      }
      
      public static function method_107(param1:int, param2:Boolean = false) : String
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:String = "";
         if(param2)
         {
            _loc4_ = 0;
            while(_loc4_ < 4)
            {
               _loc3_ = _loc3_ + (var_95.charAt(param1 >> (3 - _loc4_) * 8 + 4 & 15) + var_95.charAt(param1 >> (3 - _loc4_) * 8 & 15));
               _loc4_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < 4)
            {
               _loc3_ = _loc3_ + (var_95.charAt(param1 >> _loc5_ * 8 + 4 & 15) + var_95.charAt(param1 >> _loc5_ * 8 & 15));
               _loc5_++;
            }
         }
         return _loc3_;
      }
   }
}
