package package_20
{
   import flash.utils.getDefinitionByName;
   import flash.utils.describeType;
   import flash.system.ApplicationDomain;
   import flash.utils.getQualifiedClassName;
   
   public final class class_120
   {
       
      private var var_47:XML;
      
      private var var_67:Class;
      
      private var var_50;
      
      private var var_235:package_20.class_146;
      
      private var var_246:package_20.class_145;
      
      private var var_239:package_20.class_141;
      
      private var var_281:package_20.class_143;
      
      private var var_275:package_20.class_136;
      
      private var var_254:package_20.class_104;
      
      private var var_238:package_20.class_142;
      
      private var var_247:package_20.class_144;
      
      private var var_216:String;
      
      private var var_243:String;
      
      public function class_120(param1:* = null)
      {
         super();
         this.parse(param1);
      }
      
      public static function method_161(param1:Class) : XML
      {
         var _loc2_:String = method_75(param1);
         var _loc3_:Class = getDefinitionByName(_loc2_) as Class;
         if(!class_147.method_260(_loc2_))
         {
            class_147.add(_loc2_,describeType(_loc3_));
         }
         return class_147.method_17(_loc2_);
      }
      
      public static function method_418(param1:String, param2:ApplicationDomain = null) : Class
      {
         if(!param2)
         {
            param2 = ApplicationDomain.currentDomain;
         }
         return param2.getDefinition(param1) as Class;
      }
      
      public static function method_367(param1:*) : String
      {
         var _loc2_:String = getQualifiedClassName(param1);
         _loc2_ = _loc2_.split("::").join(".");
         var _loc3_:Array = _loc2_.split(".");
         if(_loc3_.length > 1)
         {
            _loc3_.pop();
            return _loc3_.join(".");
         }
         return "";
      }
      
      public static function method_75(param1:*, param2:Boolean = true) : String
      {
         var _loc3_:String = getQualifiedClassName(param1);
         if(param2)
         {
            _loc3_ = _loc3_.split("::").join(".");
         }
         return _loc3_;
      }
      
      public static function method_400(param1:*, param2:Boolean = false) : String
      {
         var _loc4_:* = null;
         var _loc3_:String = getQualifiedClassName(param1);
         if(param2)
         {
            return _loc3_;
         }
         _loc3_ = _loc3_.split("::").join(".");
         _loc4_ = _loc3_.split(".");
         if(_loc4_.length > 1)
         {
            return _loc4_.pop();
         }
         return _loc3_;
      }
      
      public static function method_397(param1:Class, param2:Array = null) : *
      {
         if(!param2)
         {
            return new param1();
         }
         var _loc3_:Array = param2;
         switch(_loc3_.length)
         {
            case 0:
               return new param1();
            case 1:
               return new param1(_loc3_[0]);
            case 2:
               return new param1(_loc3_[0],_loc3_[1]);
            case 3:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2]);
            case 4:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3]);
            case 5:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4]);
            case 6:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5]);
            case 7:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6]);
            case 8:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7]);
            case 9:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8]);
            case 10:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9]);
            case 11:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10]);
            case 12:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11]);
            case 13:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12]);
            case 14:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13]);
            case 15:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14]);
            case 16:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15]);
            case 17:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16]);
            case 18:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17]);
            case 19:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18]);
            case 20:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18],_loc3_[19]);
            case 21:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18],_loc3_[19],_loc3_[20]);
            case 22:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18],_loc3_[19],_loc3_[20],_loc3_[21]);
            case 23:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18],_loc3_[19],_loc3_[20],_loc3_[21],_loc3_[22]);
            case 24:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18],_loc3_[19],_loc3_[20],_loc3_[21],_loc3_[22],_loc3_[23]);
            case 25:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18],_loc3_[19],_loc3_[20],_loc3_[21],_loc3_[22],_loc3_[23],_loc3_[24]);
            case 26:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18],_loc3_[19],_loc3_[20],_loc3_[21],_loc3_[22],_loc3_[23],_loc3_[24],_loc3_[25]);
            case 27:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18],_loc3_[19],_loc3_[20],_loc3_[21],_loc3_[22],_loc3_[23],_loc3_[24],_loc3_[25],_loc3_[26]);
            case 28:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18],_loc3_[19],_loc3_[20],_loc3_[21],_loc3_[22],_loc3_[23],_loc3_[24],_loc3_[25],_loc3_[26],_loc3_[27]);
            case 29:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18],_loc3_[19],_loc3_[20],_loc3_[21],_loc3_[22],_loc3_[23],_loc3_[24],_loc3_[25],_loc3_[26],_loc3_[27],_loc3_[28]);
            case 30:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18],_loc3_[19],_loc3_[20],_loc3_[21],_loc3_[22],_loc3_[23],_loc3_[24],_loc3_[25],_loc3_[26],_loc3_[27],_loc3_[28],_loc3_[29]);
            case 31:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18],_loc3_[19],_loc3_[20],_loc3_[21],_loc3_[22],_loc3_[23],_loc3_[24],_loc3_[25],_loc3_[26],_loc3_[27],_loc3_[28],_loc3_[29],_loc3_[30]);
            case 32:
               return new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9],_loc3_[10],_loc3_[11],_loc3_[12],_loc3_[13],_loc3_[14],_loc3_[15],_loc3_[16],_loc3_[17],_loc3_[18],_loc3_[19],_loc3_[20],_loc3_[21],_loc3_[22],_loc3_[23],_loc3_[24],_loc3_[25],_loc3_[26],_loc3_[27],_loc3_[28],_loc3_[29],_loc3_[30],_loc3_[31]);
            default:
               return null;
         }
      }
      
      protected final function parse(param1:*) : void
      {
         this.var_50 = param1;
         this.var_67 = getDefinitionByName(method_75(this.var_50)) as Class;
         this.var_47 = method_161(this.var_67);
         this.var_235 = new package_20.class_146(this.var_50,this.var_47);
         this.var_246 = new package_20.class_145(this.var_50,this.var_47);
         this.var_239 = new package_20.class_141(this.var_50,this.var_47);
         this.var_281 = new package_20.class_143(this.var_50,this.var_47);
         this.var_275 = new package_20.class_136(this.var_50,this.var_47);
         this.var_254 = new package_20.class_104(this.var_50,this.var_47);
         this.var_238 = new package_20.class_142(this.var_50,this.var_47);
         this.var_247 = new package_20.class_144(this.var_50,this.var_47);
         this.var_216 = String(this.var_47.@name).replace("::",".");
         var _loc2_:Array = this.var_216.split(".");
         this.var_243 = _loc2_[_loc2_.length - 1];
      }
      
      public function get method_452() : package_20.class_146
      {
         return this.var_235;
      }
      
      public function get method_378() : package_20.class_145
      {
         return this.var_246;
      }
      
      public function get method_398() : package_20.class_141
      {
         return this.var_239;
      }
      
      public function get method_385() : package_20.class_143
      {
         return this.var_281;
      }
      
      public function get method_415() : Class
      {
         return this.var_67;
      }
      
      public function get accessor() : package_20.class_136
      {
         return this.var_275;
      }
      
      public function get variable() : package_20.class_142
      {
         return this.var_238;
      }
      
      public function get constant() : package_20.class_104
      {
         return this.var_254;
      }
      
      public function get method() : package_20.class_144
      {
         return this.var_247;
      }
      
      public function get method_376() : String
      {
         return this.var_216;
      }
      
      public function get method_438() : String
      {
         return this.var_243;
      }
   }
}
