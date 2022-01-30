package pocketmine.player;

import php.TypedArray;

@:native("pocketmine\\player\\PlayerInfo")
extern class PlayerInfo {
    
    public function getUsername(): String;

	//public function getUuid(): UuidInterface;

	//public function getSkin(): Skin;

	public function getLocale(): String;

	public function getExtraData(): TypedArray<String, Any>;
}
