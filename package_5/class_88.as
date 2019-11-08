package package_5
{
   import package_15.class_55;
   import package_14.AssetLoaderEvent;
   import package_14.class_50;
   import package_15.class_102;
   
   final class class_88
   {
       
      private var var_75:class_55;
      
      function class_88(param1:class_55)
      {
         super();
         this.var_75 = param1;
         if(this.var_75.state == class_102.const_136)
         {
            this.var_75.loader.method_82(null);
         }
         if(this.var_75.state == class_102.const_139 || this.var_75.state == class_102.const_164)
         {
            this.var_75.loader.addEventListener(AssetLoaderEvent.COMPLETE,this.method_82);
         }
      }
      
      private final function method_82(param1:AssetLoaderEvent) : void
      {
         this.var_75.loader.removeEventListener(AssetLoaderEvent.COMPLETE,this.method_82);
         this.var_75.loader.method_82(null);
      }
   }
}
