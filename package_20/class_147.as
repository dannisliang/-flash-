package package_20
{
   import flash.utils.Dictionary;
   
   final class class_147
   {
      
      private static var var_103:Dictionary = new Dictionary();
       
      function class_147()
      {
         super();
      }
      
      public static function add(param1:String, param2:XML) : void
      {
         if(var_103[param1] == null)
         {
            var_103[param1] = param2;
         }
      }
      
      public static function method_260(param1:String) : Boolean
      {
         return var_103[param1] != null;
      }
      
      public static function method_17(param1:String) : XML
      {
         return XML(var_103[param1]);
      }
   }
}
