package pocketmine.event;

/**
 * This interface is implemented by an Event subclass if and only if it can be cancelled.
 *
 * The cancellation of an event directly affects whether downstream event handlers
 * without `@handleCancelled` will be called with this event.
 * Implementations may provide a direct setter for cancellation (typically by using `CancellableTrait`)
 * or implement an alternative logic (such as a function on another data field) for `isCancelled()`.
 */
@:native("pocketmine\\event\\Cancellable")
extern interface Cancellable {
	/**
	 * Returns whether this instance of the event is currently cancelled.
	 *
	 * If it is cancelled, only downstream handlers that declare `@handleCancelled` will be called with this event.
	 */
	public function isCancelled():Bool;
}
