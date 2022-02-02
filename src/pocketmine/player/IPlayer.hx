package pocketmine.player;

@:native("pocketmine\\player\\IPlayer")
extern interface IPlayer {

	public function getName(): String;

	public function getFirstPlayed(): Null<Int>;

	public function getLastPlayed(): Null<Int>;

	public function hasPlayedBefore(): Bool;
}
