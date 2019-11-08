package package_2
{
   import flash.utils.ByteArray;
   import package_8.class_24;
   import package_13.class_68;
   
   public final class class_29 extends ByteArray
   {
       
      public function class_29()
      {
         super();
      }
      
      public static function get method_389() : class_29
      {
         return new class_29();
      }
      
      public final function toInt8(param1:int) : void
      {
         if(param1 < -128)
         {
            param1 = -128;
         }
         if(param1 > 127)
         {
            param1 = 127;
         }
         this.writeByte(param1);
      }
      
      public final function toUInt8(param1:int) : void
      {
         if(param1 > 255)
         {
            param1 = 255;
         }
         this.writeByte(param1);
      }
      
      public final function toInt16(param1:int) : void
      {
         if(param1 < -32768)
         {
            param1 = -32768;
         }
         if(param1 > 32767)
         {
            param1 = 32767;
         }
         this.writeShort(param1);
      }
      
      public final function toUInt32(param1:uint) : void
      {
         if(param1 > 4294967295)
         {
            param1 = 4294967295;
         }
         this.writeUnsignedInt(param1);
      }
      
      public final function toInt32(param1:int) : void
      {
         if(param1 < -2147483648)
         {
            param1 = -2147483648;
         }
         if(param1 > 2147483648)
         {
            param1 = -2147483648;
         }
         this.writeInt(param1);
      }
      
      public final function toInt64(param1:*) : void
      {
         switch(class_24.var_175)
         {
            case class_68.const_120:
               this.method_340(param1);
         }
      }
      
      private final function method_340(param1:Number) : void
      {
         if(param1 < -9223372036854770000)
         {
            param1 = -9223372036854770000;
         }
         if(param1 > 9223372036854770000)
         {
            param1 = 9223372036854770000;
         }
         this.writeDouble(param1);
      }
      
      private final function method_279(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > 9223372036854770000)
         {
            param1 = 9223372036854770000;
         }
         this.writeDouble(param1);
      }
      
      public final function toUInt64(param1:Number) : void
      {
         switch(class_24.var_175)
         {
            case class_68.const_120:
               this.method_279(param1);
         }
      }
      
      public final function method_45(param1:String, param2:String = "utf-8") : void
      {
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeMultiByte(param1,param2);
         this.toUInt32(_loc3_.length);
         this.writeMultiByte(param1,param2);
      }
      
      public final function method_351(param1:Boolean) : void
      {
         this.writeBoolean(param1);
      }
      
      public final function method_433(param1:Number) : void
      {
         this.writeFloat(param1);
      }
   }
}
