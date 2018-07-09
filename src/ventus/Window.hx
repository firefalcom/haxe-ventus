package ventus;

@:native("Ventus.Window")
extern class Window {

    public var signals : Emitter;
    public var resizable : Bool;
    public var closed : Bool;
    public var destroyed : Bool;
    public var x : Float;
    public var y : Float;
    public var z : Int;

    public function open():Promise;
    public function close():Promise;
    public function destroy():Void;
    public function resize(w:Int, h:Int):Window;
    public function move(x:Int, y:Int):Window;
    public function maximize():Window;
    public function minimize():Window;
    public function focus():Window;
    public function blur():Window;

    public function toLocal(a: {var x:Float; var y:Float;}) : {var x:Float; var y:Float;};
    public function toGlobal(a: {var x:Float; var y:Float;}) : {var x:Float; var y:Float;};

    public function append(e:js.html.Element):Void;
}