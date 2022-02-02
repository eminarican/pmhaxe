package pocketmine.event.player;

import haxe.extern.EitherType;
import pocketmine.player.Player;
import pocketmine.lang.Translatable;

/**
 * Called when the player spawns in the world after logging in, when they first see the terrain.
 *
 * Note: A lot of data is sent to the player between login and this event. Disconnecting the player during this event
 * will cause this data to be wasted. Prefer disconnecting at login-time if possible to minimize bandwidth wastage.
 * @see PlayerLoginEvent
 */
@:native("pocketmine\\event\\player\\PlayerJoinEvent")
extern class PlayerJoinEvent extends PlayerEvent {

	public function new(player: Player, joinMessage: EitherType<Translatable, String>): Void;

	public function setJoinMessage(joinMessage: EitherType<Translatable, String>): Void;

	public function getJoinMessage(): EitherType<Translatable, String>;
}
