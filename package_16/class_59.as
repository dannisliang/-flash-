package package_16
{
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   import package_14.BitmapBatchEvent;
   
   public final class class_59
   {
       
      private var var_182:Vector.<package_16.BitmapBatch>;
      
      private var var_184:Vector.<Stage>;
      
      private var var_24:package_16.BitmapBatch;
      
      public function class_59()
      {
         super();
         this.var_182 = new Vector.<package_16.BitmapBatch>();
         this.var_184 = new Vector.<Stage>();
      }
      
      public final function add(param1:package_16.BitmapBatch) : void
      {
         this.var_182.push(param1);
         if(this.var_184.indexOf(param1.stage) == -1)
         {
            this.var_184.push(param1.stage);
            param1.stage.addEventListener(MouseEvent.CLICK,this.method_333);
            param1.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.method_270);
            param1.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.method_311);
         }
      }
      
      private final function method_311(param1:MouseEvent) : void
      {
         var _loc2_:* = null;
         var _loc7_:* = null;
         var _loc3_:Stage = param1.target.stage;
         var _loc4_:Point = new Point(_loc3_.mouseX,_loc3_.mouseY);
         var _loc5_:Array = _loc3_.getObjectsUnderPoint(_loc4_);
         _loc5_.reverse();
         if(_loc5_.length == 0 && this.var_24 != null)
         {
            _loc2_ = new BitmapBatchEvent(BitmapBatchEvent.const_156);
            this.var_24.dispatchEvent(_loc2_);
            if(this.var_24.method_76 != null)
            {
               this.var_24.method_76(this.var_24);
            }
            this.var_24 = null;
         }
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_.length)
         {
            if(_loc5_[_loc6_] is package_16.BitmapBatch)
            {
               _loc7_ = BitmapBatch(_loc5_[_loc6_]);
               if(this.var_24 == _loc7_ && !_loc7_.IsHitMouse)
               {
                  _loc2_ = new BitmapBatchEvent(BitmapBatchEvent.const_156);
                  this.var_24.dispatchEvent(_loc2_);
                  if(this.var_24.method_76 != null)
                  {
                     this.var_24.method_76(this.var_24);
                  }
                  this.var_24 = null;
                  return;
               }
               if(_loc7_.IsHitMouse)
               {
                  if(this.var_24 != _loc7_)
                  {
                     this.var_24 = _loc7_;
                     _loc2_ = new BitmapBatchEvent(BitmapBatchEvent.const_199);
                     _loc7_.dispatchEvent(_loc2_);
                     if(_loc7_.method_139 != null)
                     {
                        _loc7_.method_139(_loc7_);
                     }
                  }
                  return;
               }
            }
            _loc6_++;
         }
      }
      
      private final function method_333(param1:MouseEvent) : void
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc2_:Stage = param1.target.stage;
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:Point = new Point(_loc2_.mouseX,_loc2_.mouseY);
         var _loc4_:Array = _loc2_.getObjectsUnderPoint(_loc3_);
         _loc4_.reverse();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length)
         {
            if(_loc4_[_loc5_] is package_16.BitmapBatch && Boolean(_loc4_[_loc5_].IsHitMouse))
            {
               _loc6_ = new BitmapBatchEvent(BitmapBatchEvent.const_171);
               _loc7_ = BitmapBatch(_loc4_[_loc5_]);
               _loc7_.dispatchEvent(_loc6_);
               if(_loc7_.method_129 != null)
               {
                  _loc7_.method_129(_loc7_);
               }
               if(_loc7_.method_137 != null)
               {
                  _loc7_.method_137(_loc7_);
                  break;
               }
               break;
            }
            _loc5_++;
         }
      }
      
      private final function method_270(param1:MouseEvent) : void
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc2_:Stage = param1.target.stage;
         var _loc3_:Point = new Point(_loc2_.mouseX,_loc2_.mouseY);
         var _loc4_:Array = _loc2_.getObjectsUnderPoint(_loc3_);
         _loc4_.reverse();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length)
         {
            if(_loc4_[_loc5_] is package_16.BitmapBatch && Boolean(_loc4_[_loc5_].IsHitMouse))
            {
               _loc6_ = BitmapBatch(_loc4_[_loc5_]);
               _loc7_ = new BitmapBatchEvent(BitmapBatchEvent.const_177);
               _loc6_.dispatchEvent(_loc7_);
               if(_loc6_.method_131 != null)
               {
                  _loc6_.method_131(_loc6_);
               }
               return;
            }
            _loc5_++;
         }
      }
      
      public final function method_20(param1:package_16.BitmapBatch) : void
      {
         var _loc2_:int = this.var_182.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.var_182.splice(_loc2_,1);
         }
      }
   }
}
