package pocketmine.event;

import pocketmine.plugin.Plugin;
import php.Closure;

@:native("pocketmine\\event\\RegisteredListener")
extern class RegisteredListener {

	// public function new(handler: Closure, priority: Int, plugin: Plugin, handleCancelled: Bool, timings: TimingsHandler): Void;
	public function getHandler(): Closure;

	public function getPlugin(): Plugin;

	public function getPriority(): Int;

	public function callEvent(event: Event): Void;

	public function isHandlingCancelled(): Bool;
}
