package package_8
{
   import package_11.class_46;
   import package_2.class_38;
   import zebra.class_4;
   
   final class class_81 extends class_46
   {
       
      private var var_169:Vector.<class_38>;
      
      private var var_196:package_8.class_24;
      
      private var var_110:int = 2;
      
      function class_81(param1:Vector.<class_38>, param2:package_8.class_24)
      {
         super();
         this.var_169 = param1;
         this.var_196 = param2;
      }
      
      override public function execute() : void
      {
         var _loc3_:* = null;
         var _loc1_:int = 0;
         if(this.var_169.length >= this.var_110)
         {
            _loc1_ = this.var_110;
         }
         else
         {
            _loc1_ = this.var_169.length;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.var_169.shift();
            class_4.method_28.send(_loc3_.method_320 + "-" + _loc3_.method_248,new class_43(_loc3_,this.var_196),this.var_196.name_1);
            _loc2_++;
         }
      }
   }
}
