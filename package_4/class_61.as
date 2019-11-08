package package_4
{
   import package_11.class_46;
   import package_14.KeyInputEvent;
   import zebra.class_4;
   import flash.utils.getTimer;
   
   final class class_61 extends class_46
   {
       
      public var var_83:Vector.<int>;
      
      private var var_99:int;
      
      function class_61()
      {
         super();
         this.var_83 = new Vector.<int>();
      }
      
      public function get method_183() : int
      {
         return this.var_99;
      }
      
      public function set method_183(param1:int) : void
      {
         var _loc2_:* = null;
         if(this.var_99 == 0)
         {
            _loc2_ = new KeyInputEvent(KeyInputEvent.const_183);
            class_4.method_121.dispatchEvent(_loc2_);
         }
         this.var_99 = param1;
      }
      
      override public function execute() : void
      {
         var _loc1_:* = null;
         super.execute();
         if(this.var_99 > 0)
         {
            if(getTimer() - this.var_99 > class_4.method_121.var_295)
            {
               _loc1_ = new KeyInputEvent(KeyInputEvent.const_205);
               _loc1_.var_265 = this.method_281(this.var_83);
               _loc1_.var_83 = this.var_83;
               class_4.method_121.dispatchEvent(_loc1_);
               this.var_99 = 0;
               this.var_83 = new Vector.<int>();
            }
         }
      }
      
      private final function method_281(param1:Vector.<int>) : Vector.<class_60>
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc2_:Vector.<class_60> = new Vector.<class_60>();
         for each(_loc5_ in param1)
         {
            _loc6_ = new class_60();
            if(_loc4_ == 0)
            {
               _loc4_ = _loc5_;
               _loc6_.keyCode = _loc4_;
               _loc6_.var_87 = 1;
               _loc2_.push(_loc6_);
            }
            if(_loc4_ != 0)
            {
               _loc3_ = _loc4_;
               _loc4_ = _loc5_;
               if(_loc3_ == _loc4_)
               {
                  _loc2_[_loc2_.length - 1].var_87++;
               }
               else
               {
                  _loc6_.keyCode = _loc4_;
                  _loc6_.var_87 = 1;
                  _loc2_.push(_loc6_);
               }
            }
         }
         return _loc2_;
      }
   }
}
