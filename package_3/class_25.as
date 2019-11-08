package package_3
{
   import zebra.class_4;
   import package_14.class_50;
   
   public final class class_25 implements class_17
   {
       
      private var var_62:class_66;
      
      private var var_203:class_64;
      
      private var var_91:package_3.DirectEventScope;
      
      public function class_25()
      {
         super();
         this.var_91 = new DirectEventScope();
         this.var_62 = new class_66(this.var_91);
         this.var_203 = new class_64(this.var_91,this.var_62);
      }
      
      public function receive(param1:String, param2:*, param3:String = "Global") : void
      {
         this.var_91.add(param3);
         this.var_62.add(param1,param2,param3);
      }
      
      public final function getReceiveData(param1:String = "Global") : Array
      {
         var _loc2_:Vector.<String> = this.var_62.method_51(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:Array = this.var_62.method_38(param1);
         return [_loc2_,_loc3_];
      }
      
      public function send(param1:String, param2:class_42 = null, param3:String = "Global") : void
      {
         var _loc4_:* = null;
         if(param2 == null)
         {
            param2 = new class_42();
         }
         if(this.var_91.method_40(param3) == null)
         {
            return;
         }
         if(this.var_62.method_292(param1,param3))
         {
            if(!class_4.method_123)
            {
            }
            _loc4_ = new class_65(this.var_62,param1,param2,param3);
            _loc4_.addEventListener(class_50.COMPLETE,this.method_179);
            _loc4_.execute();
         }
         else if(!class_4.method_123)
         {
         }
      }
      
      public function destroy(param1:String, param2:*, param3:String = "Global") : void
      {
         if(this.var_91.method_40(param3) == null)
         {
            return;
         }
         if(this.var_62.hasEvent(param1,param2,param3))
         {
            this.var_203.add(param1,param2,param3);
         }
      }
      
      private final function method_179(param1:class_50) : void
      {
         var _loc2_:class_65 = class_65(param1.target);
         this.var_203.method_20(_loc2_.name_2);
         _loc2_.removeEventListener(class_50.COMPLETE,this.method_179);
      }
   }
}
