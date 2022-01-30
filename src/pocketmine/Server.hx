package pocketmine;

import php.Throwable;
import haxe.extern.EitherType;

@:native("pocketmineServer")
extern class Server {
    
    public function getName(): String;

	public function isRunning(): Bool;

	public function getPocketMineVersion(): String;

	public function getVersion(): String;

	public function getApiVersion(): String;

	public function getFilePath(): String;

	public function getResourcePath(): String;

	public function getDataPath(): String;

	public function getPluginPath(): String;

	public function getMaxPlayers(): Int;

	/**
	 * Returns whether the server requires that players be authenticated to Xbox Live. If true, connecting players who
	 * are not logged Into Xbox Live will be disconnected.
	 */
	public function getOnlineMode(): Bool;

	/**
	 * Alias of getOnlineMode().
	 */
	public function requiresAuthentication(): Bool;

	public function getPort(): Int;

	public function getPortV6(): Int;

	public function getViewDistance(): Int;

	/**
	 * Returns a view distance up to the currently-allowed limit.
	 */
	public function getAllowedViewDistance(distance: Int): Int;

	public function getIp(): String;

	public function getIpV6(): String;

	//public function getServerUniqueId(): UuidInterface;

	//public function getGamemode(): GameMode;

	public function getForceGamemode(): Bool;

	/**
	 * Returns Server global difficulty. Note that this may be overridden in individual worlds.
	 */
	public function getDifficulty(): Int;

	public function hasWhitelist(): Bool;

	public function isHardcore(): Bool;

	public function getMotd(): String;

	//public function getLoader(): DynamicClassLoader;

	//public function getLogger(): AttachableThreadedLogger;

	//public function getUpdater(): UpdateChecker;

	//public function getPluginManager(): PluginManager;

	//public function getCraftingManager(): CraftingManager;

	//public function getResourcePackManager(): ResourcePackManager;

	//public function getWorldManager(): WorldManager;

	//public function getAsyncPool(): AsyncPool;

	public function getTick(): Int;

	/**
	 * Returns the last server TPS measure
	 */
	public function getTicksPerSecond(): Float;

	/**
	 * Returns the last server TPS average measure
	 */
	public function getTicksPerSecondAverage(): Float;

	/**
	 * Returns the TPS usage/load in %
	 */
	public function getTickUsage(): Float;

	/**
	 * Returns the TPS usage/load average in %
	 */
	public function getTickUsageAverage(): Float;

	public function getStartTime(): Float;

	//public function getCommandMap(): SimpleCommandMap;

	//public function getOnlinePlayers(): Array<Player>;

	public function shouldSavePlayerData(): Bool;

	//public function getOfflinePlayer(name: String): EitherType<OfflinePlayer, Player>;

	private function getPlayerDataPath(username: String): String;

	/**
	 * Returns whether the server has stored any saved data for this player.
	 */
	public function hasOfflinePlayerData(name: String): Bool;

	private function handleCorruptedPlayerData(name: String): Void;

	//public function getOfflinePlayerData(name: String): Null<CompoundTag>;

	//public function saveOfflinePlayerData(name: String, nbtTag: CompoundTag): Void;

	//public function createPlayer(session: NetworkSession, playerInfo: PlayerInfo, authenticated: Bool, offlinePlayerData: Null<CompoundTag>): Promise;

	/**
	 * Returns an online player whose name begins with or equals the given String (case insensitive).
	 * The closest match will be returned, or null if there are no online matches.
	 *
	 * @see Server::getPlayerExact()
	 */
	//public function getPlayerByPrefix(name: String): Null<Player>;

	/**
	 * Returns an online player with the given name (case insensitive), or null if not found.
	 */
	//public function getPlayerExact(name: String): Null<Player>;

	/**
	 * Returns the player online with the specified raw UUID, or null if not found
	 */
	//public function getPlayerByRawUUID(rawUUID: String): Null<Player>;

	/**
	 * Returns the player online with a UUID equivalent to the specified UuidInterface object, or null if not found
	 */
	//public function getPlayerByUUID(uuid: UuidInterface): Null<Player>;

	//public function getConfigGroup(): ServerConfigGroup;

	//public function getPluginCommand(name: String): Null<EitherType<Command, PluginOwned>>;

	//public function getNameBans(): BanList;

	//public function getIPBans(): BanList;

	public function addOp(name: String): Void;

	public function removeOp(name: String): Void;

	public function addWhitelist(name: String): Void;

	public function removeWhitelist(name: String): Void;

	public function isWhitelisted(name: String): Bool;

	public function isOp(name: String): Bool;

	//public function getWhitelisted(): Config;

	//public function getOps(): Config;

	public function getCommandAliases(): Array<Array<String>>;

	public static function getInstance(): Server;

	/**
	 * Subscribes to a particular message broadcast channel.
	 * The channel ID can be any arbitrary String.
	 */
	//public function subscribeToBroadcastChannel(channelId: String, subscriber: CommandSender): Void;

	/**
	 * Unsubscribes from a particular message broadcast channel.
	 */
	//public function unsubscribeFromBroadcastChannel(channelId: String, subscriber: CommandSender): Void;

	/**
	 * Unsubscribes from all broadcast channels.
	 */
	//public function unsubscribeFromAllBroadcastChannels(subscriber: CommandSender): Void;

	/**
	 * Returns a list of all the CommandSenders subscribed to the given broadcast channel.
	 */
	//public function getBroadcastChannelSubscribers(channelId: String): Array<CommandSender>;

	//public function broadcastMessage(message: EitherType<Translatable, String>, recipients: Null<Array<CommandSender>> = null): Int;

	//public function broadcastTip(tip: String, recipients: Null<Array<Player>> = null): Int;

	//public function broadcastPopup(popup: String, recipients: Null<Array<Player>> = null): Int;

	/**
	 * fadeIn Duration in ticks for fade-in. If -1 is given, client-sided defaults will be used.
	 * stay Duration in ticks to stay on screen for
	 * fadeOut Duration in ticks for fade-out.
	 * recipients
	 */
	//public function broadcastTitle(title: String, subtitle: String = "", fadeIn: Int = -1, stay: Int = -1, fadeOut: Int = -1, recipients: Null<Array<Player>> = null): Int;

	//public function broadcastPackets(players: Array<Player>, packets: Array<ClientboundPacket>): Bool;

	/**
	 * Broadcasts a list of packets in a batch to a list of players
	 */
	//public function prepareBatch(stream: PacketBatch, compressor: Compressor, sync: Null<Bool> = null): CompressBatchPromise;

	//public function enablePlugins(type: PluginEnableOrder): Void;

	/**
	 * Executes a command from a CommandSender
	 */
	//public function dispatchCommand(sender: CommandSender, commandLine: String, Internal: Bool = false): Bool;

	/**
	 * Shuts the server down correctly
	 */
	public function shutdown(): Void;

	public function forceShutdown(): Void;

	//public function getQueryInformation(): QueryInfo;

	public function exceptionHandler(e: Throwable, trace: Null<Array<Array<Any>>> = null): Void;

	public function crashDump(): Void;

	public function __debugInfo(): Array<Any>;

	//public function getTickSleeper(): SleeperHandler;

	//public function addOnlinePlayer(player: Player): Bool;

	//public function removeOnlinePlayer(player: Player): Void;

	//public function sendUsage(type: Int = SendUsageTask::TYPE_STATUS): Void;

	//public function getLanguage(): Language;

	public function isLanguageForced(): Bool;

	//public function getNetwork(): Network;

	//public function getMemoryManager(): MemoryManager;
}
