package package_11
{
   import flash.events.EventDispatcher;
   import package_14.class_50;
   import flash.utils.setTimeout;
   import flash.utils.clearTimeout;
   import package_14.class_85;
   
   public final class class_78 extends EventDispatcher
   {
       
      private var var_12:Vector.<package_11.class_46>;
      
      private var var_167:Boolean;
      
      private var var_179:Boolean;
      
      private var var_173:Boolean;
      
      private var var_291:Boolean;
      
      private var var_198:int = 0;
      
      private var var_110:int;
      
      private var var_223:int;
      
      private var var_84:int;
      
      public var var_296:String;
      
      public function class_78()
      {
         super();
         this.var_12 = new Vector.<package_11.class_46>();
         this.var_291 = false;
         this.var_110 = 1;
         this.var_173 = false;
      }
      
      public function get method_432() : int
      {
         return this.var_12.length;
      }
      
      public final function start(param1:int = 0) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.var_198 = param1;
         if(!this.var_179)
         {
            this.var_179 = true;
            if(this.var_12.length == 0)
            {
               this.method_144();
            }
            else
            {
               _loc2_ = this.var_110 > this.var_12.length?int(this.var_12.length):int(this.var_110);
               this.var_223 = _loc2_ - 1;
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  this.var_12[_loc3_].execute();
                  _loc3_++;
               }
            }
         }
      }
      
      public function get method_377() : package_11.class_46
      {
         if(this.var_12.length > 0)
         {
            return this.var_12[0];
         }
         return null;
      }
      
      public function get IsFinish() : Boolean
      {
         return this.var_167;
      }
      
      public function get method_300() : int
      {
         return this.var_110;
      }
      
      public function set method_300(param1:int) : void
      {
         this.var_110 = param1;
      }
      
      public function get method_393() : int
      {
         return this.var_84;
      }
      
      public function get method_444() : Boolean
      {
         return this.var_173;
      }
      
      public final function method_354(param1:package_11.class_46) : void
      {
         param1.addEventListener(class_50.COMPLETE,this.method_84);
         param1.var_237 = this;
         this.var_12.push(param1);
      }
      
      private final function method_84(param1:class_50) : void
      {
         var nextTaskActionIndex:int = 0;
         var id:uint = 0;
         var e:class_50 = param1;
         class_46(e.target).removeEventListener(class_50.COMPLETE,this.method_84);
         this.var_84++;
         if(this.var_84 == this.var_12.length)
         {
            this.method_144();
         }
         else
         {
            nextTaskActionIndex = ++this.var_223;
            if(nextTaskActionIndex <= this.var_12.length - 1)
            {
               if(this.var_198 == 0)
               {
                  this.var_12[nextTaskActionIndex].execute();
               }
               else
               {
                  id = setTimeout(function():void
                  {
                     if(var_173)
                     {
                        return;
                     }
                     var_12[nextTaskActionIndex].execute();
                     clearTimeout(id);
                  },this.var_198);
               }
            }
         }
      }
      
      private final function method_144() : void
      {
         this.var_167 = true;
         this.var_179 = false;
         this.var_84 = 0;
         this.var_12 = new Vector.<package_11.class_46>();
         dispatchEvent(new class_85(class_85.COMPLETE));
      }
      
      public final function stop() : void
      {
         this.method_188(true);
      }
      
      private final function method_188(param1:Boolean) : void
      {
         var _loc2_:* = null;
         this.var_173 = true;
         for each(_loc2_ in this.var_12)
         {
            class_46(_loc2_).stop();
            _loc2_.removeEventListener(class_50.COMPLETE,this.method_84);
         }
         this.var_12 = new Vector.<package_11.class_46>();
         this.var_167 = false;
         this.var_179 = false;
         this.var_84 = 0;
         if(param1)
         {
            dispatchEvent(new class_85(class_85.const_82));
         }
      }
      
      public final function method_445(param1:package_11.class_46) : void
      {
         throw new Error("taskAction  auto remove");
      }
      
      public final function clear() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.var_12.length)
         {
            this.var_12[_loc1_].removeEventListener(class_50.COMPLETE,this.method_84);
            _loc1_++;
         }
         this.var_167 = false;
         this.var_84 = 0;
         this.var_12.length = 0;
      }
      
      public final function name_5(param1:String) : void
      {
         this.method_188(false);
         this.var_296 = param1;
         var _loc2_:class_85 = new class_85(class_85.const_1);
         _loc2_.name_5 = param1;
         dispatchEvent(_loc2_);
      }
      
      public final function method_141() : void
      {
         this.method_144();
      }
   }
}
