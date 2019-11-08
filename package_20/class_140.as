package package_20
{
   import flash.utils.getDefinitionByName;
   
   public class class_140
   {
       
      protected var var_67:Class;
      
      protected var var_50;
      
      protected var var_47:XML;
      
      protected var var_45:Vector.<String>;
      
      public function class_140(param1:*, param2:XML)
      {
         super();
         this.var_50 = param1;
         this.var_67 = getDefinitionByName(class_120.method_75(this.var_50)) as Class;
         this.var_47 = param2;
         this.var_45 = new Vector.<String>();
      }
      
      public function get method_190() : Vector.<String>
      {
         return this.var_45;
      }
   }
}
