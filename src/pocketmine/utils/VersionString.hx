package pocketmine.utils;

@:native("pocketmine\\utils\\VersionString")
extern class VersionString {

	static function isValidBaseVersion(baseVersion: String): Bool;

	function getNumber(): Int;

	function getBaseVersion(): String;

	function getFullVersion(build: Bool = false): String;

	function getMajor(): Int;

	function getMinor(): Int;

	function getPatch(): Int;

	function getSuffix(): String;

	function getBuild(): Int;

	function isDev(): Bool;

	function __toString(): String;

	function compare(target: VersionString, diff: Bool = false): Int;
}
