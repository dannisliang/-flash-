package package_14
{
   import flash.events.Event;
   import package_2.class_38;
   
   public final class GameSocketEvent extends Event
   {
      
      public static const const_189:String = "connectSuccess";
      
      public static const CLOSE:String = "close";
      
      public static const const_193:String = "ioerror";
      
      public static const const_172:String = "securityerror";
      
      public static const const_214:String = "commandreader";
       
      public var var_40:class_38;
      
      public function GameSocketEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new GameSocketEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("GameSocketEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
