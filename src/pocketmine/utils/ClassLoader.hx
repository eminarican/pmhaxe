package pocketmine.utils;

@:native("ClassLoader")
extern interface ClassLoader {

	/**
	 * Attaches the ClassLoader to the PHP runtime
	 */
	function register(prepend: Bool = false): Bool;
}
