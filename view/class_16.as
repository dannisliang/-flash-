package view
{
   import ws.class_15;
   import flash.events.MouseEvent;
   import package_1.class_9;
   import zebra.class_4;
   import package_13.class_48;
   
   public final class class_16 extends class_15
   {
       
      public function class_16(param1:*)
      {
         super();
         switch(param1)
         {
            case 1:
               this.var_14.text = "该投标号已在其他地方登录，请检查投标号并重新登录。";
               break;
            case 2:
               this.var_14.text = "您与服务器的连接已经断开，请重新登录";
         }
         okBut.addEventListener(MouseEvent.CLICK,this.closeHandler);
      }
      
      private final function closeHandler(param1:MouseEvent) : void
      {
         this.parent.removeChild(this);
         var _loc2_:class_9 = class_9(class_4.method_3.method_16(class_9));
         if(!class_4.method_23.method_31)
         {
            if(_loc2_.auctype == "0")
            {
               class_48.method_149("http://" + _loc2_.var_64 + "/bid/");
            }
            else
            {
               class_48.method_149("http://" + _loc2_.var_64 + "/pubbid/");
            }
         }
      }
   }
}
