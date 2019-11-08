package view
{
   import ws.class_26;
   import package_8.class_24;
   import zebra.class_4;
   import flash.events.MouseEvent;
   import flash.net.FileReference;
   import package_1.class_9;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import package_2.class_13;
   import flash.net.URLRequestMethod;
   import flash.events.Event;
   import flash.utils.setTimeout;
   import flash.utils.Dictionary;
   import package_14.BitmapBatchEvent;
   
   public final class class_27 extends class_26
   {
       
      private var var_278:class_24;
      
      private var var_124:String = "";
      
      public function class_27()
      {
         super();
         class_4.method_3.method_212(this);
         var_289.addEventListener(MouseEvent.CLICK,this.closeHandler);
         var_41.addEventListener(MouseEvent.CLICK,this.method_313);
         var_51.addEventListener(MouseEvent.CLICK,this.method_296);
         this.hide();
      }
      
      private final function method_399() : void
      {
         this.var_278 = class_14(class_4.method_3.method_5(class_14)).socketControl.socket;
         this.var_278.receive("3-2",this.method_303);
      }
      
      private final function method_313(param1:MouseEvent) : void
      {
         var _loc2_:FileReference = new FileReference();
         _loc2_.save(var_268.text);
      }
      
      private final function closeHandler(param1:MouseEvent) : void
      {
         this.visible = false;
      }
      
      private final function method_296(param1:MouseEvent) : void
      {
         var loader:URLLoader = null;
         var e:MouseEvent = param1;
         var webParamModel:class_9 = class_9(class_4.method_3.method_16(class_9));
         var httpUrl:String = "http://" + webParamModel.var_220 + "/lc/LogCollect.svc/WebCmd?p=" + Math.random();
         var uniqueid:String = class_13.create().toLowerCase();
         loader = new URLLoader();
         var temp:String = this.var_124;
         temp = temp.split("\"").join("\\\"").split("\\n").join("+");
         var request:URLRequest = new URLRequest(httpUrl);
         request.method = URLRequestMethod.POST;
         var test:String = escape(temp);
         request.data = "{\"cmd\":\"" + escape(temp) + "\"}";
         request.contentType = "application/json";
         loader.addEventListener(Event.COMPLETE,function getHttpContentHandler(param1:Event):void
         {
            var _loc2_:String = String(loader.data);
         });
         loader.load(request);
      }
      
      private final function method_303() : void
      {
         var _loc1_:* = setTimeout(this.method_290,7000);
      }
      
      private final function method_290(param1:*) : void
      {
         var loader:URLLoader = null;
         var e:* = param1;
         var webParamModel:class_9 = class_9(class_4.method_3.method_16(class_9));
         var httpUrl:String = "http://" + webParamModel.var_220 + "/lc/LogCollect.svc/WebCmd?p=" + Math.random();
         var uniqueid:String = class_13.create().toLowerCase();
         loader = new URLLoader();
         var temp:String = this.var_124;
         temp = temp.split("\"").join("\\\"").split("\\n").join("+");
         var request:URLRequest = new URLRequest(httpUrl);
         request.method = URLRequestMethod.POST;
         var test:String = escape(temp);
         request.data = "{\"cmd\":\"" + escape(temp) + "\"}";
         request.contentType = "application/json";
         loader.addEventListener(Event.COMPLETE,function getHttpContentHandler(param1:Event):void
         {
            var _loc2_:String = String(loader.data);
         });
         loader.load(request);
      }
      
      public final function show() : void
      {
         this.visible = true;
      }
      
      public final function hide() : void
      {
         this.visible = false;
      }
      
      public final function info(param1:String) : void
      {
         this.var_124 = this.var_124 + (param1 + "\n");
         var_268.text = this.var_124;
      }
   }
}
