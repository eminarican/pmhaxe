package pocketmine.math;

@:native("pocketmine\\math\\Vector2")
extern class Vector2 {

	function new(x: Float, y: Float): Void;

	function getX(): Float;

	function getY(): Float;

	function getFloorX(): Int;

	function getFloorY(): Int;

	function add(x: Float, y: Float): Vector2;

	function addVector(vector2: Vector2): Vector2;

	function subtract(x: Float, y: Float): Vector2;

	function subtractVector(vector2: Vector2): Vector2;

	function ceil(): Vector2;

	function floor(): Vector2;

	function round(): Vector2;

	function abs(): Vector2;

	function multiply(number: Float): Vector2;

	function divide(number: Float): Vector2;

	function distance(pos: Vector2): Float;

	function distanceSquared(pos: Vector2): Float;

	function length(): Float;

	function lengthSquared(): Float;

	function normalize(): Vector2;

	function dot(v: Vector2): Float;

	function __toString(): String;
}
