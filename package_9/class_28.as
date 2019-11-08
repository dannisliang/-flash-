package package_9
{
   import flash.utils.ByteArray;
   
   public final class class_28
   {
       
      public function class_28()
      {
         super();
      }
	  /**
	   * Performs the MD5 hash algorithm on a string.
	   *
	   * @param s The string to hash
	   * @return A string containing the hash value of s
	   * @langversion ActionScript 3.0
	   * @playerversion Flash 9.0
	   * @tiptext 
	   * hash
	   */
      public static function method_25(s:String) : String
      {
		  // initialize the md buffers
		  var a:int = 1732584193;
		  var b:int = -271733879;
		  var c:int = -1732584194;
		  var d:int = 271733878;
		  
		  // variables to store previous values
		  var aa:int;
		  var bb:int;
		  var cc:int;
		  var dd:int;
		  
		  // create the blocks from the string and
		  // save the length as a local var to reduce
		  // lookup in the loop below
		  var x:Array = method_230(method_166(s));//createBlocks( changeUTF(s) );
		  var len:int = x.length;
		  
		  // loop over all of the blocks
		  for ( var i:int = 0; i < len; i += 16) {
			  // save previous values
			  aa = a;
			  bb = b;
			  cc = c;
			  dd = d;                               
			  
			  // Round 1
			  a = method_13( a, b, c, d, x[i+ 0],  7, -680876936 );         // 1
			  d = method_13( d, a, b, c, x[i+ 1], 12, -389564586 );        // 2
			  c = method_13( c, d, a, b, x[i+ 2], 17, 606105819 );         // 3
			  b = method_13( b, c, d, a, x[i+ 3], 22, -1044525330 );        // 4
			  a = method_13( a, b, c, d, x[i+ 4],  7, -176418897 );         // 5
			  d = method_13( d, a, b, c, x[i+ 5], 12, 1200080426 );         // 6
			  c = method_13( c, d, a, b, x[i+ 6], 17, -1473231341 );        // 7
			  b = method_13( b, c, d, a, x[i+ 7], 22, -45705983 );         // 8
			  a = method_13( a, b, c, d, x[i+ 8],  7, 1770035416 );         // 9
			  d = method_13( d, a, b, c, x[i+ 9], 12, -1958414417 );        // 10
			  c = method_13( c, d, a, b, x[i+10], 17, -42063 );                 // 11
			  b = method_13( b, c, d, a, x[i+11], 22, -1990404162 );        // 12
			  a = method_13( a, b, c, d, x[i+12],  7, 1804603682 );         // 13
			  d = method_13( d, a, b, c, x[i+13], 12, -40341101 );         // 14
			  c = method_13( c, d, a, b, x[i+14], 17, -1502002290 );        // 15
			  b = method_13( b, c, d, a, x[i+15], 22, 1236535329 );         // 16
			  
			  // Round 2
			  a = method_14( a, b, c, d, x[i+ 1],  5, -165796510 );         // 17
			  d = method_14( d, a, b, c, x[i+ 6],  9, -1069501632 );        // 18
			  c = method_14( c, d, a, b, x[i+11], 14, 643717713 );         // 19
			  b = method_14( b, c, d, a, x[i+ 0], 20, -373897302 );         // 20
			  a = method_14( a, b, c, d, x[i+ 5],  5, -701558691 );         // 21
			  d = method_14( d, a, b, c, x[i+10],  9, 38016083 );         // 22
			  c = method_14( c, d, a, b, x[i+15], 14, -660478335 );         // 23
			  b = method_14( b, c, d, a, x[i+ 4], 20, -405537848 );         // 24
			  a = method_14( a, b, c, d, x[i+ 9],  5, 568446438 );         // 25
			  d = method_14( d, a, b, c, x[i+14],  9, -1019803690 );        // 26
			  c = method_14( c, d, a, b, x[i+ 3], 14, -187363961 );         // 27
			  b = method_14( b, c, d, a, x[i+ 8], 20, 1163531501 );         // 28
			  a = method_14( a, b, c, d, x[i+13],  5, -1444681467 );        // 29
			  d = method_14( d, a, b, c, x[i+ 2],  9, -51403784 );         // 30
			  c = method_14( c, d, a, b, x[i+ 7], 14, 1735328473 );         // 31
			  b = method_14( b, c, d, a, x[i+12], 20, -1926607734 );        // 32
			  
			  // Round 3
			  a = method_11( a, b, c, d, x[i+ 5],  4, -378558 );         // 33
			  d = method_11( d, a, b, c, x[i+ 8], 11, -2022574463 );        // 34
			  c = method_11( c, d, a, b, x[i+11], 16, 1839030562 );         // 35
			  b = method_11( b, c, d, a, x[i+14], 23, -35309556 );         // 36
			  a = method_11( a, b, c, d, x[i+ 1],  4, -1530992060 );        // 37
			  d = method_11( d, a, b, c, x[i+ 4], 11, 1272893353 );         // 38
			  c = method_11( c, d, a, b, x[i+ 7], 16, -155497632 );         // 39
			  b = method_11( b, c, d, a, x[i+10], 23, -1094730640 );        // 40
			  a = method_11( a, b, c, d, x[i+13],  4, 681279174 );         // 41
			  d = method_11( d, a, b, c, x[i+ 0], 11, -358537222 );         // 42
			  c = method_11( c, d, a, b, x[i+ 3], 16, -722521979 );         // 43
			  b = method_11( b, c, d, a, x[i+ 6], 23, 76029189 );         // 44
			  a = method_11( a, b, c, d, x[i+ 9],  4, -640364487 );         // 45
			  d = method_11( d, a, b, c, x[i+12], 11, -421815835 );         // 46
			  c = method_11( c, d, a, b, x[i+15], 16, 530742520 );         // 47
			  b = method_11( b, c, d, a, x[i+ 2], 23, -995338651 );         // 48
			  
			  // Round 4
			  a = method_10( a, b, c, d, x[i+ 0],  6, -198630844 );         // 49
			  d = method_10( d, a, b, c, x[i+ 7], 10, 1126891415 );         // 50
			  c = method_10( c, d, a, b, x[i+14], 15, -1416354905 );        // 51
			  b = method_10( b, c, d, a, x[i+ 5], 21, -57434055 );         // 52
			  a = method_10( a, b, c, d, x[i+12],  6, 1700485571 );         // 53
			  d = method_10( d, a, b, c, x[i+ 3], 10, -1894986606 );        // 54
			  c = method_10( c, d, a, b, x[i+10], 15, -1051523 );         // 55
			  b = method_10( b, c, d, a, x[i+ 1], 21, -2054922799 );        // 56
			  a = method_10( a, b, c, d, x[i+ 8],  6, 1873313359 );         // 57
			  d = method_10( d, a, b, c, x[i+15], 10, -30611744 );         // 58
			  c = method_10( c, d, a, b, x[i+ 6], 15, -1560198380 );        // 59
			  b = method_10( b, c, d, a, x[i+13], 21, 1309151649 );         // 60
			  a = method_10( a, b, c, d, x[i+ 4],  6, -145523070 );         // 61
			  d = method_10( d, a, b, c, x[i+11], 10, -1120210379 );        // 62
			  c = method_10( c, d, a, b, x[i+ 2], 15, 718787259 );         // 63
			  b = method_10( b, c, d, a, x[i+ 9], 21, -343485551 );         // 64
			  
			  a += aa;
			  b += bb;
			  c += cc;
			  d += dd;
		  }
		  
		  // Finish up by concatening the buffers with their hex output
		  return class_67.method_107(a) + class_67.method_107(b) + class_67.method_107(c) + class_67.method_107(d);
		  //return IntUtil.toHex( a ) + IntUtil.toHex( b ) + IntUtil.toHex( c ) + IntUtil.toHex( d );
      }
      
      private static function method_265( x:int, y:int, z:int) : int
      {
		  return ( x & y ) | ( (~x) & z );
      }
      
      private static function g( x:int, y:int, z:int ) : int
      {
		  return ( x & z ) | ( y & (~z) );
      }
      
      private static function method_337(x:int, y:int, z:int) : int
      {
		  return x ^ y ^ z;
      }
      
      private static function i( x:int, y:int, z:int) : int
      {
		  return y ^ ( x | (~z) );
      }
      
      private static function method_43(param1:Function, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int) : int
      {
         var _loc9_:int = param2 + int(param1(param3,param4,param5)) + param6 + param8;
         return class_67.method_67(_loc9_,param7) + param3;
      }
      
      private static function method_13(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         return method_43(method_265,param1,param2,param3,param4,param5,param6,param7);
      }
      
      private static function method_14(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         return method_43(g,param1,param2,param3,param4,param5,param6,param7);
      }
      
      private static function method_11(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         return method_43(method_337,param1,param2,param3,param4,param5,param6,param7);
      }
      
      private static function method_10(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         return method_43(i,param1,param2,param3,param4,param5,param6,param7);
      }
      
      private static function method_230(param1:String) : Array
      {
         var _loc2_:Array = new Array();
         var _loc3_:int = param1.length * 8;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc2_[_loc5_ >> 5] = _loc2_[_loc5_ >> 5] | (param1.charCodeAt(_loc5_ / 8) & 255) << _loc5_ % 32;
            _loc5_ = _loc5_ + 8;
         }
         _loc2_[_loc3_ >> 5] = _loc2_[_loc3_ >> 5] | 128 << _loc3_ % 32;
         _loc2_[(_loc3_ + 64 >>> 9 << 4) + 14] = _loc3_;
         return _loc2_;
      }
      
      private static function changeUTF2ASCII(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:* = null;
         if(param1.length > 65535)
         {
            throw new Error("In MD5:changeUTF2 s.length must less than 65536");
         }
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTF(param1);
         _loc2_.position = 2;
         var _loc3_:String = "";
         var _loc4_:int = 0;
         var _loc5_:int = _loc2_.bytesAvailable;
         while(_loc4_ < _loc5_)
         {
            _loc6_ = _loc2_.readUnsignedByte();
            _loc7_ = String.fromCharCode(_loc6_);
            _loc3_ = _loc3_ + _loc7_;
            _loc4_++;
         }
         return _loc3_;
      }
      
      private static function method_166(param1:String) : String
      {
         var _loc2_:int = 65530;
         var _loc3_:int = Math.ceil(param1.length / _loc2_);
         var _loc4_:String = "";
         var _loc5_:String = "";
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            if(_loc6_ == _loc3_ - 1)
            {
               _loc4_ = param1.substr(_loc6_ * _loc2_);
            }
            else
            {
               _loc4_ = param1.substr(_loc6_ * _loc2_,_loc2_);
            }
            _loc5_ = _loc5_ + changeUTF2ASCII(_loc4_);
            _loc6_++;
         }
         return _loc5_;
      }
   }
}
