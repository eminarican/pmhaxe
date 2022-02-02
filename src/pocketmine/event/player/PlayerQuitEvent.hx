package pocketmine.event.player;

import pocketmine.lang.Translatable;
import pocketmine.player.Player;
import haxe.extern.EitherType;

/**
 * Called when a player leaves the server
 */
@:native("pocketmine\\event\\player\\PlayerQuitEvent")
extern class PlayerQuitEvent extends PlayerEvent {

	public function new(player: Player, quitMessage: EitherType<Translatable, String>, quitReason: String): Void;

	public function setQuitMessage(quitMessage: EitherType<Translatable, String>): Void;

	public function getQuitMessage(): EitherType<Translatable, String>;

	public function getQuitReason(): String;
}
