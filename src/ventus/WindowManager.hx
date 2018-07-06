package ventus;


typedef CreateOptions = {
    @:optional var title: String;
    @:optional var classname: String;
    @:optional var width: Int;
    @:optional var height: Int;
    @:optional var x: Int;
    @:optional var y: Int;
    @:optional var opacity : Float;
    @:optional var resizable : Bool;
}

@:native("Ventus.WindowManager")
extern class WindowManager {

    public var mode : String;

    public function new();

    public function createWindow(options:CreateOptions) : Window;


    inline public function createWindowFromQuery(query:String, options: CreateOptions) : Window{
        var _this = this;
        return untyped __js__("_this.createWindow.fromQuery")(query, options);
    }
}