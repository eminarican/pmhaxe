package pocketmine;

@:native("pocketmine\\ServerConfigGroup")
extern final class ServerConfigGroup {

	function getProperty(variable: String, defaultValue: Any = null): Any;

	function getPropertyBool(variable: String, defaultValue: Bool): Bool;

	function getPropertyInt(variable: String, defaultValue: Int): Int;

	function getPropertyString(variable: String, defaultValue: String): String;

	function getConfigString(variable: String, defaultValue: String = ""): String;

	function setConfigString(variable: String, value: String): Void;

	function getConfigInt(variable: String, defaultValue: Int = 0): Int;

	function setConfigInt(variable: String, value: Int): Void;

	function getConfigBool(variable: String, defaultValue: Bool = false): Bool;

	function setConfigBool(variable: String, value: Bool): Void;

    function save(): Void;
}
