package zebra.graphics
{
   import flash.events.EventDispatcher;
   import flash.display.Stage;
   import package_16.class_59;
   import flash.display.StageDisplayState;
   import flash.geom.Point;
   import flash.display.DisplayObject;
   import flash.utils.getQualifiedClassName;
   
   public final class class_20 extends EventDispatcher
   {
       
      private var var_157:Stage;
      
      private var var_282:class_59;
      
      public function class_20(param1:Stage)
      {
         super();
         this.var_157 = param1;
         this.var_282 = new class_59();
      }
      
      public function get fps() : int
      {
         return this.var_157.frameRate;
      }
      
      public function get stage() : Stage
      {
         return this.var_157;
      }
      
      public function get method_411() : Boolean
      {
         return false;
      }
      
      public function get method_363() : Boolean
      {
         return this.var_157.displayState == StageDisplayState.FULL_SCREEN;
      }
      
      public function get method_187() : class_59
      {
         return this.var_282;
      }
      
      public final function method_328(param1:DisplayObject) : Point
      {
         return param1.parent.localToGlobal(new Point(param1.x,param1.y));
      }
      
      public final function method_386(param1:DisplayObject) : Point
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1.stage)
         {
            _loc2_ = new Point(param1.stage.mouseX,param1.stage.mouseY);
            _loc3_ = this.method_328(param1);
            return new Point(_loc3_.x - _loc2_.x,_loc3_.y - _loc2_.y);
         }
         return null;
      }
   }
}
