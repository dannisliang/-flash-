package package_20
{
   public final class class_145 extends class_140
   {
       
      private var var_172:Vector.<package_20.class_156>;
      
      public function class_145(param1:*, param2:XML)
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         super(param1,param2);
         this.var_172 = new Vector.<package_20.class_156>();
         for each(_loc3_ in var_47.constant)
         {
            _loc4_ = new package_20.class_156();
            _loc4_.key = _loc3_.@name.toString();
            _loc4_.value = this.var_67[_loc4_.key];
            _loc4_.type = _loc3_.@type.toString();
            this.var_172.push(_loc4_);
            var_45.push(_loc4_.key);
         }
      }
      
      public final function method_17(param1:String) : *
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_172)
         {
            if(_loc2_.key == param1)
            {
               return _loc2_.value;
            }
         }
      }
      
      public function get method_356() : Vector.<package_20.class_156>
      {
         return this.var_172;
      }
   }
}
