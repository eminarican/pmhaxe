package pocketmine.player;

@:native("pocketmine\\player\\OfflinePlayer")
extern class OfflinePlayer implements IPlayer {

	// public function new(name: String, namedtag: Null<CompoundTag>): Void;
	public function getName(): String;

	public function getFirstPlayed(): Null<Int>;

	public function getLastPlayed(): Null<Int>;

	public function hasPlayedBefore(): Bool;
}
