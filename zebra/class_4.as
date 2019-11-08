package zebra
{
   import flash.display.Stage;
   import flash.system.ApplicationDomain;
   
   import package_3.class_17;
   import package_3.class_25;
   
   import package_4.class_18;
   import package_4.class_21;
   
   import package_5.class_19;
   
   import package_7.class_23;
   
   import package_8.class_24;
   
   import zebra.core.GameTimeUpdate;
   import zebra.graphics.class_20;
   import zebra.system.class_22;
   
   public final class class_4
   {
      
      private static var var_186:Boolean;
      
      private static var var_97:class_19;
      
      private static var var_177:class_20;
      
      private static var var_219:class_18;
      
      private static var var_156:class_22;
      
      private static var var_221:GameTimeUpdate;
      
      private static var var_193:class_17;
      
      private static var var_200:class_21;
      
      private static var var_212:class_23;
      
      private static var var_283:Boolean;
      
      private static var var_196:class_24;
       
      public function class_4(param1:Stage)
      {
         super();
         var_156 = new class_22();
         var_156.method_134();
         var_177 = new class_20(param1);
         var_221 = new GameTimeUpdate();
         var_97 = new class_19();
         var_219 = new class_18(param1);
         var_193 = new class_25();
         var_200 = new class_21();
         var_212 = new class_23();
         var_196 = new class_24();
         var_283 = true;
         var_186 = true;
      }
      
      public static function get method_382() : Boolean
      {
         return var_186;
      }
      
      public static function get method_3() : class_19
      {
         return var_97;
      }
      
      public static function get method_173() : ApplicationDomain
      {
         return var_177.stage.loaderInfo.applicationDomain;
      }
      
      public static function get method_39() : class_20
      {
         return var_177;
      }
      
      public static function get method_372() : class_23
      {
         return var_212;
      }
      
      public static function get method_23() : class_22
      {
         return var_156;
      }
      
      public static function get method_28() : class_17
      {
         return var_193;
      }
      
      public static function get method_27() : GameTimeUpdate
      {
         return var_221;
      }
      
      public static function get method_362() : class_18
      {
         return var_219;
      }
      
      public static function get method_121() : class_21
      {
         return var_200;
      }
      
      public static function get method_175() : class_24
      {
         return var_196;
      }
      
      public static function get method_123() : Boolean
      {
         return false;
      }
   }
}
