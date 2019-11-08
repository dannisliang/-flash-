package package_3
{
   import flash.utils.ByteArray;
   
   final class class_66
   {
       
      private var var_91:package_3.DirectEventScope;
      
      function class_66(param1:package_3.DirectEventScope)
      {
         super();
         this.var_91 = param1;
      }
      
      public final function method_51(param1:String) : Vector.<String>
      {
         if(this.var_91.method_40(param1) == null)
         {
            return null;
         }
         return this.var_91.method_40(param1).listenerPool.EventName;
      }
      
      public final function method_38(param1:String) : Array
      {
         if(this.var_91.method_40(param1) == null)
         {
            return null;
         }
         return this.var_91.method_40(param1).listenerPool.EventAction;
      }
      
      public final function method_164(param1:String) : int
      {
         return this.var_91.method_40(param1).listenerPool.EventName.length;
      }
      
      public final function add(param1:String, param2:*, param3:String) : void
      {
         if(!this.hasEvent(param1,param2,param3))
         {
            this.method_51(param3).push(param1);
            this.method_38(param3).push(param2);
         }
      }
      
      public final function method_292(param1:String, param2:String) : Boolean
      {
         return this.method_51(param2).indexOf(param1) != -1;
      }
      
      public final function hasEvent(param1:String, param2:*, param3:String) : Boolean
      {
         var _loc4_:Array = this.method_38(param3);
         var _loc5_:Vector.<String> = this.method_51(param3);
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
      
      public final function method_20(param1:String, param2:*, param3:String) : void
      {
         var _loc9_:int = 0;
         var _loc4_:Array = this.method_38(param3);
         var _loc5_:Vector.<String> = this.method_51(param3);
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
