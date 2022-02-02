package pocketmine.utils;

import php.pthreads.Threaded;

@:native("BaseClassLoader")
extern class BaseClassLoader extends Threaded implements DynamicClassLoader {
	@:protected function normalizePath(path:String):String;

	function addPath(namespacePrefix:String, path:String, prepend:Bool = false):Void;

	// @:protected function appendOrPrependLookupEntry(list: Threaded, entry: String, prepend: Bool): Void;
	// @:protected function getAndRemoveLookupEntries(list: Threaded): Array<Any>;
	function register(prepend:Bool = false):Bool;

	/**
	 * Called when there is a class to load
	 */
	function loadClass(name:String):Bool;

	/**
	 * Returns the path for the class, if any
	 */
	function findClass(name:String):Null<String>;
}
