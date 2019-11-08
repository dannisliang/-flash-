package package_1
{
   import zebra.core.class_6;
   import package_9.class_35;
   
   public final class class_44 extends class_6
   {
       
      public var var_144:int = 15;
      
      public var var_148:int = 5;
      
      private var var_233:int = 0;
      
      public var var_312:int = 6;
      
      public function class_44()
      {
         super();
      }
      
      public function get method_457() : int
      {
         return this.var_233;
      }
      
      public final function method_330() : void
      {
         this.var_233 = this.var_148 - this.var_144;
      }
      
      public final function method_338() : int
      {
         if(class_35.var_38 >= this.var_148)
         {
            return 100;
         }
         return (class_35.var_38 - this.var_144) / (this.var_148 - this.var_144) * 100;
      }
   }
}
