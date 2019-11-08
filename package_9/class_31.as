package package_9
{
   import flash.utils.ByteArray;
   
   public final class class_31
   {
      
      private static const const_163:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.0.0";
       
      public function class_31()
      {
         super();
         throw new Error("Base64 class is static container only");
      }
      
	  //encode
      public static function name_7(data:String) : String
      {
		  // Convert string to ByteArray      
		  var bytes:ByteArray = new ByteArray();      
		  bytes.writeUTFBytes(data);      
		  
		  // Return encoded ByteArray      
		  return method_142(bytes);
      }
      
	  //encodeByteArray
      public static function method_142(data:ByteArray) : String
      {
		  // Initialise output      
		  var output:String = "";      
		  
		  // Create data and output buffers      
		  var dataBuffer:Array;      
		  var outputBuffer:Array = new Array(4);      
		  
		  // Rewind ByteArray      
		  data.position = 0;      
		  
		  // while there are still bytes to be processed      
		  while (data.bytesAvailable > 0) {      
			  // Create new data buffer and populate next 3 bytes from data      
			  dataBuffer = new Array();      
			  for (var i:uint = 0; i < 3 && data.bytesAvailable > 0; i++) {      
				  dataBuffer[i] = data.readUnsignedByte();      
			  }      
			  
			  // Convert to data buffer Base64 character positions and       
			  // store in output buffer      
			  outputBuffer[0] = (dataBuffer[0] & 0xfc) >> 2;      
			  outputBuffer[1] = ((dataBuffer[0] & 0x03) << 4) | ((dataBuffer[1]) >> 4);      
			  outputBuffer[2] = ((dataBuffer[1] & 0x0f) << 2) | ((dataBuffer[2]) >> 6);      
			  outputBuffer[3] = dataBuffer[2] & 0x3f;      
			  
			  // If data buffer was short (i.e not 3 characters) then set      
			  // end character indexes in data buffer to index of '=' symbol.      
			  // This is necessary because Base64 data is always a multiple of      
			  // 4 bytes and is basses with '=' symbols.      
			  for (var j:uint = dataBuffer.length; j < 3; j++) {      
				  outputBuffer[j + 1] = 64;      
			  }      
			  
			  // Loop through output buffer and add Base64 characters to       
			  // encoded data string for each character.      
			  for (var k:uint = 0; k < outputBuffer.length; k++) {      
				  output += const_163.charAt(outputBuffer[k]);      
			  }      
		  }      
		  
		  // Return encoded data      
		  return output;
      }
      
	  //decode
      public static function name_6(data:String) : String
      {
		  // Decode data to ByteArray      
		  var bytes:ByteArray = method_128(data);      
		  
		  // Convert to string and return      
		  return bytes.readUTFBytes(bytes.length);
      }
      
	  //decodeToByteArray
      public static function method_128(data:String) : ByteArray
      {
		  // Initialise output ByteArray for decoded data      
		  var output:ByteArray = new ByteArray();      
		  
		  // Create data and output buffers      
		  var dataBuffer:Array = new Array(4);      
		  var outputBuffer:Array = new Array(3);      
		  
		  // While there are data bytes left to be processed      
		  for (var i:uint = 0; i < data.length; i += 4) {      
			  // Populate data buffer with position of Base64 characters for      
			  // next 4 bytes from encoded data      
			  for (var j:uint = 0; j < 4 && i + j < data.length; j++) {      
				  dataBuffer[j] = const_163.indexOf(data.charAt(i + j));      
			  }      
			  
			  // Decode data buffer back into bytes      
			  outputBuffer[0] = (dataBuffer[0] << 2) + ((dataBuffer[1] & 0x30) >> 4);      
			  outputBuffer[1] = ((dataBuffer[1] & 0x0f) << 4) + ((dataBuffer[2] & 0x3c) >> 2);              
			  outputBuffer[2] = ((dataBuffer[2] & 0x03) << 6) + dataBuffer[3];      
			  
			  // Add all non-padded bytes in output buffer to decoded data      
			  for (var k:uint = 0; k < outputBuffer.length; k++) {      
				  if (dataBuffer[k+1] == 64) break;      
				  output.writeByte(outputBuffer[k]);      
			  }      
		  }      
		  
		  // Rewind decoded data ByteArray      
		  output.position = 0;      
		  
		  // Return decoded data      
		  return output;
      }
   }
}
