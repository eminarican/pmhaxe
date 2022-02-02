package pocketmine;

import pocketmine.utils.VersionString;

@:native("pocketmine\\VersionInfo")
extern final class VersionInfo {

	static function GIT_HASH(): String;

	static function BUILD_NUMBER(): Int;

	static function VERSION(): VersionString;
}
