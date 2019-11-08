package package_4
{
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   import zebra.class_4;
   
   public final class class_21 extends EventDispatcher
   {
       
      public var var_295:int = 380;
      
      private var var_154:class_61;
      
      public function class_21()
      {
         super();
         this.var_154 = new class_61();
         class_4.method_27.method_57(this.var_154);
         class_4.method_39.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.method_275);
      }
      
      private final function method_275(param1:KeyboardEvent) : void
      {
         this.var_154.method_183 = getTimer();
         this.var_154.var_83.push(param1.keyCode);
      }
      
      private final function method_334(param1:*) : Vector.<class_60>
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc2_:Vector.<class_60> = new Vector.<class_60>();
         if(param1 is String)
         {
            _loc3_ = String(param1).split(",");
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc5_ = String(_loc3_[_loc4_]).split("_");
               if(_loc5_.length == 1)
               {
                  _loc5_.push(1);
               }
               _loc6_ = new class_60();
               _loc6_.keyCode = _loc5_[0];
               _loc6_.var_87 = _loc5_[1];
               _loc2_.push(_loc6_);
               _loc4_++;
            }
         }
         return _loc2_;
      }
      
      public final function method_355(param1:Vector.<class_60>, param2:*) : Boolean
      {
         var _loc3_:* = null;
         if(param2 is String)
         {
            _loc3_ = this.method_334(param2);
         }
         else
         {
            _loc3_ = param2;
         }
         if(param1.length != _loc3_.length)
         {
            return false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            if(param1[_loc4_].keyCode != _loc3_[_loc4_].keyCode || param1[_loc4_].var_87 < _loc3_[_loc4_].var_87)
            {
               return false;
            }
            _loc4_++;
         }
         return true;
      }
   }
}
