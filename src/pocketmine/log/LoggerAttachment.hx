package pocketmine.log;

@:native("LoggerAttachment")
extern interface LoggerAttachment {

	function log(level: Any, message: Void): Void;
}
