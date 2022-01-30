package pocketmine.plugin;

import php.TypedArray;
import php.files.SplFileInfo;
import php.Resource;

@:native("pocketmine\\plugin\\PluginBase")
extern abstract class PluginBase implements Plugin {

    @:protected function onLoad(): Void;

	/**
	 * Called when the plugin is enabled
	 */
     @:protected function onEnable(): Void;

	/**
	 * Called when the plugin is disabled
	 * Use this to free open things and finish actions
	 */
     @:protected function onDisable(): Void;

	final function isEnabled(): Bool;

	/**
	 * Called by the plugin manager when the plugin is enabled or disabled to inform the plugin of its enabled state.
	 *
	 * @Internal This is Intended for core use only and should not be used by plugins
	 * @see PluginManager::enablePlugin()
	 * @see PluginManager::disablePlugin()
	 */
	final function onEnableStateChange(enabled: Bool): Void;

	final function isDisabled(): Bool;

	final function getDataFolder(): String;

	final function getDescription(): PluginDescription;

	//function getLogger(): AttachableLogger;

	//function getCommand(name: String): Null<EitherType<Command, PluginOwned>>;

	//function onCommand(sender: CommandSender, command: Command, label: String, args: Array<String>): Bool;

	/**
	 * Gets an embedded resource on the plugin file.
	 * WARNING: You must close the resource given using fclose()
	 */
	function getResource(filename: String): Null<Resource>;

	/**
	 * Saves an embedded resource to its relative location in the data folder
	 */
	function saveResource(filename: String, replace: Bool = false): Bool;

	/**
	 * Returns all the resources packaged with the plugin in the form ["path/in/resources" => SplFileInfo]
	 */
	function getResources(): TypedArray<String, SplFileInfo>;

	//function getConfig(): Config;

	function saveConfig(): Void;

	function saveDefaultConfig(): Bool;

	function reloadConfig(): Void;

	final function getServer(): Server;

	final function getName(): String;

	final function getFullName(): String;

	@:protected function getFile(): String;

	//function getPluginLoader(): PluginLoader;

	//function getScheduler(): TaskScheduler;
}
