package view
{
   import zebra.core.class_11;
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import zebra.class_4;
   import flash.utils.setTimeout;
   
   public final class class_12 extends class_11
   {
      
      public static var var_81:Sprite;
       
      public var var_122:Sprite;
      
      public var var_132:Sprite;
      
      public var var_125:Sprite;
      
      private var var_210:Sprite;
      
      public function class_12()
      {
         super();
         this.x = 23;
         this.var_122 = new Sprite();
         addChild(this.var_122);
         this.var_132 = new Sprite();
         addChild(this.var_132);
         this.var_125 = new Sprite();
         this.var_125.x = 403;
         addChild(this.var_125);
         var_81 = new Sprite();
         var_81.x = 403;
         addChild(var_81);
         this.var_210 = new Sprite();
         this.var_210.addChild(new class_27());
         addChild(this.var_210);
         this.create();
      }
      
      public static function method_55() : void
      {
         var_81.removeChildren();
      }
      
      public static function method_8(param1:DisplayObject) : void
      {
         var_81.removeChildren();
         var_81.addChild(param1);
      }
      
      public final function create() : void
      {
         class_4.method_27.method_336();
         this.var_132.addChild(new class_14());
         this.var_122.addChild(new class_32());
      }
      
      public function setMessage(param1:String, param2:Boolean = false) : void
      {
         this.var_125.removeChildren();
         this.var_125.addChild(new class_34(param1,true,param2));
      }
      
      public final function method_450(param1:int, param2:int = 0) : void
      {
         var value:int = param1;
         var time:int = param2;
         setTimeout(function():*
         {
            if(value == 0)
            {
               var_122.removeChildren();
               var_122.addChild(new class_32());
            }
            else
            {
               var_132.removeChildren();
               var_132.addChild(new class_14());
            }
         },time);
      }
   }
}
