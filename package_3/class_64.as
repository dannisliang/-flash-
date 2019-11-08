package package_3
{
   final class class_64
   {
       
      private var var_111:class_66;
      
      private var var_91:DirectEventScope;
      
      function class_64(param1:DirectEventScope, param2:class_66)
      {
         super();
         this.var_91 = param1;
         this.var_111 = param2;
      }
      
      public final function getDestroyEventAction(param1:String) : Array
      {
         return this.var_91.method_40(param1).destroyPool.EventAction;
      }
      
      public final function getDestroyEventName(param1:String) : Vector.<String>
      {
         return this.var_91.method_40(param1).destroyPool.EventName;
      }
      
      public final function add(param1:String, param2:*, param3:String) : void
      {
         if(!this.hasEvent(param1,param2,param3))
         {
            this.getDestroyEventName(param3).push(param1);
            this.getDestroyEventAction(param3).push(param2);
         }
      }
      
      public final function hasEvent(param1:String, param2:*, param3:String) : Boolean
      {
         var _loc4_:Array = this.getDestroyEventAction(param3);
         var _loc5_:Vector.<String> = this.getDestroyEventName(param3);
         var _loc6_:int = _loc4_.indexOf(param2);
         if(_loc6_ == -1)
         {
            return false;
         }
         if(_loc6_ != -1 && _loc5_[_loc6_] != param1)
         {
            return false;
         }
         return true;
      }
      
      public final function method_20(param1:String) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = undefined;
         var _loc10_:int = 0;
         var _loc2_:Array = this.getDestroyEventAction(param1);
         var _loc3_:Vector.<String> = this.getDestroyEventName(param1);
         var _loc4_:int = _loc3_.length - 1;
         var _loc9_:int = _loc4_;
         while(_loc9_ >= 0)
         {
            _loc5_ = _loc3_[_loc9_];
            _loc6_ = _loc2_[_loc9_];
            _loc10_ = this.var_111.method_164(param1) - 1;
            while(_loc10_ >= 0)
            {
               if(_loc5_ == this.var_111.method_51(param1)[_loc10_] && _loc6_ == this.var_111.method_38(param1)[_loc10_])
               {
                  this.var_111.method_20(_loc5_,_loc6_,param1);
                  this.method_325(_loc5_,_loc6_,param1);
               }
               _loc10_--;
            }
            _loc9_--;
         }
      }
      
      private final function method_325(param1:String, param2:*, param3:String) : void
      {
         var _loc9_:int = 0;
         var _loc4_:Array = this.getDestroyEventAction(param3);
         var _loc5_:Vector.<String> = this.getDestroyEventName(param3);
         var _loc6_:Vector.<int> = new Vector.<int>();
         var _loc7_:int = 0;
         while(_loc7_ < _loc5_.length)
         {
            if(_loc5_[_loc7_] == param1 && _loc4_[_loc7_] == param2)
            {
               _loc6_.push(_loc7_);
            }
            _loc7_++;
         }
         _loc6_.reverse();
         var _loc8_:int = _loc6_.length - 1;
         var _loc10_:int = _loc8_;
         while(_loc10_ >= 0)
         {
            _loc9_ = _loc6_[_loc10_];
            _loc5_.splice(_loc9_,1);
            _loc4_.splice(_loc9_,1);
            _loc10_--;
         }
      }
   }
}
