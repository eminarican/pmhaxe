package pocketmine.log;

import php.TypedArray;
import php.Throwable;

@:native("PrefixedLogger")
extern class SimpleLogger implements Logger {
    
	function emergency(message: String): Void;

	function alert(message: String): Void;

	function critical(message: String): Void;

	function error(message: String): Void;

	function warning(message: String): Void;

	function notice(message: String): Void;

	function info(message: String): Void;

	function debug(message: String): Void;

	function log(level: Any, message: String): Void;
    
	function logException(e: Throwable, trace: Null<Array<TypedArray<String, Any>>> = null): Void;
}
