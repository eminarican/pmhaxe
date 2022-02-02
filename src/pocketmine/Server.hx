package pocketmine;

import pocketmine.log.AttachableThreadedLogger;
import pocketmine.plugin.PluginManager;
import pocketmine.utils.UuidInterface;
import pocketmine.player.Player;
import php.TypedArray;
import php.Throwable;

@:native("pocketmine\\Server")
extern class Server {

	function getName(): String;

	function isRunning(): Bool;

	function getPocketMineVersion(): String;

	function getVersion(): String;

	function getApiVersion(): String;

	function getFilePath(): String;

	function getResourcePath(): String;

	function getDataPath(): String;

	function getPluginPath(): String;

	function getMaxPlayers(): Int;

	/**
	 * Returns whether the server requires that players be authenticated to Xbox Live. If true, connecting players who
	 * are not logged Into Xbox Live will be disconnected.
	 */
	function getOnlineMode(): Bool;

	/**
	 * Alias of getOnlineMode().
	 */
	function requiresAuthentication(): Bool;

	function getPort(): Int;

	function getPortV6(): Int;

	function getViewDistance(): Int;

	/**
	 * Returns a view distance up to the currently-allowed limit.
	 */
	function getAllowedViewDistance(distance: Int): Int;

	function getIp(): String;

	function getIpV6(): String;

	function getServerUniqueId(): UuidInterface;

	// function getGamemode(): GameMode;
	function getForceGamemode(): Bool;

	/**
	 * Returns Server global difficulty. Note that this may be overridden in individual worlds.
	 */
	function getDifficulty(): Int;

	function hasWhitelist(): Bool;

	function isHardcore(): Bool;

	function getMotd(): String;

	// function getLoader(): DynamicClassLoader;
	function getLogger(): AttachableThreadedLogger;

	// function getUpdater(): UpdateChecker;
	function getPluginManager(): PluginManager;

	// function getCraftingManager(): CraftingManager;
	// function getResourcePackManager(): ResourcePackManager;
	// function getWorldManager(): WorldManager;
	// function getAsyncPool(): AsyncPool;
	function getTick(): Int;

	/**
	 * Returns the last server TPS measure
	 */
	function getTicksPerSecond(): Float;

	/**
	 * Returns the last server TPS average measure
	 */
	function getTicksPerSecondAverage(): Float;

	/**
	 * Returns the TPS usage/load in %
	 */
	function getTickUsage(): Float;

	/**
	 * Returns the TPS usage/load average in %
	 */
	function getTickUsageAverage(): Float;

	function getStartTime(): Float;

	// function getCommandMap(): SimpleCommandMap;
	function getOnlinePlayers(): Array<Player>;

	function shouldSavePlayerData(): Bool;

	// function getOfflinePlayer(name: String): EitherType<OfflinePlayer, Player>;

	/**
	 * Returns whether the server has stored any saved data for this player.
	 */
	function hasOfflinePlayerData(name: String): Bool;

	// function getOfflinePlayerData(name: String): Null<CompoundTag>;
	// function saveOfflinePlayerData(name: String, nbtTag: CompoundTag): Void;
	// function createPlayer(session: NetworkSession, playerInfo: PlayerInfo, authenticated: Bool, offlinePlayerData: Null<CompoundTag>): Promise;

	/**
	 * Returns an online player whose name begins with or equals the given String (case insensitive).
	 * The closest match will be returned, or null if there are no online matches.
	 *
	 * @see Server::getPlayerExact()
	 */
	function getPlayerByPrefix(name: String): Null<Player>;

	/**
	 * Returns an online player with the given name (case insensitive), or null if not found.
	 */
	function getPlayerExact(name: String): Null<Player>;

	/**
	 * Returns the player online with the specified raw UUID, or null if not found
	 */
	function getPlayerByRawUUID(rawUUID: String): Null<Player>;

	/**
	 * Returns the player online with a UUID equivalent to the specified UuidInterface object, or null if not found
	 */
	function getPlayerByUUID(uuid: UuidInterface): Null<Player>;

	function getConfigGroup(): ServerConfigGroup;

	// function getPluginCommand(name: String): Null<EitherType<Command, PluginOwned>>;
	// function getNameBans(): BanList;
	// function getIPBans(): BanList;
	function addOp(name: String): Void;

	function removeOp(name: String): Void;

	function addWhitelist(name: String): Void;

	function removeWhitelist(name: String): Void;

	function isWhitelisted(name: String): Bool;

	function isOp(name: String): Bool;

	// function getWhitelisted(): Config;
	// function getOps(): Config;
	function getCommandAliases(): Array<Array<String>>;

	static function getInstance(): Server;

	/**
	 * Subscribes to a particular message broadcast channel.
	 * The channel ID can be any arbitrary String.
	 */
	// function subscribeToBroadcastChannel(channelId: String, subscriber: CommandSender): Void;
	/**
	 * Unsubscribes from a particular message broadcast channel.
	 */
	// function unsubscribeFromBroadcastChannel(channelId: String, subscriber: CommandSender): Void;
	/**
	 * Unsubscribes from all broadcast channels.
	 */
	// function unsubscribeFromAllBroadcastChannels(subscriber: CommandSender): Void;

	/**
	 * Returns a list of all the CommandSenders subscribed to the given broadcast channel.
	 */
	// function getBroadcastChannelSubscribers(channelId: String): Array<CommandSender>;
	// function broadcastMessage(message: EitherType<Translatable, String>, recipients: Null<Array<CommandSender>> = null): Int;
	function broadcastTip(tip: String, recipients: Null<Array<Player>> = null): Int;

	function broadcastPopup(popup: String, recipients: Null<Array<Player>> = null): Int;

	/**
	 * fadeIn Duration in ticks for fade-in. If -1 is given, client-sided defaults will be used.
	 * stay Duration in ticks to stay on screen for
	 * fadeOut Duration in ticks for fade-out.
	 * recipients
	 */
	// function broadcastTitle(title: String, subtitle: String = "", fadeIn: Int = -1, stay: Int = -1, fadeOut: Int = -1, recipients: Null<Array<Player>> = null): Int;
	// function broadcastPackets(players: Array<Player>, packets: Array<ClientboundPacket>): Bool;
	/**
	 * Broadcasts a list of packets in a batch to a list of players
	 */
	// function prepareBatch(stream: PacketBatch, compressor: Compressor, sync: Null<Bool> = null): CompressBatchPromise;
	// function enablePlugins(type: PluginEnableOrder): Void;
	/**
	 * Executes a command from a CommandSender
	 */
	// function dispatchCommand(sender: CommandSender, commandLine: String, Internal: Bool = false): Bool;

	/**
	 * Shuts the server down correctly
	 */
	function shutdown(): Void;

	function forceShutdown(): Void;

	// function getQueryInformation(): QueryInfo;
	function exceptionHandler(e: Throwable, trace: Null<Array<TypedArray<String, Any>>> = null): Void;

	function crashDump(): Void;

	function __debugInfo(): Array<Any>;

	// function getTickSleeper(): SleeperHandler;
	function addOnlinePlayer(player: Player): Bool;

	function removeOnlinePlayer(player: Player): Void;

	// function sendUsage(type: Int = SendUsageTask::TYPE_STATUS): Void;
	// function getLanguage(): Language;
	function isLanguageForced(): Bool;

	// function getNetwork(): Network;
	function getMemoryManager(): MemoryManager;
}
