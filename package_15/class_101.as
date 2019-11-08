package package_15
{
   import flash.display.Loader;
   import flash.net.URLRequest;
   import package_5.class_83;
   import flash.display.LoaderInfo;
   
   public final class class_101 extends class_97
   {
       
      private var var_130:Loader;
      
      public function class_101(param1:class_79)
      {
         super(param1);
         this.var_130 = new Loader();
      }
      
      override public function load(param1:URLRequest) : void
      {
         super.load(param1);
         this.var_130.load(param1,class_83.method_274);
      }
      
      override public function get content() : *
      {
         return this.var_130.content;
      }
      
      public function get contentLoaderInfo() : LoaderInfo
      {
         return this.var_130.contentLoaderInfo;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_130.unloadAndStop();
      }
      
      override public function get type() : String
      {
         return class_89.const_7;
      }
   }
}
