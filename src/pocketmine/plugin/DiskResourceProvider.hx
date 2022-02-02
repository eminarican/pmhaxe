package pocketmine.plugin;

import php.Resource;
import php.TypedArray;
import php.files.SplFileInfo;

@:native("pocketmine\\plugin\\DiskResourceProvider")
extern class DiskResourceProvider implements ResourceProvider {

	function new(path: String): Void;

	/**
	 * Gets an embedded resource on the plugin file.
	 * WARNING: You must close the resource given using fclose()
	 */
	function getResource(filename: String): Null<Resource>;

	/**
	 * Returns all the resources packaged with the plugin in the form ["path/in/resources" => SplFileInfo]
	 */
	function getResources(): TypedArray<String, SplFileInfo>;

}
