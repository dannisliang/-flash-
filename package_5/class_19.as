package package_5
{
   import package_13.class_57;
   import package_15.class_55;
   import flash.utils.getQualifiedClassName;
   import zebra.class_4;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.BitmapData;
   import flash.text.Font;
   
   public final class class_19
   {
       
      private var var_74:class_58;
      
      private var var_127:class_52;
      
      private var var_114:class_56;
      
      private var var_126:class_53;
      
      private var var_165:class_54;
      
      private var var_257:class_57;
      
      public function class_19()
      {
         super();
         this.var_74 = new class_58(this);
         this.var_127 = new class_52(this);
         this.var_114 = new class_56(this);
         this.var_126 = new class_53(this);
         this.var_165 = new class_54(this);
         this.var_257 = new class_57("@zebraGame");
      }
      
      public final function method_374(param1:*) : void
      {
         this.var_165.add(param1);
      }
      
      public final function method_403(param1:*) : *
      {
         return this.var_165.method_17(param1);
      }
      
      public final function method_375(param1:*) : void
      {
         this.var_165.method_20(param1);
      }
      
      public final function method_212(param1:*) : void
      {
         this.var_74.add(param1);
      }
      
      public final function method_61(param1:*) : void
      {
         var _loc2_:String = this.method_148(param1);
         if(this.var_74.method_73(_loc2_))
         {
            this.var_74.update(param1);
         }
         else
         {
            this.var_74.add(param1);
         }
      }
      
      public final function method_5(param1:*) : *
      {
         return this.var_74.method_17(param1);
      }
      
      public final function method_453(param1:*) : void
      {
         this.var_74.method_20(param1);
      }
      
      public final function method_125(param1:*) : void
      {
         var _loc2_:String = this.method_148(param1);
         this.var_127.add(param1);
      }
      
      public final function method_16(param1:*) : *
      {
         return this.var_127.method_17(param1);
      }
      
      public final function method_448(param1:*) : void
      {
         this.var_127.method_20(param1);
      }
      
      public final function method_235(param1:String, param2:Object) : void
      {
         this.var_114.add(param1,param2);
      }
      
      public final function method_282(param1:String) : void
      {
         return this.var_114.method_20(param1);
      }
      
      public final function method_392(param1:String) : *
      {
         return this.var_114.method_17(param1);
      }
      
      public final function method_309(param1:String, param2:class_55) : void
      {
         this.var_126.add(param1,param2);
      }
      
      public final function method_405(param1:String) : void
      {
         return this.var_126.method_20(param1);
      }
      
      public final function method_302(param1:String) : class_55
      {
         return this.var_126.method_17(param1);
      }
      
      public final function clear() : void
      {
         this.var_114.clear();
         this.var_127.clear();
         this.var_74.clear();
         this.var_126.clear();
      }
      
      private final function method_148(param1:*) : String
      {
         return getQualifiedClassName(param1).split("::").join(".");
      }
      
      public final function method_69(param1:String) : Class
      {
         return class_4.method_173.getDefinition(param1) as Class;
      }
      
      public final function method_454(param1:String) : *
      {
         var _loc2_:Class = this.method_69(param1);
         return new _loc2_();
      }
      
      public final function method_442(param1:String) : MovieClip
      {
         var _loc2_:Class = this.method_69(param1);
         return MovieClip(new _loc2_());
      }
      
      public final function method_426(param1:String) : SimpleButton
      {
         var _loc2_:Class = this.method_69(param1);
         return SimpleButton(new _loc2_());
      }
      
      public final function method_359(param1:String) : BitmapData
      {
         var _loc2_:Class = this.method_69(param1);
         return BitmapData(new _loc2_());
      }
      
      public final function method_447(param1:String) : Font
      {
         var _loc2_:Class = this.method_69(param1) as Class;
         Font.registerFont(_loc2_);
         return Font(new _loc2_());
      }
      
      public function get method_387() : class_57
      {
         return this.var_257;
      }
   }
}
