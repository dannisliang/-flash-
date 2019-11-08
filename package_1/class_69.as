package package_1
{
   import flash.utils.ByteArray;
   
   import package_2.class_13;
   import package_2.class_29;
   
   import package_5.class_19;
   
   import package_9.class_28;
   
   import zebra.core.class_6;
   
   public final class class_69 extends class_6
   {
       
      public var var_7:package_1.class_8;
      
      public var var_116:String = "0";
      
      public var var_108;
      
      public var var_109;
      
      public var bidnumber:String = "70000004";
      
      public var clientId:String = "4d3d87126d5446248c44ff0f33cc75b3";
      
      public var var_19:String = "";
      
      public var version:String = "1.0";
      
      public var var_308:String = "shcarbid";
      
      public var var_288:ByteArray;
      
      public var var_3:String = "";
      
      public function class_69()
      {
         this.var_7 = new package_1.class_8(Main.var_53);
         this.var_288 = new ByteArray();
         super();
      }
      
      public function get uid() : String
      {
         return this.bidnumber;
      }
      
      public function get requestid() : String
      {
         return this.bidnumber + ".e" + this.var_3;
      }
      
      public final function createTimestamp() : void
      {
         var _loc1_:Date = new Date();
         this.var_3 = String(_loc1_.getHours()) + String(_loc1_.getMinutes()) + String(_loc1_.getSeconds()) + String(_loc1_.getMilliseconds());
      }
      
      public final function data() : String
      {
         return "{requestid:\"" + this.requestid + "\",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.uid + "\",checkcode:\"" + this.var_19 + "\",version:\"" + this.version + "\"}";
      }
      
	  //请求上线
      public function get bytes1_1() : class_29
      {
         this.createTimestamp();
         this.var_19 = class_28.method_25(this.bidnumber + this.clientId + this.requestid + this.var_3 + this.version).toLowerCase();
         var _loc1_:class_29 = new class_29();
         var _loc2_:* = "{requestid:\"" + this.requestid + "\",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.uid + "\",checkcode:\"" + this.var_19 + "\",version:\"" + this.version + "\"}";
         var _loc3_:String = this.var_7.method_59(_loc2_);
         _loc1_.method_45(_loc3_);
         return _loc1_;
      }
      
	  //心跳帧，次/10秒
      public function get bytes0_0() : class_29
      {
         this.createTimestamp();
         this.var_19 = class_28.method_25(this.bidnumber + this.clientId + this.requestid + this.var_116 + this.var_3 + this.version).toLowerCase();
         var _loc1_:class_29 = new class_29();
         var _loc2_:* = "{requestid:\"" + this.requestid + "\",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.uid + "\",checkcode:\"" + this.var_19 + "\",version:\"" + this.version + "\",request:{timespan:\"" + this.var_116 + "\"}}";
         var _loc3_:String = this.var_7.method_59(_loc2_);
         _loc1_.method_45(_loc3_);
         return _loc1_;
      }
      //请求验证码
      public final function bytes2_1(param1:String) : class_29
      {
         this.createTimestamp();
         var _loc2_:class_29 = new class_29();
         var _loc3_:String = param1;
         this.var_19 = class_28.method_25(_loc3_ + this.bidnumber + this.clientId + this.requestid + this.var_3 + this.version);
         _loc2_.method_45("{requestid:" + this.requestid + ",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.bidnumber + "\",checkcode:\"" + this.var_19 + "\",version:\"" + this.version + "\",request:{bidamount:" + _loc3_ + "}}");
         return _loc2_;
      }
      
	  //发送入队请求
      public final function bytes2_2(param1:String, param2:String) : class_29
      {
         this.createTimestamp();
         var _loc3_:class_29 = new class_29();
         var _loc4_:String = param1;
         var _loc5_:String = param2;
         param2 = class_28.method_25(_loc4_ + this.bidnumber + this.clientId + _loc5_ + this.requestid + this.var_3 + this.version);
         _loc3_.method_45("{requestid:" + this.requestid + ",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.bidnumber + "\",checkcode:\"" + param2 + "\",version:\"" + this.version + "\",request:{bidamount:\"" + _loc4_ + "\",imagenumber:\"" + _loc5_ + "\"}}");
         return _loc3_;
      }
      
      public final function method_257() : *
      {
         this.createTimestamp();
         var _loc1_:String = class_13.create().toLowerCase();
         var _loc2_:String = this.uid + "." + this.var_3;
         var _loc3_:String = class_28.method_25(_loc2_ + this.var_3 + _loc1_ + this.version).toLowerCase();
         var _loc4_:* = "{requestid:\"" + _loc2_ + "\",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.uid + "\",checkcode:\"" + _loc3_ + "\",version:\"" + this.version + "\",request:{uniqueid:\"" + _loc1_ + "\"}}";
         var _loc5_:* = "{\"method\":\"getimagecode\",\"cmd\":\"" + escape(_loc4_) + "\"}";
         return _loc5_;
      }
      
	  //获取当前用户最新出价信息
      public final function sendPriceInfo(param1:String) : String
      {
         this.createTimestamp();
         var _loc2_:String = class_13.create().toLowerCase();
         var _loc3_:String = this.uid + "." + this.var_3;
         var _loc4_:String = param1;
         param1 = class_28.method_25(this.bidnumber + this.clientId + _loc4_ + _loc3_ + this.var_3 + _loc2_ + this.version).toLowerCase();
         var _loc5_:* = "{requestid:\"" + _loc3_ + "\",timestamp:\"" + this.var_3 + "\",bidnumber:\"" + this.bidnumber + "\",checkcode:\"" + param1 + "\",version:\"" + this.version + "\",request:{uniqueid:\"" + _loc2_ + "\",bidnumber:\"" + this.bidnumber + "\",imagenumber:\"" + _loc4_ + "\"}}";
         var _loc6_:* = "{\"method\":\"bidcheck\",\"cmd\":\"" + escape(_loc5_) + "\"}";
         return _loc6_;
      }
   }
}
