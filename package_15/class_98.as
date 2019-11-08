package package_15
{
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   //import r1.deval.parser.const_113;
   
   public final class class_98 extends class_97
   {
       
      private var var_130:URLLoader;
      
      public function class_98(param1:class_79)
      {
         super(param1);
         this.var_130 = new URLLoader();
      }
      
      override public function load(param1:URLRequest) : void
      {
         super.load(param1);
         this.var_130.load(param1);
      }
      
      override public function get type() : String
      {
         return class_89.const_19;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         try
         {
            this.var_130.close();
            return;
         }
         catch(error:*)
         {
            return;
         }
      }
      
      public function get contentLoader() : URLLoader
      {
         return this.var_130;
      }
      
      override public function get content() : *
      {
         return this.var_130.data;
      }
   }
}
