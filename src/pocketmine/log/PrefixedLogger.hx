package pocketmine.log;

import php.TypedArray;
import php.Throwable;

@:native("PrefixedLogger")
extern class PrefixedLogger extends SimpleLogger {

	function new(delegate: Logger, prefix: String): Void;

	function log(level: Any, message: String): Void;

	function logException(e: Throwable, trace: Null<Array<TypedArray<String, Any>>> = null): Void;

	function getPrefix(): String;

	function setPrefix(prefix: String): Void;
}
