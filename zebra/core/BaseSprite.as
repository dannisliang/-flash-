package zebra.core
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.display.DisplayObject;
   
   class BaseSprite extends Sprite
   {
       
      private var var_104:Boolean;
      
      private var var_199:Boolean;
      
      public var var_192:Function;
      
      public var var_211:Function;
      
      function BaseSprite()
      {
         super();
         this;
         BaseSprite.method_339();
         this;
         BaseSprite.method_240();
         this.addEventListener(Event.ADDED_TO_STAGE,this.method_310);
         this.addEventListener(Event.REMOVED_FROM_STAGE,this.method_233);
      }
      
      protected static function method_339() : void
      {
      }
      
      protected static function method_240() : void
      {
      }
      
      protected static function method_201() : void
      {
      }
      
      protected static function method_346() : void
      {
      }
      
      public static function dispose() : void
      {
      }
      
      private final function method_310(param1:Event) : void
      {
         this;
         BaseSprite.method_201();
         if(this.var_192 != null)
         {
            this.var_192(this);
         }
         this.var_199 = true;
      }
      
      private final function method_233(param1:Event) : void
      {
         this;
         BaseSprite.method_201();
         this.var_199 = false;
         if(this.var_211 != null)
         {
            this.var_211(this);
         }
      }
      
      public function get method_408() : Boolean
      {
         return this.var_199;
      }
      
      public function get method_222() : Boolean
      {
         return this.var_104;
      }
      
      protected final function method_443(param1:Boolean = false) : void
      {
         if(this.method_222)
         {
            return;
         }
         if(!this.var_104)
         {
            this.var_104 = true;
            this.var_192 = null;
            this.var_211 = null;
            this;
            BaseSprite.dispose();
            if(!param1 && Boolean(this.parent))
            {
               this.parent.removeChild(this);
            }
         }
      }
      
      public final function method_414() : Boolean
      {
         if(!visible || !this.mouseEnabled || this.stage == null)
         {
            return false;
         }
         var _loc1_:Point = this.method_170();
         var _loc2_:Rectangle = new Rectangle(_loc1_.x,_loc1_.y,this.width,this.height);
         return _loc2_.containsPoint(new Point(this.stage.mouseX,this.stage.mouseY));
      }
      
      public final function method_170() : Point
      {
         return this.method_157(this);
      }
      
      public final function method_429() : Rectangle
      {
         var _loc1_:Point = this.method_170();
         return new Rectangle(_loc1_.x,_loc1_.y,width,height);
      }
      
      protected final function method_157(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point();
         while(param1 != null)
         {
            _loc2_.x = _loc2_.x + param1.x;
            _loc2_.y = _loc2_.y + param1.y;
            param1 = param1.parent;
         }
         return _loc2_;
      }
   }
}
