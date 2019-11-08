package package_5
{
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   
   class class_51
   {
       
      protected var var_11:Dictionary;
      
      protected var var_97:package_5.class_19;
      
      function class_51()
      {
         this.var_11 = new Dictionary();
         super();
      }
      
      protected final function method_30(param1:*) : String
      {
         var _loc2_:* = null;
         if(param1 is Class)
         {
            _loc2_ = getQualifiedClassName(param1).split("::").join(".");
         }
         else
         {
            _loc2_ = param1;
         }
         return _loc2_;
      }
   }
}
