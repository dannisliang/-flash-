package view
{
   import ws.class_70;
   import zebra.class_4;
   
   public final class class_71 extends class_70
   {
       
      public function class_71()
      {
         super();
         class_4.method_3.method_61(this);
         this.setLightState(1);
      }
      
      public final function setLightState(param1:int) : void
      {
         switch(param1)
         {
            case 1:
               var_185.gotoAndStop(1);
               var_231.visible = true;
               break;
            case 2:
               var_185.gotoAndStop(2);
               var_231.visible = false;
               break;
            case 3:
               var_185.gotoAndStop(3);
               var_231.visible = false;
         }
      }
   }
}
