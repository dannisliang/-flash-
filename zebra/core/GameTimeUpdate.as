package zebra.core
{
   import flash.events.Event;
   import flash.utils.getTimer;
   import package_11.class_46;
   import zebra.class_4;
   
   public final class GameTimeUpdate
   {
       
      var var_36:Vector.<GameTimeNode>;
      
      public function GameTimeUpdate()
      {
         super();
         this.var_36 = new Vector.<GameTimeNode>();
      }
      
      private final function method_228(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.var_36.length)
         {
            _loc2_ = this.var_36[_loc3_];
            _loc2_.currentTime = getTimer();
            if(_loc2_.currentTime - _loc2_.startTime >= _loc2_.intervalTime)
            {
               _loc2_.taskAction.execute();
               _loc2_.startTime = _loc2_.currentTime;
               if(_loc2_.autoremove)
               {
                  this.method_53(_loc2_.taskAction);
               }
            }
            _loc3_++;
         }
      }
      
      public final function method_336() : void
      {
         this.var_36 = new Vector.<GameTimeNode>();
      }
      
      public final function method_57(param1:class_46, param2:uint = 0) : void
      {
         if(param2 == 0)
         {
            param2 = 1000 / class_4.method_39.fps;
         }
         this.method_217(param1,param2,false);
      }
      
      public final function method_428(param1:class_46, param2:uint = 0) : void
      {
         if(param2 == 0)
         {
            param2 = 1000 / class_4.method_39.fps;
         }
         this.method_217(param1,param2,true);
      }
      
      private final function method_217(param1:class_46, param2:uint, param3:Boolean) : void
      {
         var _loc4_:* = null;
         if(!this.hasTaskAction(param1))
         {
            _loc4_ = new GameTimeNode();
            _loc4_.startTime = getTimer();
            _loc4_.currentTime = _loc4_.startTime;
            _loc4_.intervalTime = param2;
            _loc4_.taskAction = param1;
            _loc4_.autoremove = param3;
            this.var_36.push(_loc4_);
            if(this.var_36.length == 1)
            {
               class_4.method_39.stage.addEventListener(Event.ENTER_FRAME,this.method_228);
            }
         }
      }
      
      public final function hasTaskAction(param1:class_46) : Boolean
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_36)
         {
            if(_loc2_.taskAction == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public final function method_53(param1:class_46) : void
      {
         var _loc2_:int = this.var_36.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.var_36[_loc2_].taskAction == param1)
            {
               param1.dispose();
               this.var_36.splice(_loc2_,1);
               if(this.var_36.length == 0)
               {
                  class_4.method_39.stage.removeEventListener(Event.ENTER_FRAME,this.method_228);
               }
            }
            _loc2_--;
         }
      }
   }
}

import package_11.class_46;

class GameTimeNode
{
    
   var startTime:uint;
   
   var currentTime:uint;
   
   var intervalTime:uint;
   
   var taskAction:class_46;
   
   var autoremove:Boolean;
   
   function GameTimeNode()
   {
      super();
   }
}
