package package_8
{
   import flash.events.IEventDispatcher;
   import package_2.class_38;
   import flash.utils.ByteArray;
   
   public interface class_62 extends IEventDispatcher
   {
       
      function connect(param1:String, param2:int) : void;
      
      function get bufferList() : Vector.<class_38>;
      
      function send(param1:ByteArray) : void;
   }
}
