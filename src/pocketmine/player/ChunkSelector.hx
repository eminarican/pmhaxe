package pocketmine.player;

import php.Generator;
import haxe.extern.EitherType;

@:native("pocketmine\\player\\ChunkSelector")
extern final class ChunkSelector {

	public function selectChunks(radius: Int, centerX: Int, centerZ: Int) : EitherType<Generator, Array<Int>>;
}
