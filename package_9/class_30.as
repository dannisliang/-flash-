package package_9
{
	import flash.utils.ByteArray;
	import flash.utils.Endian;
	
	public final class class_30
	{
		
		private static const delta:uint = uint(2654435769);
		
		public function class_30()
		{
			super();
		}
		
		//LongArrayToByteArray
		private static function method_96(data:Array, includeLength:Boolean) : ByteArray
		{
			var length:uint = data.length;     
			var n:uint = (length - 1) << 2;     
			if (includeLength) {     
				var m:uint = data[length - 1];     
				if ((m < n - 3) || (m > n)) {     
					return null;     
				}     
				n = m;     
			}     
			var result:ByteArray = new ByteArray();     
			result.endian = Endian.LITTLE_ENDIAN;     
			for (var i:uint = 0; i < length; i++) {     
				result.writeUnsignedInt(data[i]);     
			}     
			if (includeLength) {     
				result.length = n;     
				return result;     
			}     
			else {     
				return result;     
			} 
		}
		
		//ByteArrayToLongArray
		private static function method_48(data:ByteArray, includeLength:Boolean) : Array
		{
			var length:uint = data.length;     
			var n:uint = length >> 2;     
			if (length % 4 > 0) {     
				n++;     
				data.length += (4 - (length % 4));     
			}     
			data.endian = Endian.LITTLE_ENDIAN;     
			data.position = 0;     
			var result:Array = [];     
			for (var i:uint = 0; i < n; i++) {     
				result[i] = data.readUnsignedInt();     
			}
			if (includeLength) {     
				result[n] = length;     
			}     
			data.length = length;     
			return result;
		}
		
		//encrypt
		public static function method_299(data:ByteArray, key:ByteArray) : ByteArray
		{
			if (data.length == 0) {
				return new ByteArray();     
			}     
			var v:Array = method_48(data, true);     
			var k:Array = method_48(key, false);     
			if (k.length < 4) {     
				k.length = 4;     
			}     
			var n:uint = v.length - 1;     
			var z:uint = v[n];     
			var y:uint = v[0];     
			var mx:uint;     
			var e:uint;     
			var p:uint;     
			var q:uint = uint(6 + 52 / (n + 1));     
			var sum:uint = 0;     
			while (0 < q--) {     
				sum = sum + delta;     
				e = sum >>> 2 & 3;     
				for (p = 0; p < n; p++) {     
					y = v[p + 1];     
					mx = (z >>> Main.xxxtea_shift_1 ^ y << 2) + (y >>> 3 ^ z << Main.xxxtea_shift_2) ^ (sum ^ y) + (k[p & 3 ^ e] ^ z);     
					z = v[p] = v[p] + mx;     
				}     
				y = v[0];
				mx = (z >>> Main.xxxtea_shift_1 ^ y << 2) + (y >>> 3 ^ z << Main.xxxtea_shift_2) ^ (sum ^ y) + (k[p & 3 ^ e] ^ z);     
				z = v[n] = v[n] + mx;     
			}     
			return method_96(v, false);
		}
		
		//decrypt
		public static function method_304(data:ByteArray, key:ByteArray) : ByteArray
		{
			if (data.length == 0) {     
				return new ByteArray();     
			}     
			var v:Array = method_48(data, false);     
			var k:Array = method_48(key, false);     
			if (k.length < 4) {     
				k.length = 4;     
			}     
			var n:uint = v.length - 1;     
			var z:uint = v[n - 1];     
			var y:uint = v[0];     
			var mx:uint;     
			var e:uint;     
			var p:uint;     
			var q:uint = uint(6 + 52 / (n + 1));     
			var sum:uint = q * delta;     
			while (sum != 0) {     
				e = sum >>> 2 & 3;
				for (p = n; p > 0; p--) {     
					z = v[p - 1];     
					mx = (z >>> Main.xxxtea_shift_1 ^ y << 2) + (y >>> 3 ^ z << Main.xxxtea_shift_2) ^ (sum ^ y) + (k[p & 3 ^ e] ^ z);     
					y = v[p] = v[p] - mx;     
				}     
				z = v[n];     
				mx = (z >>> Main.xxxtea_shift_1 ^ y << 2) + (y >>> 3 ^ z << Main.xxxtea_shift_2) ^ (sum ^ y) + (k[p & 3 ^ e] ^ z);     
				y = v[0] = v[0] - mx;     
				sum = sum - delta;     
			}     
			return method_96(v, true);
		}
	}
}
