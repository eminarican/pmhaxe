package pocketmine.log;

import php.Closure;

@:native("AttachableLogger")
extern interface AttachableLogger extends Logger {

	public function addAttachment(attachment: Closure): Void;

	public function removeAttachment(attachment: Closure): Void;

	public function removeAttachments(): Void;

	public function getAttachments(): Array<Closure>;
}
