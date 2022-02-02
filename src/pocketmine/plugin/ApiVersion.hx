package pocketmine.plugin;

@:native("pocketmine\\plugin\\ApiVersion")
extern final class ApiVersion {

	private function new(): Void;

	static function isCompatible(myVersionStr: String, wantVersionsStr: Array<String>): Bool;

	static function checkAmbiguousVersions(versions: Array<String>): Array<String>;
}
