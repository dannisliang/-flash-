package package_20
{
   public final class class_142 extends class_140
   {
       
      private var var_119:Vector.<package_20.class_151>;
      
      public function class_142(param1:*, param2:XML)
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         super(param1,param2);
         this.var_119 = new Vector.<package_20.class_151>();
         for each(_loc3_ in var_47.factory.variable)
         {
            _loc4_ = new package_20.class_151();
            _loc4_.key = _loc3_.@name.toString();
            _loc4_.value = var_50[_loc4_.key];
            _loc4_.type = _loc3_.@type.toString();
            this.var_119.push(_loc4_);
            var_45.push(_loc4_.key);
         }
      }
      
      public function get method_396() : Vector.<package_20.class_151>
      {
         return this.var_119;
      }
      
      public final function method_136(param1:String, param2:*) : void
      {
         var _loc3_:* = null;
         for each(_loc3_ in this.var_119)
         {
            if(_loc3_.key == param1)
            {
               var_50[_loc3_.key] = param2;
               _loc3_.value = param2;
               break;
            }
         }
      }
      
      public final function method_17(param1:String) : *
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_119)
         {
            if(_loc2_.key == param1)
            {
               return _loc2_.value;
            }
         }
      }
   }
}
