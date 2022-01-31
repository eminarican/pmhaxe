package pocketmine.log;

import php.Closure;

@:native("BufferedLogger")
extern interface BufferedLogger extends Logger {

	/**
	 * Buffers log messages while the closure is executed, and then flushes the buffer.
	 * This is typically used to log blocks of messages on concurrent loggers.
	 */
	public function buffer(buffered: Closure): Void;
}
