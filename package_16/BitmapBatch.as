package package_16
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   
   import package_14.BitmapBatchEvent;
   
   import package_18.class_86;
   
   import zebra.class_4;
   
   public final class BitmapBatch extends Bitmap implements class_80
   {
       
      protected var var_262:Function;
      
      protected var var_260:Function;
      
      protected var var_279:Function;
      
      protected var var_274:Function;
      
      protected var var_272:Function;
      
      private var var_215:Boolean;
      
      private var var_104:Boolean;
      
      private var var_117:Boolean;
      
      private var var_250:Boolean;
      
      private var var_96:BitmapBatchTaskAction;
      
      private var var_21:int = 0;
      
      private var var_49:Vector.<BitmapData>;
      
      private var var_115:int;
      
      private var var_146:Boolean;
      
      private var var_128:String;
      
      private var var_181:Number;
      
      private var var_170:Number;
      
      public function BitmapBatch(param1:Vector.<BitmapData> = null, param2:String = "none")
      {
         var _loc3_:* = null;
         super();
         if(param1 == null)
         {
            param1 = new Vector.<BitmapData>();
            _loc3_ = new BitmapData(1,1,true);
            param1.push(_loc3_);
         }
         this.var_49 = param1;
         this.var_146 = true;
         this.var_104 = false;
         this.var_128 = param2;
         this.var_181 = 0;
         this.var_170 = 0;
         this.var_115 = 24;
         this.bitmapData == this.var_49[0];
         addEventListener(Event.ADDED_TO_STAGE,this.method_342);
         addEventListener(Event.REMOVED_FROM_STAGE,this.method_329);
      }
      
      private final function method_329(param1:Event) : void
      {
         class_4.method_39.method_187.method_20(this);
      }
      
      private final function method_342(param1:Event) : void
      {
         class_4.method_39.method_187.add(this);
      }
      
      public function get IsHitMouse() : Boolean
      {
         if(this.var_215)
         {
            return false;
         }
         return class_86.method_261(this);
      }
      
      public final function method_157(param1:DisplayObject) : Point
      {
         return this.parent.localToGlobal(new Point(this.x,this.y));
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         super.bitmapData = param1;
         this.method_168();
      }
      
      public function get totalframes() : int
      {
         return this.var_49.length;
      }
      
      public function get currentFrame() : int
      {
         return this.var_21;
      }
      
      public function set currentFrame(param1:int) : void
      {
         if(param1 < 0)
         {
            this.var_21 = 0;
         }
         if(param1 >= this.totalframes)
         {
            this.var_21 = this.totalframes - 1;
         }
         this.bitmapData = this.var_49[this.var_21];
      }
      
      public function get IsStart() : Boolean
      {
         return this.var_250;
      }
      
      public function get loop() : Boolean
      {
         return this.var_146;
      }
      
      public function set loop(param1:Boolean) : void
      {
         this.var_146 = param1;
      }
      
      public final function method_280() : void
      {
         if(!this.var_117 && !this.var_104)
         {
            if(this.var_146)
            {
               this.bitmapData = this.var_49[this.var_21];
               this.var_21++;
               this.var_21 = this.var_21 == this.totalframes?0:int(this.var_21);
            }
            else if(this.var_21 != this.totalframes - 1)
            {
               this.bitmapData = this.var_49[this.var_21];
               this.var_21++;
            }
         }
      }
      
      public function play(param1:String = "") : void
      {
         this.bitmapData = this.var_49[this.var_21];
         this.var_250 = true;
         this.var_104 = false;
         this.var_117 = false;
         this.fps = this.var_115;
      }
      
      public function method_361() : void
      {
         this.var_117 = !this.var_117;
      }
      
      public function stop() : void
      {
         this.var_117 = true;
      }
      
      public function get method_222() : Boolean
      {
         return this.var_104;
      }
      
      public function get fps() : int
      {
         return this.var_115;
      }
      
      public function set fps(param1:int) : void
      {
         this.var_115 = param1;
         if(this.totalframes > 1)
         {
            if(this.var_96 != null)
            {
               class_4.method_27.method_53(this.var_96);
            }
            this.var_96 = new BitmapBatchTaskAction(this);
            class_4.method_27.method_57(this.var_96,1000 / this.var_115);
         }
      }
      
      public function get BitmapDataSource() : Vector.<BitmapData>
      {
         return this.var_49;
      }
      
      public function set BitmapDataSource(param1:Vector.<BitmapData>) : void
      {
         this.var_49 = param1;
         this.currentFrame = 0;
      }
      
      public function get align() : String
      {
         return this.var_128;
      }
      
      public function set align(param1:String) : void
      {
         this.var_128 = param1;
         this.method_168();
      }
      
      public function get method_249() : Number
      {
         return this.var_181;
      }
      
      public function set method_249(param1:Number) : void
      {
         this.var_181 = param1;
      }
      
      public function get method_271() : Number
      {
         return this.var_170;
      }
      
      public function set method_271(param1:Number) : void
      {
         this.var_170 = param1;
      }
      
      public function get method_137() : Function
      {
         return this.var_260;
      }
      
      public function set method_137(param1:Function) : void
      {
         this.var_260 = param1;
      }
      
      public function get method_139() : Function
      {
         return this.var_279;
      }
      
      public function set method_139(param1:Function) : void
      {
         this.var_279 = param1;
      }
      
      public function get method_76() : Function
      {
         return this.var_272;
      }
      
      public function set method_76(param1:Function) : void
      {
         this.var_272 = param1;
      }
      
      public function get method_268() : Boolean
      {
         return this.var_215;
      }
      
      public function set method_268(param1:Boolean) : void
      {
         this.var_215 = param1;
      }
      
      public function get method_131() : Function
      {
         return this.var_274;
      }
      
      public function set method_131(param1:Function) : void
      {
         this.var_274 = param1;
      }
      
      public function get method_129() : Function
      {
         return this.var_262;
      }
      
      public function set method_129(param1:Function) : void
      {
         this.var_262 = param1;
      }
      
      private final function method_168() : void
      {
         if(this.bitmapData == null)
         {
            return;
         }
         switch(this.var_128.toLocaleUpperCase())
         {
            case "NONE":
               break;
            case "LT":
               this.x = 0;
               this.y = 0;
               break;
            case "CT":
               this.x = this.bitmapData.width / 2 * -1;
               this.y = 0;
               break;
            case "RT":
               this.x = this.bitmapData.width * -1;
               this.y = 0;
               break;
            case "TL":
               this.x = 0;
               this.y = 0;
               break;
            case "TC":
               this.x = this.bitmapData.width / 2 * -1;
               this.y = 0;
               break;
            case "TR":
               this.x = this.bitmapData.width * -1;
               this.y = 0;
               break;
            case "CL":
               this.x = 0;
               this.y = this.bitmapData.height / 2 * -1;
               break;
            case "LC":
               this.x = 0;
               this.y = this.bitmapData.height / 2 * -1;
               break;
            case "CC":
               this.x = this.bitmapData.width / 2 * -1;
               this.y = this.bitmapData.height / 2 * -1;
               break;
            case "CR":
               this.x = this.bitmapData.width * -1;
               this.y = this.bitmapData.height / 2 * -1;
               break;
            case "RC":
               this.x = this.bitmapData.width * -1;
               this.y = this.bitmapData.height / 2 * -1;
               break;
            case "BL":
               this.x = 0;
               this.y = this.bitmapData.height * -1;
               break;
            case "LB":
               this.x = 0;
               this.y = this.bitmapData.height * -1;
               break;
            case "BC":
               this.x = this.bitmapData.width / 2 * -1;
               this.y = this.bitmapData.height * -1;
               break;
            case "CB":
               this.x = this.bitmapData.width / 2 * -1;
               this.y = this.bitmapData.height * -1;
               break;
            case "BR":
               this.x = this.bitmapData.width * -1;
               this.y = this.bitmapData.height * -1;
               break;
            case "RB":
               this.x = this.bitmapData.width * -1;
               this.y = this.bitmapData.height * -1;
         }
         this.x = this.x + this.var_181;
         this.y = this.y + this.var_170;
      }
      
      public final function clone() : BitmapBatch
      {
         return new BitmapBatch(this.var_49,this.var_128);
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(!this.var_104)
         {
            this.var_104 = true;
            _loc1_ = new BitmapBatchEvent(BitmapBatchEvent.const_99);
            dispatchEvent(_loc1_);
            this.bitmapData = null;
            if(this.var_96 != null)
            {
               class_4.method_27.method_53(this.var_96);
            }
         }
      }
   }
}

import package_11.class_46;

import package_16.BitmapBatch;

class BitmapBatchTaskAction extends class_46
{
    
   private var _bitmapBatch:BitmapBatch;
   
   function BitmapBatchTaskAction(param1:BitmapBatch)
   {
      super();
      this._bitmapBatch = param1;
   }
   
   override public function execute() : void
   {
      super.execute();
      if(this._bitmapBatch != null && Boolean(this._bitmapBatch.IsStart))
      {
         this._bitmapBatch.method_280();
      }
   }
}
