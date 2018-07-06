package ventus;

@:native("Ventus.Window")
extern class Window{

    var signals : Emitter;

    public function open():Void;
}