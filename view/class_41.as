package view
{
   import event.class_74;
   
   import flash.display.Sprite;
   import flash.events.DataEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.setTimeout;
   
   import package_1.class_5;
   
   import ws.class_75;
   
   import zebra.class_4;
   
   import view.PriceInfoWindowPart;
   
   public final class class_41 extends Sprite
   {
      /**出价界面*/
      public var bidstage:class_75;
      
	  /**3->没有正在举行的拍卖会，请注意拍卖公告！4->拍卖会已结束！5->拍卖会已终止！6->拍卖会已暂停*/
      public var bidcode:Number;
      /**目前最低可成交价*/
      private var lowestValue:int = 0;
      
      private var flag:String = "";
      
	  /**防止出价过于频繁，请稍后再尝试*/
      public var var_139:Boolean = true;
      
      public var var_224:Boolean = true;
      
      public var logappliction:class_5;
      
      public function class_41()
      {
         this.logappliction = new class_5();
         super();
         class_4.method_3.method_61(this);
         this.x = 403.45;
         this.bidstage = new class_75();
         this.bidstage.price2.visible = false;
         this.bidstage.price1.visible = false;
         this.bidstage.ver.text = Main.var_94;
//         if(class_4.method_23.method_31)
         {
            this.bidstage.ver.addEventListener(MouseEvent.CLICK,this.OpenLog);
         }
         this.bidstage.addEventListener(KeyboardEvent.KEY_DOWN,this.method_293);
         addChild(this.bidstage);
         class_4.method_28.receive(class_74.name,function(param1:class_74):void
         {
            if(param1.var_58 == "B")	//到调整出价阶段
            {
               bidstage.price1.visible = true;
               lowestValue = param1.value;
               bidstage.price1.priceInfoTxt.text = "目前最低可成交价 : " + param1.value + "元";
               bidstage.price2.visible = false;
               bidstage.price2.priceInputTxt1.text = "";
               bidstage.price2.priceInputTxt2.text = "";
               bidcode = 2;
			   
			   //addEventListener(Event.ENTER_FRAME, xxEnterFrameHandler);
            }
            else if(param1.var_58 == "A")
            {
               bidstage.price2.visible = true;
               bidstage.price1.visible = false;
               bidcode = 1;
            }
            else if(param1.var_58 == "E")
            {
               bidstage.price2.visible = true;
               bidstage.price1.visible = false;
               bidcode = 5;
            }
            else if(param1.var_58 == "D" || param1.var_58 == "G")
            {
               bidstage.price2.visible = true;
               bidstage.price1.visible = false;
               bidcode = 4;
            }
            else if(param1.var_58 == "H")
            {
               bidstage.price2.visible = true;
               bidstage.price1.visible = false;
               bidcode = 6;
            }
            else if(param1.var_58 == "C")
            {
               bidstage.price2.visible = true;
               bidstage.price1.visible = false;
               bidcode = 3;
            }
            if(param1.var_58 == "A")
            {
               bidstage.price1.priceInfoTxt.visible = false;
            }
            else
            {
               bidstage.price1.priceInfoTxt.visible = true;
            }
         });
         this.bidstage.price1.i100.addEventListener(MouseEvent.CLICK,this._butHandler);
         this.bidstage.price1.i200.addEventListener(MouseEvent.CLICK,this._butHandler);
         this.bidstage.price1.i300.addEventListener(MouseEvent.CLICK,this._butHandler);
         this.bidstage.price1.s100.addEventListener(MouseEvent.CLICK,this._butHandler);
         this.bidstage.price1.s200.addEventListener(MouseEvent.CLICK,this._butHandler);
         this.bidstage.price1.s300.addEventListener(MouseEvent.CLICK,this._butHandler);
         this.bidstage.price1.priceBut.addEventListener(MouseEvent.CLICK,this._butHandler);
         this.bidstage.price1.ipriceButOK.addEventListener(MouseEvent.CLICK,this._butHandler);
         this.bidstage.price1.var_28.restrict = "0-9";
         this.bidstage.price1.var_245.restrict = "0-9";
         this.bidstage.price2.priceInputTxt1.restrict = "0-9";
         this.bidstage.price2.priceInputTxt2.restrict = "0-9";
         this.bidstage.price2.priceInputTxt1.tabIndex = 1;
         this.bidstage.price2.priceInputTxt2.tabIndex = 2;
         this.bidstage.price2.priceBut2.addEventListener(MouseEvent.CLICK,this._butHandler);
         this.bidstage.var_298.addEventListener(MouseEvent.CLICK,this.getSelfPriceInfoHandler);
      }
	  
      private final function method_293(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 9)
         {
            stage.stageFocusRect = false;
            this.bidstage.focusRect = false;
            stage.focus = this.bidstage.info;
         }
      }
      
      public final function changePrice2BidBtnPosition() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:int = Math.round(Math.random());
         if(_loc3_ == 0)
         {
            _loc1_ = int((Math.random() * 18.15 + 298.8) * 100) / 100;
            _loc2_ = int(Math.random() * 95.2 * 100) / 100;
         }
         else
         {
            _loc1_ = int((Math.random() * 325.25 - 7.3) * 100) / 100;
            _loc2_ = int((Math.random() * 7.15 + 134.2) * 100) / 100;
         }
         this.bidstage.price2.priceBut2.x = _loc1_;
         this.bidstage.price2.priceBut2.y = _loc2_;
      }
      
      public final function changePrice1BidBtnPosition() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:* = NaN;
         var _loc3_:int = Math.round(Math.random());
         if(_loc3_ == 0)
         {
            _loc1_ = int((Math.random() * 35 + 294.2) * 100) / 100;
            _loc2_ = 136.6;
         }
         else
         {
            _loc1_ = int((Math.random() * 225.95 + 103.25) * 100) / 100;
            _loc2_ = 181;
         }
         this.bidstage.price1.priceBut.x = _loc1_;
         this.bidstage.price1.priceBut.y = _loc2_;
      }
      
      public final function OpenLog(param1:MouseEvent) : void
      {
         class_27(class_4.method_3.method_5(class_27)).show();
      }
      
      public final function getSelfPriceInfoHandler(param1:MouseEvent) : void
      {
         var _loc2_:* = null;
         //if(this.var_224)
         {
            //setTimeout(this.clickCount1,6000);
            _loc2_ = new class_77();
            class_12.method_8(_loc2_);
            this.var_224 = false;
         }
         //else
         //{
         //   class_12.method_8(new class_34(9));
         //}
      }
      
      private final function clickCount1() : void
      {
         this.var_224 = true;
      }
      
      public final function _butHandler(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         switch(param1.target.name)
         {
            case "s300":
               if(this.lowestValue - 300 < 100)
               {
                  this.bidstage.price1.var_28.text = "100";
                  break;
               }
               this.bidstage.price1.var_28.text = String(this.lowestValue - 300);
               break;
            case "s200":
               if(this.lowestValue - 200 < 100)
               {
                  this.bidstage.price1.var_28.text = "100";
                  break;
               }
               this.bidstage.price1.var_28.text = String(this.lowestValue - 200);
               break;
            case "s100":
               if(this.lowestValue - 100 < 100)
               {
                  this.bidstage.price1.var_28.text = "100";
                  break;
               }
               this.bidstage.price1.var_28.text = String(this.lowestValue - 100);
               break;
            case "i300":
               this.bidstage.price1.var_28.text = String(this.lowestValue + 300);
               break;
            case "i200":
               this.bidstage.price1.var_28.text = String(this.lowestValue + 200);
               break;
            case "i100":
               this.bidstage.price1.var_28.text = String(this.lowestValue + 100);
               break;
            case "ipriceButOK":
               _loc2_ = int(this.bidstage.price1.var_245.text);
               if(_loc2_ % 100 != 0)
               {
                  _loc3_ = new class_34(2);
                  class_12.method_8(_loc3_);
                  break;
               }
               this.bidstage.price1.var_28.text = String(this.lowestValue + _loc2_);
               break;
            case "priceBut":
               if(this.bidcode == 3)
               {
                  _loc3_ = new class_34(7);
                  class_12.method_8(_loc3_);
                  break;
               }
               if(this.bidcode == 4)
               {
                  _loc3_ = new class_34(10);
                  class_12.method_8(_loc3_);
                  break;
               }
               if(this.bidcode == 5)
               {
                  _loc3_ = new class_34(11);
                  class_12.method_8(_loc3_);
                  break;
               }
               if(this.bidcode == 6)
               {
                  _loc3_ = new class_34(12);
                  class_12.method_8(_loc3_);
                  break;
               }
               if(this.bidstage.price1.var_28.text.length == 0)
               {
                  _loc3_ = new class_34(1);
                  class_12.method_8(_loc3_);
                  break;
               }
               if(int(this.bidstage.price1.var_28.text) % 100 != 0)
               {
                  _loc3_ = new class_34(2);
                  class_12.method_8(_loc3_);
                  break;
               }
			      
			   
               //if(this.var_139)
               {
                  //setTimeout(this.clickCount2,6000);
                  class_12.method_8(new PriceInfoWindowPart(int(this.bidstage.price1.var_28.text)));
                  this.var_139 = false;
                  break;
               }
               //class_12.method_8(new class_34(9));
               break;
            case "priceBut2":
               if(this.bidcode == 3)
               {
                  _loc3_ = new class_34(7);
                  class_12.method_8(_loc3_);
                  break;
               }
               if(this.bidcode == 4)
               {
                  _loc3_ = new class_34(10);
                  class_12.method_8(_loc3_);
                  break;
               }
               if(this.bidcode == 5)
               {
                  _loc3_ = new class_34(11);
                  class_12.method_8(_loc3_);
                  break;
               }
               if(this.bidcode == 6)
               {
                  _loc3_ = new class_34(12);
                  class_12.method_8(_loc3_);
                  break;
               }
               if(this.bidstage.price2.priceInputTxt1.text.length == 0 || this.bidstage.price2.priceInputTxt2.text.length == 0)
               {
                  _loc3_ = new class_34(1);
                  class_12.method_8(_loc3_);
                  break;
               }
               if(int(this.bidstage.price2.priceInputTxt1.text) % 100 != 0 || int(this.bidstage.price2.priceInputTxt2.text) % 100 != 0)
               {
                  _loc3_ = new class_34(2);
                  class_12.method_8(_loc3_);
                  break;
               }
               if(this.bidstage.price2.priceInputTxt1.text != this.bidstage.price2.priceInputTxt2.text)
               {
                  _loc3_ = new class_34(3);
                  class_12.method_8(_loc3_);
                  break;
               }
			   			   
			   
               //if(this.var_139)
               {
                  //setTimeout(this.clickCount2,6000);
                  class_12.method_8(new PriceInfoWindowPart(int(this.bidstage.price2.priceInputTxt1.text)));
                  this.var_139 = false;
                  break;
               }
               //class_12.method_8(new class_34(9));
               break;
         }
      }
      /**6秒后可以重新出价*/
      private final function clickCount2() : void
      {
         this.var_139 = true;
      }
      
      public final function setPriceInfo(param1:String) : void
      {
         this.bidstage.info.htmlText = "<font color=\'#FF0000\'>" + param1 + "</font>";
      }
   }
}
