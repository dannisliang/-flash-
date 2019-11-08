package view
{
   import ws.class_33;
   import flash.events.MouseEvent;
   import flash.utils.setTimeout;
   import flash.events.Event;
   import flash.utils.clearTimeout;
   
   public final class class_34 extends class_33
   {
       
      private var otTimer:uint;
      
      public function class_34(param1:*, param2:Boolean = true, param3:Boolean = false)
      {
         var type:* = param1;
         var showBut:Boolean = param2;
         var closeWin:Boolean = param3;
         super();
         switch(type)
         {
            case 1:
               this.var_14.text = "输入价格不能为空";
               break;
            case 2:
               this.var_14.text = "出价金额必须为100元的正整数倍";
               break;
            case 3:
               this.var_14.text = "两次输入的出价金额不一致";
               break;
            case 4:
               this.var_14.text = "校验码不能为空";
               break;
            case 5:
               this.var_14.text = "图像校验码错误！";
			   clearTimeout(Main.intervalId2);
               break;
            case 6:
               this.var_14.text = "正在等待出价入列";
               break;
            case 7:
               this.var_14.text = "没有正在举行的拍卖会，请注意拍卖公告！";
               break;
            case 8:
               this.var_14.text = "出价成功";
               break;
            case 9:
               this.var_14.text = "你的操作过于频繁，请稍后再尝试";
               break;
            case 10:
               this.var_14.text = "拍卖会已结束！";
               break;
            case 11:
               this.var_14.text = "拍卖会已终止！";
               break;
            case 12:
               this.var_14.text = "拍卖会已暂停！";
               break;
            default:
               this.var_14.text = String(type);
         }
         if(!closeWin)
         {
            this.otTimer = setTimeout(this.method_254,15000);
         }
         this.addEventListener(Event.REMOVED_FROM_STAGE,function(param1:Event):void
         {
            clearTimeout(otTimer);
         });
         okBut.visible = showBut;
         okBut.addEventListener(MouseEvent.CLICK,this.method_283);
      }
      
      private final function method_283(param1:MouseEvent) : void
      {
         this.parent.removeChild(this);
      }
      
      private final function method_254() : void
      {
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
      }
   }
}
