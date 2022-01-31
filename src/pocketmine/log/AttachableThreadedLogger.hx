package pocketmine.log;

@:native("AttachableThreadedLogger")
extern abstract class AttachableThreadedLogger extends ThreadedLogger {

	public function addAttachment(attachment: LoggerAttachment): Void;

	public function removeAttachment(attachment: LoggerAttachment): Void;

	public function removeAttachments(): Void;

	public function getAttachments(): Array<LoggerAttachment>;
}
