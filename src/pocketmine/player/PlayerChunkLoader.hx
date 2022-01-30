package pocketmine.player;

import pocketmine.math.Vector3;

@:native("pocketmine\\player\\ChunkSelector")
// Todo: implements TickingChunkLoader
extern final class PlayerChunkLoader {

	public function new(currentLocation: Vector3): Void;

	public function setCurrentLocation(currentLocation: Vector3): Void;

	public function getX(): Float;

	public function getZ(): Float;
}
