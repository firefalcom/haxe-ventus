package ventus;

@:native('Ventus.Emitter')
extern class Emitter{

    public function listenersCount(signal:String):Int;
    public function on(signal:String, slot : Window->Void, ?scope:Dynamic):Void;
    public function off(signal:String, slot: Window->Void, ?scope:Dynamic):Void;
    public function once(signal:String, slot: Window->Void, ?scope:Dynamic):Void;
    public function emit(signal:String): Void;
    public function connect(slots:Window->Void, ?scope:Dynamic):Void;
    public function disconnect(slots:Window->Void, ?scope:Dynamic) :Void;
}
