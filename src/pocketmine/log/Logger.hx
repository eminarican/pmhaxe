package pocketmine.log;

import php.Throwable;
import php.TypedArray;

@:native("Logger")
extern interface Logger {

	/**
	 * System is unusable
	 */
	function emergency(message: String): Void;

	/**
	 * Action must be taken immediately
	 */
	function alert(message: String): Void;

	/**
	 * Critical conditions
	 */
	function critical(message: String): Void;

	/**
	 * Runtime errors that do not require immediate action but should typically
	 * be logged and monitored.
	 */
	function error(message: String): Void;

	/**
	 * Exceptional occurrences that are not errors.
	 *
	 * Example: Use of deprecated APIs, poor use of an API, undesirable things
	 * that are not necessarily wrong.
	 */
	function warning(message: String): Void;

	/**
	 * Normal but significant events.
	 */
	function notice(message: String): Void;

	/**
	 * Interesting events.
	 */
	function info(message: String): Void;

	/**
	 * Detailed debug information.
	 */
	function debug(message: String): Void;

	/**
	 * Logs with an arbitrary level.
	 */
	function log(level: Any, message: String): Void;

	/**
	 * Logs a Throwable object
	 */
	function logException(e: Throwable, trace: Null<Array<TypedArray<String, Any>>> = null): Void;
}
