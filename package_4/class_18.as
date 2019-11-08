package package_4
{
   import flash.events.EventDispatcher;
   import package_20.class_155;
   import flash.display.Stage;
   import zebra.class_4;
   import package_14.class_50;
   import package_14.GameMouseEvent;
   import flash.geom.Point;
   
   public final class class_18 extends EventDispatcher
   {
       
      private var _enabled:Boolean;
      
      private var var_73:Stage;
      
      private var var_174:class_49;
      
      public var var_23:Point;
      
      public var var_18:Point;
      
      public function class_18(param1:Stage)
      {
         super();
         this._enabled = true;
         this.var_73 = param1;
         this.var_174 = new class_49(this.var_73);
         this.var_174.addEventListener(class_50.COMPLETE,this.method_276);
         class_4.method_27.method_57(this.var_174);
      }
      
      public final function dispose() : void
      {
         class_4.method_27.method_53(this.var_174);
      }
      
      private final function method_276(param1:class_50) : void
      {
         var _loc2_:* = null;
         if(this._enabled)
         {
            if(this.var_23 == null && this.var_18 == null)
            {
               this.var_18 = class_49(param1.target).mousePoint;
            }
            else
            {
               this.var_23 = this.var_18;
               this.var_18 = class_49(param1.target).mousePoint;
               if(!this.var_18.equals(this.var_23))
               {
                  _loc2_ = new GameMouseEvent(GameMouseEvent.const_198);
                  _loc2_.var_23 = this.var_23;
                  _loc2_.var_18 = this.var_18;
                  this.dispatchEvent(_loc2_);
               }
            }
         }
      }
      
      public function get method_246() : Point
      {
         if(this.var_23 == null)
         {
            return new Point(0,0);
         }
         return new Point(this.var_18.x - this.var_23.x,this.var_18.y - this.var_23.y);
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this._enabled = param1;
         if(param1)
         {
            this.var_18 = new Point(this.var_73.mouseX,this.var_73.mouseY);
         }
         else
         {
            this.var_18 = null;
            this.var_23 = null;
         }
      }
      
      public final function reset() : void
      {
         this.var_23 = new Point(this.var_73.mouseX,this.var_73.mouseY);
         this.var_18 = new Point(this.var_73.mouseX,this.var_73.mouseY);
      }
   }
}
