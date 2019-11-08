package package_1
{
   import flash.utils.ByteArray;
   
   import package_2.class_13;
   import package_2.class_29;
   
   import package_9.class_28;
   
   import r1.deval.D;
   
   import zebra.class_4;
   import zebra.core.class_6;
   
   public final class class_7 extends class_6
   {
       
      public var requestid2to2:String;
      
      public var var_116:String = "0";
      
      public var var_108;
      
      public var var_109;
      
      public var bidnumber:String = "70000004";
      
      public var clientId:String = "4d3d87126d5446248c44ff0f33cc75b3";
      
      public var var_19:String = "";
      
      public var version:String = "1.0";
      
      public var var_315:String = "shcarbid";
      
      public var key:ByteArray;
      
      public var var_7:package_1.class_8;
      
      public var logappliction:package_1.class_5;
      
      public var var_3:String = "";
      
      public function class_7()
      {
         this.key = new ByteArray();
         this.var_7 = new package_1.class_8(Main.var_53);
         this.logappliction = new package_1.class_5();
         super();
         class_4.method_3.method_61(this);
      }
      
      public static function method_435(param1:*) : *
      {
         var _loc2_:String = param1;
         var _loc3_:* = "{\"cmd\":\"" + param1 + "\"}";
         return _loc3_;
      }
      
      public function get uid() : String
      {
         return this.bidnumber;
      }
      
      public function get requestid() : String
      {
         return this.bidnumber + ".f" + this.var_3;
      }
      
      public final function createTimestamp() : String
      {
         var _loc1_:Date = new Date();
         this.var_3 = String(_loc1_.getHours()) + String(_loc1_.getMinutes()) + String(_loc1_.getSeconds()) + String(_loc1_.getMilliseconds());
         return this.var_3;
      }
      
      public final function data() : String
      {
         return "{requestid:\"" + this.requestid + "\",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.uid + "\",checkcode:\"" + this.var_19 + "\",version:\"" + this.version + "\"}";
      }
	  
	  private function md5_codec(status:String, p1:String = '', p2:String='', p3:String=''):String{
		  var param:String;
		  switch(status){
		  	case '1-1':
			  param = Main.codec_1_1;
			  break;
			
			case '0-0':
				param = Main.codec_0_0;
				break;
			
			case '2-1':
				param = Main.codec_2_1;
				break;
			
			case '2-2':
				if(p3 ==""){
					param = Main.codec_2_2_1;
				}else{
					param = Main.codec_2_2_2;
				}
				break;
			
			default:
				return "";
		  }
		  var ret:String="";
		  var param_arr:Array = param.split("+");		  
		  for(var i:int=0;i<param_arr.length;i++){
			  if(param_arr[i] == 'p1'){
				  ret += p1;
			  }else if(param_arr[i] == 'p2'){
				  ret += p2;
			  }else if(param_arr[i] == 'p3'){
				  ret += p3;
			  }else if(isNaN(Number(param_arr[i])) == false){
				  ret += param_arr[i];
			  }else{
				  ret += this[param_arr[i]];
			  }
		  }		  
		  return ret;
	  }
      
	  //接收请求上线的数据处理
      public function get bytes1_1() : class_29
      {  
         this.createTimestamp();
		 
		 if(Main.codec_enable == true){
			 this.var_19 = class_28.method_25(this.md5_codec("1-1")).toLowerCase();
		 }else{
			//this.var_19 = class_28.method_25(this.bidnumber + this.clientId + this.requestid + this.var_3 + this.version).toLowerCase();
         	//this.var_19 = class_28.method_25(this.clientId + this.version + this.var_3 + this.requestid + this.version + this.bidnumber).toLowerCase();
			  this.var_19 = class_28.method_25(this.clientId + this.bidnumber + this.version + this.requestid + this.version + this.var_3).toLowerCase();
		 }
		 var _loc1_:class_29 = new class_29();
         var _loc2_:* = "{requestid:\"" + this.requestid + "\",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.uid + "\",checkcode:\"" + this.var_19 + "\",version:\"" + this.version + "\"}";
         var _loc3_:String = this.var_7.method_59(_loc2_);
         var _loc4_:String = this.var_7.method_50(_loc3_);
         _loc1_.method_45(_loc3_);
         this.logappliction.WriteLog1("投标板块","上线1-1",this.requestid);
         return _loc1_;
      }
      
      public function get bytes0_0() : class_29
      {
         this.createTimestamp();
		 //this.logappliction.WriteLog1("投标板块","bytes0_0",this.bidnumber + this.clientId + this.requestid + "0" + this.var_3 + this.version);
		 if(Main.codec_enable == true){
			 this.var_19 = class_28.method_25(this.md5_codec("0-0")).toLowerCase();
		 }else{
			  this.var_19 = class_28.method_25(this.bidnumber + this.clientId + this.requestid + "0" + this.var_3 + this.version);
		 }
		 var _loc2_:class_29 = new class_29();
         var _loc3_:* = "{requestid:\"" + this.requestid + "\",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.uid + "\",checkcode:\"" + this.var_19 + "\",version:\"" + this.version + "\",request:{timespan:\"" + "0" + "\"}}";
         var _loc4_:String = this.var_7.method_59(_loc3_);
         var _loc5_:String = this.var_7.method_50(_loc4_);
         _loc2_.method_45(_loc4_);
         return _loc2_;
      }
      
      public final function bytes2_1(param1:String) : class_29
      {
         this.createTimestamp();
		 var _loc2_:class_29 = new class_29();
         var _loc3_:String = param1;
		 Main.bid_amount = int(param1);//保存获取验证码时的价格		 
		 		 
		 if(Main.codec_enable == true){
			 this.var_19 = class_28.method_25(this.md5_codec("2-1", _loc3_)).toLowerCase();
		 }else{
			//this.var_44 = class_28.method_25(_loc3_ + this.bidnumber + this.clientId + this.requestid + this.var_3 + this.version);
         	//this.var_19 = class_28.method_25(this.clientId + this.bidnumber + _loc3_ + this.var_3 + this.bidnumber + this.version);
			  this.var_19 = class_28.method_25(this.clientId + _loc3_ + this.var_3 + this.bidnumber + this.bidnumber + this.version);
		 }
		 var _loc4_:* = "{requestid:\"" + this.requestid + "\",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.bidnumber + "\",checkcode:\"" + this.var_19 + "\",version:\"" + this.version + "\",request:{bidamount:" + _loc3_ + "}}";
         var _loc5_:String = this.var_7.method_59(_loc4_);
         _loc2_.method_45(_loc5_);
         this.logappliction.WriteLog1("投标板块","请求校验码2-1",this.requestid);
         return _loc2_;
      }
      
      public final function bytes2_2(param1:String, param2:String, param3:String = "") : class_29
      {
         this.createTimestamp();
		 var _loc4_:class_29 = new class_29();
         var _loc5_:String = param1;
         var _loc6_:String = param2;
		 var _loc9_:String = _loc5_;
		 
		 if(Main.codec_enable == false){
			 param2 = class_28.method_25(this.md5_codec("2-2", _loc9_, _loc6_, param3)).toLowerCase();
		 }else{
	         if(param3 == "")
	         {
				//param2 = class_28.method_25(_loc9_ + this.bidnumber + this.clientId + _loc6_ + this.requestid + this.var_3 + this.version);
	            //param2 = class_28.method_25(_loc6_ + _loc9_ + this.bidnumber + this.clientId + this.version + this.bidnumber + this.var_3);
				 param2 = class_28.method_25(_loc6_ + this.bidnumber + _loc9_ + this.version + this.bidnumber + this.clientId + this.var_3);
	         }
	         else
	         {
	            //param2 = class_28.method_25(this.version + this.bidnumber + _loc9_ + this.clientId + this.requestid + _loc6_ + param3 + this.var_3);
				 param2 = class_28.method_25(this.version + this.clientId + this.requestid + this.bidnumber + _loc6_ + _loc9_ + param3 + this.var_3);
	         }
		 }
         this.requestid2to2 = this.requestid;
         var _loc7_:* = "{requestid:\"" + this.requestid + "\",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.bidnumber + "\",checkcode:\"" + param2 + "\",version:\"" + this.version + "\",request:{bidamount:\"" + _loc5_ + "\",imagenumber:\"" + _loc6_ + "\"}}";
         var _loc8_:String = this.var_7.method_59(_loc7_);
         _loc4_.method_45(_loc8_);
		 this.logappliction.WriteLog1("发送前数据打包", Main.cur_servertime, String(Main.maxPrice));
		 this.logappliction.WriteLog1("投标板块", "请求进入队列2-2", this.requestid);
         return _loc4_;
      }
      
      public final function method_257(param1:* = null) : *
      {
         this.createTimestamp();
         var _loc2_:String = class_13.create().toLowerCase();
         if(param1 != null)
         {
            _loc2_ = param1.toLowerCase();
         }
         var _loc3_:String = this.uid + "." + this.var_3;
         var _loc4_:String = class_28.method_25(_loc3_ + this.var_3 + _loc2_ + this.version).toLowerCase();
         var _loc5_:* = "{requestid:\"" + _loc3_ + "\",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.uid + "\",checkcode:\"" + _loc4_ + "\",version:\"" + this.version + "\",request:{}}";
         var _loc6_:String = _loc5_;
         var _loc7_:* = "{\"method\":\"getimagecode\",\"cmd\":\"" + escape(_loc6_) + "\"}";
         return _loc7_;
      }
      
      public final function selfPriceInfowithoutUniqueid() : *
      {
         this.createTimestamp();
         var _loc1_:String = this.uid + "." + this.var_3;
         var _loc2_:String = class_28.method_25(_loc1_ + this.var_3 + this.version).toLowerCase();
         var _loc3_:* = "{requestid:\"" + _loc1_ + "\",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.uid + "\",checkcode:\"" + _loc2_ + "\",version:\"" + this.version + "\"}";
         var _loc4_:String = _loc3_;
         var _loc5_:* = "{\"method\":\"getimagecode\",\"cmd\":\"" + escape(_loc4_) + "\"}";
         return _loc5_;
      }
      
      public final function sendPriceInfo(param1:String, param2:*) : String
      {
         this.createTimestamp();
         var _loc3_:String = this.uid + "." + this.var_3;
         var _loc4_:String = param1;
         param1 = class_28.method_25(this.bidnumber + this.clientId + _loc4_ + _loc3_ + this.var_3 + param2 + this.version).toLowerCase();
         var _loc5_:* = "{requestid:\"" + _loc3_ + "\",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.bidnumber + "\",checkcode:\"" + param1 + "\",version:\"" + this.version + "\",request:{uniqueid:\"" + param2 + "\",bidnumber:\"" + this.bidnumber + "\",imagenumber:\"" + _loc4_ + "\"}}";
         var _loc6_:String = _loc5_;
         var _loc7_:* = "{\"method\":\"bidcheck\",\"cmd\":\"" + escape(_loc6_) + "\"}";
         return _loc7_;
      }
   }
}
