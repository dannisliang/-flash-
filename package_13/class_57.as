package package_13
{
   import flash.net.SharedObject;
   
   public final class class_57
   {
       
      private var var_190:uint;
      
      private var var_194:String;
      
      private var var_17:SharedObject;
      
      public function class_57(param1:String = "@zebraGame", param2:uint = 1.5768E7, param3:Boolean = false)
      {
         super();
         this.var_194 = param1;
         this.var_190 = param2;
         this.var_17 = SharedObject.getLocal(this.var_194,"/");
         if(param3)
         {
            this.clearTimeOut();
         }
      }
      
      public function get name() : String
      {
         return this.var_194;
      }
      
      public function get method_425() : uint
      {
         return this.var_190;
      }
      
      public final function clearTimeOut() : void
      {
         var _loc2_:* = undefined;
         var _loc1_:* = this.var_17.data.cookie;
         if(_loc1_ == undefined)
         {
            return;
         }
         for(_loc2_ in _loc1_)
         {
            if(_loc1_[_loc2_] == undefined || _loc1_[_loc2_].time == undefined || Boolean(this.method_288(_loc1_[_loc2_].time)))
            {
               delete _loc1_[_loc2_];
            }
         }
         this.var_17.data.cookie = _loc1_;
         this.var_17.flush();
      }
      
      public final function clear() : void
      {
         this.var_17.clear();
      }
      
      public final function method_406(param1:String, param2:*) : void
      {
         var _loc4_:* = null;
         var _loc3_:Date = new Date();
         param1 = "$key_" + param1;
         if(this.var_17.data.cookie == undefined || this.var_17.data.cookie == null)
         {
            _loc4_ = new Object();
            _loc4_[param1] = param2;
            _loc4_[param1].time = _loc3_.getTime();
            this.var_17.data.cookie = _loc4_;
         }
         else
         {
            this.var_17.data.cookie[param1] = param2;
            this.var_17.data.cookie[param1].time = _loc3_.getTime();
         }
         this.var_17.flush();
      }
      
      public final function method_434(param1:String) : Object
      {
         return !!this.contains(param1)?this.var_17.data.cookie["$key_" + param1]:null;
      }
      
      public final function method_20(param1:String) : void
      {
         if(this.contains(param1))
         {
            delete this.var_17.data.cookie["$key_" + param1];
            this.var_17.flush();
         }
      }
      
      public final function contains(param1:String) : Boolean
      {
         param1 = "$key_" + param1;
         return this.var_17.data.cookie != undefined && this.var_17.data.cookie[param1] != undefined;
      }
      
      private final function method_288(param1:Number) : Boolean
      {
         var _loc2_:Date = new Date();
         return param1 + this.var_190 * 1000 < _loc2_.getTime();
      }
   }
}
