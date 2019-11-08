package package_11
{
   import flash.events.EventDispatcher;
   import package_14.class_50;
   
   public class class_46 extends EventDispatcher implements class_45
   {
      
      static var var_138:int = 0;
       
      private var var_162:String;
      
      private var var_179:Boolean;
      
      private var var_167:Boolean;
      
      var var_237:class_78;
      
      public function class_46()
      {
         super();
         this.var_162 = String(var_138++);
      }
      
      static function method_349() : void
      {
      }
      
      public function get IsStart() : Boolean
      {
         return this.var_179;
      }
      
      public function get IsFinish() : Boolean
      {
         return this.var_167;
      }
      
      public function method_141() : void
      {
         this.var_167 = true;
         this.dispatchEvent(new class_50(class_50.COMPLETE));
      }
      
      public function set id(param1:String) : void
      {
         this.var_162 = param1 + "-" + this.var_162;
      }
      
      public function get id() : String
      {
         return this.var_162;
      }
      
      public function get package_12() : class_78
      {
         return this.var_237;
      }
      
      public function execute() : void
      {
         this.var_179 = true;
         this.var_167 = false;
      }
      
      public function dispose() : void
      {
         this.dispatchEvent(new class_50(class_50.const_99));
      }
      
      public function stop() : void
      {
         this.dispatchEvent(new class_50(class_50.const_82));
      }
   }
}
