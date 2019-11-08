package package_2
{
   import flash.utils.ByteArray;
   
   public final class class_38 extends class_37
   {
       
      protected var var_234:uint;//包字节数量
      
      protected var var_251:int;//类似接收1-1
      
      protected var var_253:int;//类似接收1-1
      
      public function class_38(param1:ByteArray, param2:uint = 0, param3:Boolean = false)
      {
         super(param1,param2,param3);
         this.var_234 = this.readUInt32();
         this.var_251 = this.readUInt8();
         this.var_253 = this.readUInt8();
      }
      
      public function get method_402() : uint
      {
         return this.var_234;
      }
      
      public function get method_320() : int
      {
         return this.var_251;
      }
      
      public function get method_248() : int
      {
         return this.var_253;
      }
      
      override public function clone() : *
      {
         var_6.position = 0;
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeBytes(var_6);
         return new class_38(_loc1_,0,var_183);
      }
   }
}
