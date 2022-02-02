package pocketmine.event;

import pocketmine.plugin.Plugin;
import haxe.extern.EitherType;

@:native("pocketmine\\event\\HandlerList")
extern class HandlerList {

	public function new(clazz: String, parentList: Null<HandlerList>): Void;

	/**
	 * @throws Exception
	 */
	public function register(listener: RegisteredListener): Void;

	public function registerAll(listeners: Array<RegisteredListener>): Void;

	public function unregister(object: EitherType<EitherType<RegisteredListener, Listener>, Plugin>): Void;

	public function clear(): Void;

	public function getListenersByPriority(priority: Int): Array<RegisteredListener>;

	public function getParent(): Null<HandlerList>;
}
