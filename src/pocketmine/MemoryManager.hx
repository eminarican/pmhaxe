package pocketmine;

import php.Ref;

@:native("pocketmine\\MemoryManager")
extern class MemoryManager {

	function isLowMemory(): Bool;

	function getGlobalMemoryLimit(): Int;

	function canUseChunkCache(): Bool;

	/**
	 * Returns the allowed chunk radius based on the current memory usage.
	 */
	function getViewDistance(distance: Int): Int;

	/**
	 * Triggers garbage collection and cache cleanup to try and free memory.
	 */
	function trigger(memory: Int, limit: Int, global: Bool = false, triggerCount: Int = 0): Void;

	/**
	 * Called every tick to update the memory manager state.
	 */
	function check(): Void;

	function triggerGarbageCollector(): Int;

	/**
	 * Dumps the server memory Into the specified output folder.
	 */
	function dumpServerMemory(outputFolder: String, maxNesting: Int, maxStringSize: Int): Void;

	/**
	 * Static memory dumper accessible from any thread.
	 */
	// static function dumpMemory(startingObject: Any, outputFolder: String, maxNesting: Int, maxStringSize: Int, logger: Logger): Void;

	/**
	 * @param Any    from
	 * @param object[] objects reference parameter
	 * @param Int[]    refCounts reference parameter
	 */
	private static function continueDump(from: Any, objects: Ref<Array<Any>>, refCounts: Ref<Array<Int>>, recursion: Int, maxNesting: Int, maxStringSize: Int): Any;
}
