package package_21
{
   import flash.utils.ByteArray;
   
   public final class class_139
   {
       
      private var var_69:ByteArray;
      
      public function class_139(param1:String = null)
      {
         super();
         var_69 = new ByteArray();
         if(param1 != null)
         {
            method_49(param1);
         }
      }
      
      public final function substr(param1:int = 0, param2:int = 2147483647) : String
      {
         return toString().substr(param1,param2);
      }
      
      public final function method_49(param1:*) : class_139
      {
         if(param1 != null)
         {
            var_69.writeUTFBytes(param1.toString());
         }
         return this;
      }
      
      public function get length() : int
      {
         return var_69.length;
      }
      
      public final function substring(param1:int = 0, param2:int = 2147483647) : String
      {
         return toString().substring(param1,param2);
      }
      
      public final function toString() : String
      {
         var_69.position = 0;
         return var_69.readUTFBytes(var_69.bytesAvailable);
      }
      
      public final function clear() : void
      {
         var_69.length = 0;
      }
      
      public final function method_401(param1:* = null) : void
      {
         if(param1 != null)
         {
            method_49(param1);
         }
         method_49("\n");
      }
   }
}
