package package_14
{
   import flash.events.Event;
   
   public final class BitmapBatchEvent extends Event
   {
      
      public static const const_99:String = "dispose";
      
      public static const const_171:String = "bitmapClick";
      
      public static const const_177:String = "bitmapDown";
      
      public static const const_199:String = "bitmapHover";
      
      public static const const_156:String = "bitmapOut";
       
      public function BitmapBatchEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new BitmapBatchEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("BitmapBatchEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
