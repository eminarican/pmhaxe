package pocketmine.player;

import pocketmine.math.Vector3;

@:native("pocketmine\\player\\SurvivalBlockBreakHandler")
extern final class SurvivalBlockBreakHandler {

	//public function new(player: Player, blockPos: Vector3, block: Block, targetedFace: Int, maxPlayerDistance: Int, fxTickInterval: Int = 5): Void;

	public function update(): Bool;

	public function getBlockPos(): Vector3;

	public function getTargetedFace(): Int;

	public function setTargetedFace(face: Int): Void;

	public function getBreakSpeed(): Float;

	public function getBreakProgress(): Float;
}
