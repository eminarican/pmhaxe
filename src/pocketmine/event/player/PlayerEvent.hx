package pocketmine.event.player;

import pocketmine.player.Player;

@:native("pocketmine\\event\\player\\PlayerEvent")
extern abstract class PlayerEvent extends Event {
	public function getPlayer():Player;
}
