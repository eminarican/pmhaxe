package pocketmine.player;

@:native("pocketmine\\player\\GameMode")
extern final class GameMode {
	static function ADVENTURE():GameMode;

	static function CREATIVE():GameMode;

	static function SPECTATOR():GameMode;

	static function SURVIVAL():GameMode;

	static function fromString(str:String):Null<GameMode>;

	function getEnglishName():String;

	// function getTranslatableName(): Translatable;
	function getAliases():Array<String>;
}
