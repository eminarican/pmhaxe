package pocketmine.plugin;

import php.TypedArray;

@:native("pocketmine\\plugin\\PluginDescription")
extern class PluginDescription {
    
    function getFullName(): String;

	function getCompatibleApis(): Array<String>;

	function getCompatibleMcpeProtocols(): Array<Int>;

	function getCompatibleOperatingSystems(): Array<String>;

	function getAuthors(): Array<String>;

	function getPrefix(): String;

	//function getCommands(): Array<PluginDescriptionCommandEntry>;

	function getRequiredExtensions(): Array<Array<String>>;

	function getDepend(): Array<String>;

	function getDescription(): String;

	function getLoadBefore(): Array<String>;

	function getMain(): String;

	function getSrcNamespacePrefix(): String;

	function getName(): String;

	//function getOrder(): PluginEnableOrder;

	//function getPermissions(): Array<TypedArray<String, Permission>>;

	function getSoftDepend(): Array<String>;

	function getVersion(): String;

	function getWebsite(): String;

	function getMap(): TypedArray<String, Any>;
}
