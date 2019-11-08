package package_13
{
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.setTimeout;
   
   public final class class_48
   {
       
      public function class_48()
      {
         super();
      }
      
      public static function method_373(param1:uint) : void
      {
         navigateToURL(new URLRequest("tencent://message/?uin=" + param1),"_blank");
      }
      
      public static function method_149(param1:String = null, param2:String = null) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            navigateToURL(new URLRequest(param1),"_self");
         }
         else
         {
            navigateToURL(new URLRequest(param1),"_blank");
         }
      }
      
      public static function method_419(param1:String = "") : void
      {
         navigateToURL(new URLRequest("javascript:alert(\"" + param1 + "\");"),"_self");
      }
      
      public static function method_380(param1:String = "", param2:Number = 0) : void
      {
         setTimeout(method_264,param2,param1);
      }
      
      private static function method_264(param1:String) : void
      {
         var _loc2_:URLRequest = new URLRequest("javascript:pageTracker._trackPageview(\'" + param1 + "\');");
         navigateToURL(_loc2_,"_self");
      }
      
      public static function method_348(param1:String = "", param2:String = "GACode") : void
      {
         var _loc3_:* = null;
         if(param2 != null)
         {
			if(ExternalInterface.available)
            	ExternalInterface.call(param2,param1);
         }
         else
         {
            _loc3_ = new URLRequest("javascript:pageTracker._trackPageview(\'" + param1 + "\');");
            navigateToURL(_loc3_,"_self");
         }
      }
      
      public static function method_437() : void
      {
         navigateToURL(new URLRequest("javascript:location.reload();"),"_self");
      }
      
      public static function method_381() : void
      {
         navigateToURL(new URLRequest("javascript:window.close()"),"_self");
      }
      
      public static function method_422(param1:String) : void
      {
      }
   }
}
