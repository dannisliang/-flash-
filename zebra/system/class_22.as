package zebra.system
{
   import flash.media.Sound;
   import flash.net.URLRequest;
   import flash.net.LocalConnection;
   
   public final class class_22
   {
       
      public function class_22()
      {
         super();
      }
      
      public final function method_134() : void
      {
         var _loc1_:Sound = new Sound(new URLRequest(""));
         _loc1_.play();
         _loc1_.close();
      }
      
      public final function method_155() : void
      {
         try
         {
            new LocalConnection().connect("Zebra-b090fd9c-9f1a-4c08-a4ed-ce74efa80551");
            new LocalConnection().connect("Zebra-b090fd9c-9f1a-4c08-a4ed-ce74efa80551");
            return;
         }
         catch(e:*)
         {
            return;
         }
      }
      
      public function get method_31() : Boolean
      {
		  return true;
         try
         {
         }
         catch(e:Error)
         {
            return true;
         }
         return false;
      }
   }
}
