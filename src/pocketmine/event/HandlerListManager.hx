package pocketmine.event;

import php.reflection.ReflectionClass;
import pocketmine.plugin.Plugin;
import haxe.extern.EitherType;

@:native("pocketmine\\event\\HandlerListManager")
extern class HandlerListManager {
	static function global():HandlerListManager;

	/**
	 * Unregisters all the listeners
	 * If a Plugin or Listener is passed, all the listeners with that object will be removed
	 */
	public function unregisterAll(object:Null<EitherType<Plugin, EitherType<Listener, RegisteredListener>>> = null):Void;

	private static function isValidClass(clazz:ReflectionClass):Bool;

	/**
	 * @phpstan-param \ReflectionClass<Event> $class
	 *
	 * @phpstan-return \ReflectionClass<Event>|null
	 */
	private static function resolveNearestHandleableParent(clazz:ReflectionClass):Null<ReflectionClass>;

	/**
	 * Returns the HandlerList for listeners that explicitly handle this event.
	 *
	 * Calling this method also lazily initializes the $classMap inheritance tree of handler lists.
	 *
	 * @throws ReflectionException
	 * @throws InvalidArgumentException
	 */
	public function getListFor(event:String):HandlerList;

	public function getAll():Array<HandlerList>;
}
