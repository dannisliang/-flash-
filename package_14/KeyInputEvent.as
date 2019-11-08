package package_14
{
   import flash.events.Event;
   import package_4.class_60;
   
   public final class KeyInputEvent extends Event
   {
      
      public static const const_205:String = "releaseKeyGroup";
      
      public static const const_183:String = "activeKeyGroup";
       
      public var var_265:Vector.<class_60>;
      
      public var var_83:Vector.<int>;
      
      public function KeyInputEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
         this.var_265 = new Vector.<class_60>();
      }
      
      override public function clone() : Event
      {
         return new KeyInputEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("KeyInputEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
