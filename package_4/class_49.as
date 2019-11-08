package package_4
{
   import package_11.class_46;
   import flash.display.Stage;
   import flash.geom.Point;
   
   final class class_49 extends class_46
   {
       
      private var var_73:Stage;
      
      public var mousePoint:Point;
      
      function class_49(param1:Stage)
      {
         super();
         this.var_73 = param1;
      }
      
      override public function execute() : void
      {
         super.execute();
         this.mousePoint = new Point(this.var_73.mouseX,this.var_73.mouseY);
         this.method_141();
      }
   }
}
