package package_12
{
   import package_11.class_46;
   import zebra.class_4;
   import package_1.class_69;
   import view.class_32;
   import package_8.class_43;
   import flash.utils.ByteArray;
   
   public final class class_73 extends class_46
   {
       
      public function class_73()
      {
         super();
      }
      
      override public function execute() : void
      {
         super.execute();
         class_4.method_23.method_155();
         var _loc1_:class_69 = class_4.method_3.method_16(class_69) as class_69;
         if(_loc1_ != null)
         {
            _loc1_.var_108 = new Date();
            class_32(class_4.method_3.method_5(class_32)).socketControl.socket.send("0-0",_loc1_.bytes0_0);
         }
      }
      
      private final function method_232(param1:class_43) : void
      {
         var _loc2_:class_69 = class_4.method_3.method_16(class_69) as class_69;
         _loc2_.var_109 = new Date();
         _loc2_.var_116 = (_loc2_.var_109 - _loc2_.var_108).toString();
         class_32(class_4.method_3.method_5(class_32)).socketControl.socket.destroy("0-0",this.method_232);
      }
      
      private final function method_350(param1:String, param2:int) : String
      {
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeMultiByte(param1,"");
         if(_loc3_.length <= param2)
         {
            return param1;
         }
         _loc3_.position = 0;
         return _loc3_.readMultiByte(param2 - 6,"") + "......";
      }
   }
}
