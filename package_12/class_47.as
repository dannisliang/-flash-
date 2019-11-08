package package_12
{
   import package_11.class_46;
   import zebra.class_4;
   import package_1.class_7;
   import view.class_14;
   import package_8.class_43;
   import package_2.class_38;
   
   public final class class_47 extends class_46
   {
       
      public function class_47()
      {
         super();
      }
      
      override public function execute() : void
      {
         super.execute();
         class_4.method_23.method_155();
         var _loc1_:class_7 = class_4.method_3.method_16(class_7) as class_7;
         if(_loc1_ != null)
         {
            _loc1_.var_108 = new Date();
            class_14(class_4.method_3.method_5(class_14)).socketControl.socket.receive("0-0",this.method_232);
            class_14(class_4.method_3.method_5(class_14)).socketControl.socket.send("0-0",_loc1_.bytes0_0);
         }
      }
      
      private final function method_232(param1:class_43) : void
      {
         var _loc2_:class_38 = param1.var_40.clone();
         var _loc3_:String = _loc2_.method_46();
         var _loc4_:class_7 = class_4.method_3.method_16(class_7) as class_7;
         _loc4_.var_109 = new Date();
         _loc4_.var_116 = (_loc4_.var_109 - _loc4_.var_108).toString();
         class_14(class_4.method_3.method_5(class_14)).socketControl.socket.destroy("0-0",this.method_232);
      }
   }
}
