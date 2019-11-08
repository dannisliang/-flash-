package package_5
{
   import flash.utils.Dictionary;
   
   final class class_56
   {
       
      private var var_11:Dictionary;
      
      private var var_97:package_5.class_19;
      
      function class_56(param1:package_5.class_19)
      {
         this.var_11 = new Dictionary();
         super();
         this.var_97 = param1;
      }
      
      public final function add(param1:*, param2:Object) : void
      {
         if(this.var_11[param1] == null)
         {
            this.var_11[param1] = param2;
         }
      }
      
      public final function method_17(param1:*) : Object
      {
         return this.var_11[param1];
      }
      
      public final function method_73(param1:*) : Boolean
      {
         return this.var_11[param1] != null;
      }
      
      public final function method_20(param1:*) : void
      {
         delete this.var_11[param1];
      }
      
      public final function clear() : void
      {
         this.var_11 = new Dictionary();
      }
   }
}
