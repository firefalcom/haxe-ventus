package ventus;


typedef CreateOptions = {
    @:optional var title: String;
    @:optional var classname: String;
    @:optional var width: Int;
    @:optional var height: Int;
    @:optional var x: Int;
    @:optional var y: Int;
    @:optional var content : String;
    @:optional var opacity : Float;
    @:optional var resizable : Bool;
    @:optional var movable : Bool;
    @:optional var widget : Bool;
    @:optional var titlebar : Bool;
    @:optional var animations : Bool;
    @:optional var stayinspace : Bool;
}

@:native("Ventus.WindowManager")
extern class WindowManager {

    public var mode : String;

    public function new(?container:haxe.extern.EitherType<String, js.html.HtmlElement>);

    public function createWindow(options:CreateOptions) : Window;


    inline public function createWindowFromQuery(query:String, options: CreateOptions) : Window {
        var _this = this;
        return untyped __js__("_this.createWindow.fromQuery")(query, options);
    }
}