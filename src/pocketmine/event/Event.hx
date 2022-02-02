package pocketmine.event;

@:native("pocketmine\\event\\Event")
extern abstract class Event {
	final function getEventName():String;

	/**
	 * Calls event handlers registered for this event.
	 *
	 * @throws RuntimeException if event call recursion reaches the max depth limit
	 */
	function call():Void;
}
