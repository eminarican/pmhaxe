package pocketmine;

import php.Ref;

@:native("pocketmine\\MemoryManager")
extern class MemoryManager {
    
    public function isLowMemory(): Bool;

	public function getGlobalMemoryLimit(): Int;

	public function canUseChunkCache(): Bool;

	/**
	 * Returns the allowed chunk radius based on the current memory usage.
	 */
	public function getViewDistance(distance: Int): Int;

	/**
	 * Triggers garbage collection and cache cleanup to try and free memory.
	 */
	public function trigger(memory: Int, limit: Int, global: Bool = false, triggerCount: Int = 0): Void;

	/**
	 * Called every tick to update the memory manager state.
	 */
	public function check(): Void;

	public function triggerGarbageCollector(): Int;

	/**
	 * Dumps the server memory Into the specified output folder.
	 */
	public function dumpServerMemory(outputFolder: String, maxNesting: Int, maxStringSize: Int): Void;

	/**
	 * Static memory dumper accessible from any thread.
	 */
	//public static function dumpMemory(startingObject: Any, outputFolder: String, maxNesting: Int, maxStringSize: Int, logger: Logger): Void;

	/**
	 * @param Any    from
	 * @param object[] objects reference parameter
	 * @param Int[]    refCounts reference parameter
	 */
	private static function continueDump(from: Any, objects: Ref<Array<Any>>, refCounts: Ref<Array<Int>>, recursion: Int, maxNesting: Int, maxStringSize: Int): Any;
}
