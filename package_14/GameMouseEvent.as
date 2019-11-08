package package_14
{
   import flash.events.Event;
   import flash.geom.Point;
   
   public final class GameMouseEvent extends Event
   {
      
      public static const const_256:String = "bitmapClick";
      
      public static const const_241:String = "bitmapMove";
      
      public static const const_249:String = "bitmapHover";
      
      public static const const_221:String = "bitmapOut";
      
      public static const const_257:String = "bitmapDown";
      
      public static const const_239:String = "bitmapUp";
      
      public static const const_198:String = "updateMousePosition";
       
      public var var_23:Point;
      
      public var var_18:Point;
      
      public function GameMouseEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_23 = new Point(0,0);
         this.var_18 = new Point(0,0);
         super(param1,param2,param3);
      }
      
      public function get method_246() : Point
      {
         return new Point(this.var_18.x - this.var_23.x,this.var_18.y - this.var_23.y);
      }
      
      override public function clone() : Event
      {
         return new GameMouseEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("GameMouseEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
