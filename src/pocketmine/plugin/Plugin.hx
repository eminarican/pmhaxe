package pocketmine.plugin;

import pocketmine.log.AttachableLogger;

@:native("pocketmine\\plugin\\Plugin")
extern interface Plugin {
	function isEnabled():Bool;

	/**
	 * Called by the plugin manager when the plugin is enabled or disabled to inform the plugin of its enabled state.
	 *
	 * @internal This is intended for core use only and should not be used by plugins
	 * @see PluginManager::enablePlugin()
	 * @see PluginManager::disablePlugin()
	 */
	function onEnableStateChange(enabled:Bool):Void;

	/**
	 * Gets the plugin's data folder to save files and configuration.
	 * This directory name has a trailing slash.
	 */
	function getDataFolder():String;

	// function getDescription(): PluginDescription;
	function getName():String;

	function getLogger():AttachableLogger;
	// function getPluginLoader(): PluginLoader;
	// function getScheduler(): TaskScheduler;
}
