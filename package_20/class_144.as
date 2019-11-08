package package_20
{
   public final class class_144 extends class_140
   {
       
      private var var_166:Vector.<package_20.class_155>;
      
      public function class_144(param1:*, param2:XML)
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         super(param1,param2);
         this.var_166 = new Vector.<package_20.class_155>();
         for each(_loc3_ in var_47.factory.method)
         {
            _loc4_ = new package_20.class_155();
            _loc4_.key = _loc3_.@name.toString();
            _loc4_.declaredBy = _loc3_.@declaredBy.toString();
            _loc4_.returnType = _loc3_.@returnType.toString();
            for each(_loc5_ in _loc3_.parameter)
            {
               _loc6_ = new class_154();
               _loc6_.index = int(_loc5_.@index);
               _loc6_.type = _loc5_.@type.toString();
               _loc6_.optional = Boolean(_loc5_.@optional);
               _loc4_.var_82.push(_loc6_);
            }
            this.var_166.push(_loc4_);
            var_45.push(_loc4_.key);
         }
      }
      
      public final function method_241(param1:String, param2:Array = null) : void
      {
         var _loc3_:* = null;
         for each(_loc3_ in this.var_166)
         {
            if(_loc3_.key == param1)
            {
               if(_loc3_.var_82.length == 0)
               {
                  var_50[_loc3_.key]();
                  break;
               }
               var_50[_loc3_.key](param2);
               break;
            }
         }
      }
      
      public function get method_456() : Vector.<package_20.class_155>
      {
         return this.var_166;
      }
   }
}
