package package_2
{
   import flash.utils.ByteArray;
   
   public class class_37
   {
       
      protected var var_6:ByteArray;
      
      protected var var_201:String = "utf-8";
      
      protected var var_309:uint;
      
      protected var var_183:Boolean;
      
      protected var _position:uint;
      
      public function class_37(param1:ByteArray, param2:uint = 0, param3:Boolean = false)
      {
         super();
         this.var_183 = param3;
         if(param3)
         {
            this.var_6 = new ByteArray();
            param1.readBytes(this.var_6);
         }
         else
         {
            this.var_6 = param1;
         }
         this.var_6.position = param2;
      }
      
      public final function readInt8() : int
      {
         return this.var_6.readByte();
      }
      
      public final function readUInt8() : int
      {
         return this.var_6.readUnsignedByte();
      }
      
      public final function readInt16() : int
      {
         return this.var_6.readShort();
      }
      
      public final function readUInt16() : int
      {
         return this.var_6.readUnsignedShort();
      }
      
      public final function readUInt32() : uint
      {
         return this.var_6.readUnsignedInt();
      }
      
      public final function readInt32() : int
      {
         return this.var_6.readInt();
      }
      
      public final function readInt64() : Number
      {
         return this.readUInt64();
      }
      
      public final function readUInt64() : Number
      {
         return this.var_6.readDouble();
      }
      
      public final function method_46() : String
      {
         var _loc1_:int = this.var_6.readUnsignedInt();
         var _loc2_:String = this.var_6.readMultiByte(_loc1_,this.var_201);
         return _loc2_;
      }
      
      public final function readBoolean() : Boolean
      {
         return this.var_6.readBoolean();
      }
      
      public final function readFloat() : Number
      {
         return this.var_6.readFloat();
      }
      
      public function get position() : uint
      {
         return this.var_6.position;
      }
      
      public function set position(param1:uint) : void
      {
         this.var_6.position = param1;
      }
      
      public function get method_245() : String
      {
         return this.var_201;
      }
      
      public function set method_245(param1:String) : void
      {
         this.var_201 = param1;
      }
      
      public function get endian() : String
      {
         return this.var_6.endian;
      }
      
      public function set endian(param1:String) : void
      {
         this.var_6.endian = param1;
      }
      
      public function get length() : uint
      {
         return this.var_6.length;
      }
      
      public function get method_409() : ByteArray
      {
         return this.var_6;
      }
      
      public final function clear() : void
      {
         this.var_6.clear();
      }
      
      public function clone() : *
      {
         this.var_6.position = 0;
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeBytes(this.var_6);
         return new class_37(_loc1_,0,this.var_183);
      }
   }
}
