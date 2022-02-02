package pocketmine.player;

@:native("pocketmine\\player\\XboxLivePlayerInfo")
extern final class XboxLivePlayerInfo extends PlayerInfo {

	public function getXuid(): String;

	/**
	 * Returns a new PlayerInfo with XBL player info stripped. This is used to ensure that non-XBL players can't spoof
	 * XBL data.
	 */
	public function withoutXboxData(): PlayerInfo;
}
