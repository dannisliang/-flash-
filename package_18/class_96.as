package package_18
{
   import flash.display.DisplayObject;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public final class class_96
   {
       
      private var var_10:DisplayObject = null;
      
      private var var_27:Number = 1;
      
      private var var_105:Boolean;
      
      private var var_106:Boolean;
      
      private var _x:Number = 0;
      
      private var _y:Number = 0;
      
      private var _width:Number = 0;
      
      private var _height:Number = 0;
      
      private var var_135:Boolean;
      
      public function class_96(param1:DisplayObject = null, param2:Boolean = false)
      {
         super();
         this.var_10 = param1;
         this.var_135 = param2;
      }
      
      public final function method_301() : BitmapData
      {
         var _loc4_:* = null;
         if(this.var_10 == null)
         {
            throw new Error("没有显示对象");
         }
         var _loc1_:Rectangle = this.var_10.getBounds(this.var_10.parent);
         var _loc2_:Number = this._width == 0?Number(this.var_10.width):Number(this._width);
         var _loc3_:Number = this._height == 0?Number(this.var_10.height):Number(this._height);
         _loc2_ = _loc2_ * this.var_27;
         _loc3_ = _loc3_ * this.var_27;
         var _loc9_:BitmapData = new BitmapData(_loc2_,_loc3_,true,0);
         if(this.var_135)
         {
            _loc4_ = new Matrix(1,0,0,1,this.var_10.x - _loc1_.x,this.var_10.y - _loc1_.y);
            _loc4_.scale(-1 * this.var_27,-1 * this.var_27);
            _loc4_.translate(0,0);
            _loc9_.draw(this.var_10,_loc4_);
         }
         else
         {
            _loc4_ = new Matrix(1,0,0,1,-this._x,-this._y);
            _loc4_.scale(-1 * this.var_27,-1 * this.var_27);
            _loc9_.draw(this.var_10,_loc4_);
         }
         return _loc9_;
      }
      
      public final function method_305(param1:DisplayObject) : BitmapData
      {
         this.var_10 = param1;
         return this.method_301();
      }
      
      public final function method_358(param1:Rectangle) : BitmapData
      {
         var _loc5_:* = null;
         if(this.var_10 == null)
         {
            throw new Error("没有显示对象");
         }
         var _loc2_:Rectangle = this.var_10.getBounds(this.var_10.parent);
         var _loc3_:Number = param1.width;
         var _loc4_:Number = param1.height;
         _loc3_ = _loc3_ * this.var_27;
         _loc4_ = _loc4_ * this.var_27;
         var _loc10_:BitmapData = new BitmapData(_loc3_,_loc4_,false,14934858);
         if(this.var_135)
         {
            _loc5_ = new Matrix(1,0,0,1,this.var_10.x - _loc2_.x,this.var_10.y - _loc2_.y);
            _loc5_.scale(-1 * this.var_27,-1 * this.var_27);
            _loc5_.translate(0,0);
            _loc10_.draw(this.var_10,_loc5_);
         }
         else
         {
            _loc5_ = new Matrix(1,0,0,1,-this._x,-this._y);
            _loc5_.scale(-1 * this.var_27,-1 * this.var_27);
            _loc10_.draw(this.var_10,_loc5_);
         }
         return _loc10_;
      }
      
      public final function method_353() : Vector.<BitmapData>
      {
         return class_86.method_316(this);
      }
      
      public function get method_253() : Number
      {
         return this.var_27;
      }
      
      public function set method_253(param1:Number) : void
      {
         this.var_27 = param1;
      }
      
      public function get horizontal() : Boolean
      {
         return this.var_105;
      }
      
      public function set horizontal(param1:Boolean) : void
      {
         this.var_105 = param1;
      }
      
      public function get vertical() : Boolean
      {
         return this.var_106;
      }
      
      public function set vertical(param1:Boolean) : void
      {
         this.var_106 = param1;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function get y() : Number
      {
         return this._y;
      }
      
      public function set y(param1:Number) : void
      {
         this._y = param1;
      }
      
      public function get width() : Number
      {
         return this._width;
      }
      
      public function set width(param1:Number) : void
      {
         this._width = param1;
      }
      
      public function get height() : Number
      {
         return this._height;
      }
      
      public function set height(param1:Number) : void
      {
         this._height = param1;
      }
      
      public function get method_263() : Boolean
      {
         return this.var_135;
      }
      
      public function set method_263(param1:Boolean) : void
      {
         this.var_135 = param1;
      }
      
      public function get target() : DisplayObject
      {
         return this.var_10;
      }
      
      public function set target(param1:DisplayObject) : void
      {
         this.var_10 = param1;
      }
   }
}
