package pocketmine.player;

import pocketmine.form.Form;
import haxe.extern.EitherType;
import pocketmine.math.Vector3;
import pocketmine.lang.Translatable;

@:native("pocketmine\\player\\Player")
extern class Player implements IPlayer {

    function getLeaveMessage(): EitherType<Translatable, String>;

	function isAuthenticated(): Bool;

	/**
	 * Returns an object containing information about the player, such as their username, skin, and misc extra
	 * client-specific data.
	 */
	//function getPlayerInfo(): PlayerInfo;

	/**
	 * If the player is logged Into Xbox Live, returns their Xbox user ID (XUID) as a String. Returns an empty String if
	 * the player is not logged Into Xbox Live.
	 */
	function getXuid(): String;

	/**
	 * Returns the player's UUID. This should be the preferred method to identify a player.
	 * It does not change if the player changes their username.
	 *
	 * All players will have a UUID, regardless of whether they are logged Into Xbox Live or not. However, note that
	 * non-XBL players can fake their UUIDs.
	 */
	//function getUniqueId(): UuidInterface;

	function getFirstPlayed(): Null<Int>;

	function getLastPlayed(): Null<Int>;

	function hasPlayedBefore(): Bool;

	function setAllowFlight(value: Bool): Void;

	function getAllowFlight(): Bool;

	function setFlying(value: Bool): Void;

	function isFlying(): Bool;

	function setAutoJump(value: Bool): Void;

	function hasAutoJump(): Bool;

	function spawnTo(player: Player): Void;

	function getServer(): Server;

	function getScreenLineHeight(): Int;

	function setScreenLineHeight(height: Null<Int>): Void;

	function canSee(player: Player): Bool;

	function hidePlayer(player: Player): Void;

	function showPlayer(player: Player): Void;

	//function canCollideWith(entity: Entity): Bool;

	function canBeCollidedWith(): Bool;

	function resetFallDistance(): Void;

	function getViewDistance(): Int;

	function setViewDistance(distance: Int): Void;

	function isOnline(): Bool;

	function isConnected(): Bool;

	//function getNetworkSession(): NetworkSession;

	/**
	 * Gets the username
	 */
	function getName(): String;

	/**
	 * Returns the "friendly" display name of this player to use in the chat.
	 */
	function getDisplayName(): String;

	function setDisplayName(name: String): Void;

	/**
	 * Returns the player's locale, e.g. en_US.
	 */
	function getLocale(): String;

	//function getLanguage(): Language;

	/**
	 * Called when a player changes their skin.
	 * Plugin developers should not use this, use setSkin() and sendSkin() instead.
	 */
	//function changeSkin(skin: Skin, newSkinName: String, oldSkinName: String): Bool;

	/**
	 * If null is given, will additionally send the skin to the player itself as well as its viewers.
	 */
	function sendSkin(targets: Null<Array<Player>> = null): Void;

	/**
	 * Returns whether the player is currently using an item (right-click and hold).
	 */
	function isUsingItem(): Bool;

	function setUsingItem(value: Bool): Void;

	/**
	 * Returns how long the player has been using their currently-held item for. Used for determining arrow shoot force
	 * for bows.
	 */
	function getItemUseDuration(): Int;

	/**
	 * Returns the server tick on which the player's cooldown period expires for the given item.
	 */
	//function getItemCooldownExpiry(item: Item): Int;

	/**
	 * Returns whether the player has a cooldown period left before it can use the given item again.
	 */
	//function hasItemCooldown(item: Item): Bool;

	/**
	 * Resets the player's cooldown time for the given item back to the maximum.
	 */
	//function resetItemCooldown(item: Item, ticks: Null<Int> = null): Void;

	/**
	 * Called by the network system when the pre-spawn sequence is completed (e.g. after sending spawn chunks).
	 * This fires join events and broadcasts join messages to other online players.
	 */
	function doFirstSpawn(): Void;

	/**
	 * Returns whether the player is using the chunk with the given coordinates, irrespective of whether the chunk has
	 * been sent yet.
	 */
	function isUsingChunk(chunkX: Int, chunkZ: Int): Bool;

	//function getUsedChunks(): Map<Int, UsedChunkStatus>;

	/**
	 * Returns a usage status of the given chunk, or null if the player is not using the given chunk.
	 */
	//function getUsedChunkStatus(chunkX: Int, chunkZ: Int): Null<UsedChunkStatus>;

	/**
	 * Returns whether the target chunk has been sent to this player.
	 */
	function hasReceivedChunk(chunkX: Int, chunkZ: Int): Bool;

	/**
	 * Ticks the chunk-requesting mechanism.
	 */
	function doChunkRequests(): Void;

	//function getSpawn(): Position;

	function hasValidCustomSpawn(): Bool;

	/**
	 * Sets the spawnpoInt of the player (and the compass direction) to a Vector3, or set it on another world with a
	 * Position object
	 */
	function setSpawn(pos: Null<Vector3>): Void;

	function isSleeping(): Bool;

	function sleepOn(pos: Vector3): Bool;

	function stopSleep(): Void;

	function getGamemode(): GameMode;

	/**
	 * Sets the gamemode, and if needed, kicks the Player.
	 */
	function setGamemode(gm: GameMode): Bool;

	/**
	 * NOTE: Because Survival and Adventure Mode share some similar behaviour, this method will also return true if the player is
	 * in Adventure Mode. Supply the literal parameter as true to force a literal Survival Mode check.
	 *
	 * @param Bool literal whether a literal check should be performed
	 */
	function isSurvival(literal: Bool = false): Bool;

	/**
	 * NOTE: Because Creative and Spectator Mode share some similar behaviour, this method will also return true if the player is
	 * in Spectator Mode. Supply the literal parameter as true to force a literal Creative Mode check.
	 *
	 * @param Bool literal whether a literal check should be performed
	 */
	function isCreative(literal: Bool = false): Bool;

	/**
	 * NOTE: Because Adventure and Spectator Mode share some similar behaviour, this method will also return true if the player is
	 * in Spectator Mode. Supply the literal parameter as true to force a literal Adventure Mode check.
	 *
	 * @param Bool literal whether a literal check should be performed
	 */
	function isAdventure(literal: Bool = false): Bool;

	function isSpectator(): Bool;

	function hasFiniteResources(): Bool;

	function isFireProof(): Bool;

	//function getDrops(): Array<Item>;

	function getXpDropAmount(): Int;

	function canBeMovedByCurrents(): Bool;

	function getInAirTicks(): Int;

	/**
	 * Attempts to move the player to the given coordinates. Unless you have some particularly specialized logic, you
	 * probably want to use teleport() instead of this.
	 *
	 * This is used for processing movements sent by the player over network.
	 *
	 * @param Vector3 newPos Coordinates of the player's feet, centered horizontally at the base of their bounding box.
	 */
	function handleMovement(newPos: Vector3): Void;

	function jump(): Void;

	function setMotion(motion: Vector3): Bool;

	function onUpdate(currentTick: Int): Bool;

	function canBreathe(): Bool;

	/**
	 * Returns whether the player can Interact with the specified position. This checks distance and direction.
	 *
	 * @param Float   maxDiff defaults to half of the 3D diagonal width of a block
	 */
    // Todo: find out fix, madDiff default = Const.M_SQRT3 / 2
	function canInteract(pos: Vector3, maxDistance: Float, maxDiff: Float): Bool;

	/**
	 * Sends a chat message as this player. If the message begins with a / (forward-slash) it will be treated
	 * as a command.
	 */
	function chat(message: String): Bool;

	function selectHotbarSlot(hotbarSlot: Int): Bool;

	/**
	 * Activates the item in hand, for example throwing a projectile.
	 *
	 * @return Bool if it did something
	 */
	function useHeldItem(): Bool;

	/**
	 * Consumes the currently-held item.
	 *
	 * @return Bool if the consumption succeeded.
	 */
	function consumeHeldItem(): Bool;

	/**
	 * Releases the held item, for example to fire a bow. This should be preceded by a call to useHeldItem().
	 *
	 * @return Bool if it did something.
	 */
	function releaseHeldItem(): Bool;

	function pickBlock(pos: Vector3, addTileNBT: Bool): Bool;

	/**
	 * Performs a left-click (attack) action on the block.
	 *
	 * @return Bool if an action took place successfully
	 */
	function attackBlock(pos: Vector3, face: Int): Bool;

	function continueBreakBlock(pos: Vector3, face: Int): Void;

	function stopBreakBlock(pos: Vector3): Void;

	/**
	 * Breaks the block at the given position using the currently-held item.
	 *
	 * @return Bool if the block was successfully broken, false if a rollback needs to take place.
	 */
	function breakBlock(pos: Vector3): Bool;

	/**
	 * Touches the block at the given position with the currently-held item.
	 *
	 * @return Bool if it did something
	 */
	function InteractBlock(pos: Vector3, face: Int, clickOffset: Vector3): Bool;

	/**
	 * Attacks the given entity with the currently-held item.
	 * TODO: move this up the class hierarchy
	 *
	 * @return Bool if the entity was dealt damage
	 */
	//function attackEntity(entity: Entity): Bool;

	/**
	 * Interacts with the given entity using the currently-held item.
	 */
	//function InteractEntity(entity: Entity, clickPos: Vector3): Bool;

	function toggleSprInt(sprInt: Bool): Bool;

	function toggleSneak(sneak: Bool): Bool;

	function toggleFlight(fly: Bool): Bool;

	function emote(emoteId: String): Void;

	/**
	 * Drops an item on the ground in front of the player.
	 */
	//function dropItem(item: Item): Void;

	/**
	 * Adds a title text to the user's screen, with an optional subtitle.
	 *
	 * @param Int    fadeIn Duration in ticks for fade-in. If -1 is given, client-sided defaults will be used.
	 * @param Int    stay Duration in ticks to stay on screen for
	 * @param Int    fadeOut Duration in ticks for fade-out.
	 */
	function sendTitle(title: String, subtitle: String = "", fadeIn: Int = -1, stay: Int = -1, fadeOut: Int = -1): Void;

	/**
	 * Sets the subtitle message, without sending a title.
	 */
	function sendSubTitle(subtitle: String): Void;

	/**
	 * Adds small text to the user's screen.
	 */
	function sendActionBarMessage(message: String): Void;

	/**
	 * Removes the title from the client's screen.
	 */
	function removeTitles(): Void;

	/**
	 * Resets the title duration settings to defaults and removes any existing titles.
	 */
	function resetTitles(): Void;

	/**
	 * Sets the title duration.
	 *
	 * @param Int fadeIn Title fade-in time in ticks.
	 * @param Int stay Title stay time in ticks.
	 * @param Int fadeOut Title fade-out time in ticks.
	 */
	function setTitleDuration(fadeIn: Int, stay: Int, fadeOut: Int): Void;

	/**
	 * Sends a direct chat message to a player
	 */
	function sendMessage(message: EitherType<Translatable, String>): Void;

    // find out fix
	function sendTranslation(message: String, parameters: EitherType<Array<Translatable>, Array<String>>): Void;

	function sendJukeboxPopup(key: String, args: Array<String>): Void;

	/**
	 * Sends a popup message to the player
	 *
	 * TODO: add translation type popups
	 */
	function sendPopup(message: String): Void;

	function sendTip(message: String): Void;

	/**
	 * Sends a Form to the player, or queue to send it if a form is already open.
	 *
	 * @throws InvalidArgumentException
	 */
	function sendForm(form: Form): Void;

	function onFormSubmit(formId: Int, responseData: Any): Bool;

	/**
	 * Transfers a player to another server.
	 *
	 * @param String address The IP address or hostname of the destination server
	 * @param Int    port The destination port, defaults to 19132
	 * @param message: String Message to show in the console when closing the player
	 *
	 * @return Bool if transfer was successful.
	 */
	function transfer(address: String, port: Int = 19132, message: String = "transfer"): Bool;

	/**
	 * Kicks a player from the server
	 */
	function kick(reason: String = "", quitMessage: Null<EitherType<Translatable, String>> = null): Bool;

	/**
	 * Removes the player from the server. This cannot be cancelled.
	 * This is used for remote disconnects and for unInterruptible disconnects (for example, when the server shuts down).
	 *
	 * Note for plugin developers: Prefer kick() instead of this method.
	 * That way other plugins can have a say in whether the player is removed or not.
	 *
	 * Note for Internals developers: Do not call this from network sessions. It will cause a feedback loop.
	 *
	 * @param String                   reason Shown to the player, usually this will appear on their disconnect screen.
	 *                                 quitMessage Message to broadcast to online players (null will use default)
	 */
	function disconnect(reason: String, quitMessage: Null<EitherType<Translatable, String>> = null): Void;

	/**
	 * @Internal
	 * This method executes post-disconnect actions and cleanups.
	 *
	 * @param String                           reason Shown to the player, usually this will appear on their disconnect screen.
	 *                                         quitMessage Message to broadcast to online players (null will use default)
	 */
	function onPostDisconnect(reason: String, quitMessage: Null<EitherType<Translatable, String>>): Void;

	function __debugInfo(): Array<Any>;

	function canSaveWithChunk(): Bool;

	function setCanSaveWithChunk(value: Bool): Void;

	//function getSaveData(): CompoundTag;

	/**
	 * Handles player data saving
	 */
	function save(): Void;

	//function attack(source: EntityDamageEvent): Void;

	//function sendData(targets: Null<Array<Player>>, data: Array<MetadataProperty> = null): Void;

	//function broadcastAnimation(animation: Animation, targets: Null<Array<Player>> = null): Void;

	//function broadcastSound(sound: Sound, targets: Null<Array<Player>> = null): Void;

	function teleport(pos: Vector3, yaw: Null<Float> = null, pitch: Null<Float> = null): Bool;

	//function getCursorInventory(): PlayerCursorInventory;

	//function getCraftingGrid(): CraftingGrid;

	/**
	 * Returns the inventory the player is currently viewing. This might be a chest, furnace, or any other container.
	 */
	//function getCurrentWindow(): Null<Inventory>;

	/**
	 * Opens an inventory window to the player. Returns if it was successful.
	 */
	//function setCurrentWindow(inventory: Inventory): Bool;

	function removeCurrentWindow(): Void;

	//function onChunkChanged(chunkX: Int, chunkZ: Int, chunk: Chunk): Void;

	//function onChunkUnloaded(chunkX: Int, chunkZ: Int, chunk: Chunk): Void;
}
