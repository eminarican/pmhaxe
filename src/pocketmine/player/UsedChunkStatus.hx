package pocketmine.player;

@:native("pocketmine\\player\\UsedChunkStatus")
extern final class UsedChunkStatus {

	static function NEEDED(): UsedChunkStatus;

	static function REQUESTED_GENERATION(): UsedChunkStatus;

	static function REQUESTED_SENDING(): UsedChunkStatus;

	static function SENT(): UsedChunkStatus;
}
