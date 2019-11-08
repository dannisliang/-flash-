package package_5
{
   import flash.utils.getQualifiedClassName;
   import flash.events.Event;
   import package_14.BitmapBatchEvent;
   import flash.utils.Dictionary;
   
   final class class_58 extends class_51
   {
       
      function class_58(param1:class_19)
      {
         super();
         var_97 = param1;
      }
      
      public final function add(param1:*) : void
      {
         var _loc2_:String = getQualifiedClassName(param1).split("::").join(".");
         if(var_11[_loc2_] == null)
         {
            var_11[_loc2_] = param1;
         }
      }
      
      public final function update(param1:*) : void
      {
         var _loc2_:String = getQualifiedClassName(param1).split("::").join(".");
         if(this.method_73(_loc2_))
         {
            this.method_20(_loc2_);
            this.add(param1);
         }
      }
      
      public final function method_17(param1:*) : *
      {
         return var_11[method_30(param1)];
      }
      
      public final function method_73(param1:*) : Boolean
      {
         return this.method_17(param1) != null;
      }
      
      public final function method_20(param1:*) : void
      {
         delete var_11[method_30(param1)];
      }
      
      public final function clear() : void
      {
         var_11 = new Dictionary();
      }
   }
}
