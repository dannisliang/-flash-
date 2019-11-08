package package_1
{
   import flash.utils.ByteArray;
   
   import package_20.class_148;
   import package_20.class_151;
   
   import package_9.class_30;
   import package_9.class_31;
   
   public final class class_8
   {
       
      private var var_315:String = "gfheru3";
      
      private var key:ByteArray; //解密key
      
      private var var_303:String = "abcd";
      
      private var name_7:Object;
      
      private var name_6:Object;
      
      private var a:Array;
      
      private var var_300:String = "This is a regular string";
      
      private var var_285:String;
      
      public function class_8(param1:String)
      {
         this.key = new ByteArray();
         this.name_7 = new Object();
         this.name_6 = new Object();
         this.a = " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".split("");
         this.var_285 = this.method_277(this.var_300);
         super();
         this.key.writeMultiByte(param1.substr(2,5),"utf-8");
      }
      
      public final function method_59(param1:String) : String
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeMultiByte(class_31.name_7(param1),"utf-8");
         var _loc3_:ByteArray = class_30.method_299(_loc2_,this.key);
         var _loc4_:String = class_31.method_142(_loc3_);
         return _loc4_;
      }
      
      public final function method_50(param1:String) : String
      {
         var _loc2_:ByteArray = class_31.method_128(param1);
         var _loc3_:ByteArray = class_30.method_304(_loc2_,this.key);
         var _loc4_:String = _loc3_.toString();
         var _loc5_:String = class_31.name_6(_loc4_);
         return _loc5_;
      }
      
	  //秒读解码
      public final function decode3_1(param1:String) : String
      {
		  var _loc4_:Number = NaN;
		  var _loc5_:Number = NaN;
		  var _loc6_:* = NaN;
		  var _loc7_:* = NaN;
		  var _loc8_:Number = NaN;
		  var _loc2_:Array = param1.split("");
		  var bytes:int = Main.decode3_1;
		  _loc4_ = _loc2_.length;
		  if((_loc5_ = _loc4_ % bytes) != 0)
		  {
			  _loc4_ = _loc4_ + bytes - _loc5_;
		  }
		  var _loc9_:Array = new Array(_loc4_);
		  _loc8_ = _loc4_ / bytes;
		  _loc6_ = 0;
		  while(_loc6_ < bytes)
		  {
			  _loc7_ = 0;
			  while(_loc7_ < _loc8_)
			  {
				  if(_loc6_ * _loc8_ + _loc7_ < _loc2_.length)
				  {
					  _loc9_[_loc6_ + _loc7_ * bytes] = _loc2_[_loc6_ * _loc8_ + _loc7_];
				  }
				  else
				  {
					  _loc9_[_loc6_ + bytes * _loc7_] = " ";
				  }
				  _loc7_++;
			  }
			  _loc6_++;
		  }
		  while(_loc9_[_loc4_ - 1] == " ")
		  {
			  _loc4_--;
		  }
		  var _loc10_:String = "";
		  _loc6_ = 0;
		  while(_loc6_ < _loc4_)
		  {
			  _loc10_ = _loc10_ + _loc9_[_loc6_];
			  _loc6_++;
		  }
		  return _loc10_;
      }
      
      private final function method_277(param1:String) : String
      {
         return this.method_152(param1,this.name_7);
      }
      
      private final function method_449(param1:String) : String
      {
         return this.method_152(param1,this.name_6);
      }
      
      private final function method_152(param1:String, param2:Object) : String
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc3_:String = "";
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1.charAt(_loc4_);
            _loc6_ = param2[_loc5_];
            if(param2[_loc5_])
            {
               _loc3_ = _loc3_ + _loc6_;
            }
            else
            {
               _loc3_ = _loc3_ + _loc5_;
            }
            _loc4_++;
         }
         return _loc3_;
      }
   }
}
