package package_3
{
   import flash.utils.Dictionary;
   
   public final class DirectEventScope
   {
       
      private var var_98:Dictionary;
      
      public function DirectEventScope()
      {
         super();
         this.var_98 = new Dictionary();
      }
      
      public final function add(param1:String) : void
      {
         if(this.var_98[param1] == null)
         {
            this.var_98[param1] = new DirectEventScopePool();
         }
      }
      
      public final function method_370(param1:String) : Boolean
      {
         return this.var_98[param1] != null;
      }
      
      public final function method_40(param1:String) : DirectEventScopePool
      {
         return DirectEventScopePool(this.var_98[param1]);
      }
      
      public final function method_20(param1:String) : void
      {
         delete this.var_98[param1];
      }
   }
}

class DirectEventScopePool
{
    
   private var _listenerPool:DirectEventScopeModel;
   
   private var _destroyPool:DirectEventScopeModel;
   
   function DirectEventScopePool()
   {
      super();
      this._listenerPool = new DirectEventScopeModel();
      this._destroyPool = new DirectEventScopeModel();
   }
   
   public function get listenerPool() : DirectEventScopeModel
   {
      return this._listenerPool;
   }
   
   public function get destroyPool() : DirectEventScopeModel
   {
      return this._destroyPool;
   }
}

class DirectEventScopeModel
{
    
   private var _eventName:Vector.<String>;
   
   private var _eventAction:Array;
   
   function DirectEventScopeModel()
   {
      super();
      this._eventName = new Vector.<String>();
      this._eventAction = new Array();
   }
   
   public function get EventName() : Vector.<String>
   {
      return this._eventName;
   }
   
   public function get EventAction() : Array
   {
      return this._eventAction;
   }
}
