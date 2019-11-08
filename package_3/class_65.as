package package_3
{
   import package_11.class_46;
   import zebra.class_4;
   
   final class class_65 extends class_46
   {
       
      private var var_62:class_66;
      
      private var _eventName:String;
      
      private var var_168:package_3.class_42;
      
      private var var_39:String;
      
      function class_65(param1:class_66, param2:String, param3:package_3.class_42, param4:String)
      {
         this.var_62 = param1;
         this._eventName = param2;
         this.var_39 = param4;
         param3.name_4 = param2;
         param3.name_2 = param4;
         this.var_168 = param3;
         super();
      }
      
      override public function execute() : void
      {
         var _loc2_:* = null;
         super.execute();
         var _loc1_:int = this.var_62.method_164(this.var_39);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_)
         {
            try
            {
               if(this.var_62.method_51(this.var_39)[_loc3_] == this._eventName)
               {
                  if(this.var_62.method_38(this.var_39)[_loc3_] is Function)
                  {
                     _loc2_ = "Function";
                     this.var_62.method_38(this.var_39)[_loc3_](this.var_168);
                  }
                  if(this.var_62.method_38(this.var_39)[_loc3_] is DirectEventAction)
                  {
                     _loc2_ = "DirectEventAction";
                     DirectEventAction(this.var_62.method_38(this.var_39)[_loc3_]).eventParameter = this.var_168;
                     DirectEventAction(this.var_62.method_38(this.var_39)[_loc3_]).execute();
                  }
                  if(!class_4.method_123)
                  {
                  }
               }
            }
            catch(e:*)
            {
            }
            _loc3_++;
         }
         this.method_141();
      }
      
      public function get name_4() : String
      {
         return this._eventName;
      }
      
      public function get method_388() : package_3.class_42
      {
         return this.var_168;
      }
      
      public function get name_2() : String
      {
         return this.var_39;
      }
      
      public function set name_2(param1:String) : void
      {
         this.var_39 = param1;
      }
   }
}
