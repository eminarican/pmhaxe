package pocketmine.plugin;

import pocketmine.event.Event;
import pocketmine.event.Listener;

/**
 * Manages all the plugins
 */
@:native("pocketmine\\plugin\\PluginManager")
extern class PluginManager {

	// public function new(server:Server, pluginDataDirectory: Null<String>, graylist: Null<PluginGraylist>): Void;
	public function getPlugin(name: String): Null<Plugin>;

	// public function registerInterface(loader:PluginLoader): Void;
	public function getPlugins(): Array<Plugin>;

	public function loadPlugins(path: String): Array<Plugin>;

	public function isPluginEnabled(plugin: Plugin): Bool;

	public function disablePlugins(): Void;

	public function disablePlugin(plugin: Plugin): Void;

	public function tickSchedulers(currentTick: Int): Void;

	public function clearPlugins(): Void;

	/**
	 * Returns whether the given ReflectionMethod could be used as an event handler. Used to filter methods on Listeners
	 * when registering.
	 * Note: This DOES NOT validate the listener annotations; if this method returns false, the method will be ignored
	 * completely. Invalid annotations on candidate listener methods should result in an error, so those aren't checked
	 * here.
	 */
	private function getEventsHandledBy(): Null<String>;

	/**
	 * Registers all the events in the given Listener class
	 * @throws PluginException
	 */
	public function registerEvents(listener: Listener, plugin: Plugin): Void;

	/**
	 * @param event Class name that extends Event
	 * @throws ReflectionException
	 */
	public function registerEvent(event: String, handler: (Event) -> Void, priority: Int, plugin: Plugin, handleCancelled: Bool = false): Void;
}
