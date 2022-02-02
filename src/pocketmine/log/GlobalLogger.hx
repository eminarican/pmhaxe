package pocketmine.log;

@:native("GlobalLogger")
extern final class GlobalLogger {
	private function new():Void;

	static function get():Logger;

	static function set(logger:Logger):Void;
}
