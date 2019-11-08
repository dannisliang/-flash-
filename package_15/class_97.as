package package_15
{
   import package_3.class_42;
   import flash.net.URLRequest;
   
   public class class_97 extends class_42 implements class_55
   {
       
      private var var_266:Object;
      
      private var var_261:int;
      
      private var var_202:URLRequest;
      
      private var var_271:package_15.class_79;
      
      public function class_97(param1:package_15.class_79)
      {
         super();
         this.var_271 = param1;
      }
      
      public function get request() : URLRequest
      {
         return this.var_202;
      }
      
      public function get loader() : package_15.class_79
      {
         return this.var_271;
      }
      
      public function get type() : String
      {
         return "";
      }
      
      public function load(param1:URLRequest) : void
      {
         this.var_202 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get content() : *
      {
         return null;
      }
      
      public function get param() : Object
      {
         return this.var_266;
      }
      
      public function set param(param1:Object) : void
      {
         this.var_266 = param1;
      }
      
      public function get state() : int
      {
         return this.var_261;
      }
      
      public function set state(param1:int) : void
      {
         this.var_261 = param1;
      }
      
      public function get key() : String
      {
         return this.var_202.url;
      }
   }
}
