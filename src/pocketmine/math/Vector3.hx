package pocketmine.math;

import php.Generator;
import haxe.extern.EitherType;

@:native("pocketmine\\math\\Vector3")
extern class Vector3 {

	static function zero(): Vector3;

	function new(x: EitherType<Float, Int>, y: EitherType<Float, Int>, z: EitherType<Float, Int>): Void;

	function getX(): EitherType<Float, Int>;

	function getY(): EitherType<Float, Int>;

	function getZ(): EitherType<Float, Int>;

	function getFloorX(): Int;

	function getFloorY(): Int;

	function getFloorZ(): Int;

	function add(x: EitherType<Float, Int>, y: EitherType<Float, Int>, z: EitherType<Float, Int>): Vector3;

	function addVector(v: Vector3): Vector3;

	function subtract(x: EitherType<Float, Int>, y: EitherType<Float, Int>, z: EitherType<Float, Int>): Vector3;

	function subtractVector(v: Vector3): Vector3;

	function multiply(number: Float): Vector3;

	function divide(number: Float): Vector3;

	function ceil(): Vector3;

	function floor(): Vector3;

	function round(precision: Int = 0, mode: Int = 0x1): Vector3;

	function abs(): Vector3;

	function getSide(side: Int, step: Int = 1): Vector3;

	function down(step: Int = 1): Vector3;

	function up(step: Int = 1): Vector3;

	function north(step: Int = 1): Vector3;

	function south(step: Int = 1): Vector3;

	function west(step: Int = 1): Vector3;

	function east(step: Int = 1): Vector3;

	/**
	 * Yields vectors stepped out from this one in all directions.
	 *
	 * @param Int step Distance in each direction to shift the vector
	 */
	function sides(step: Int = 1): EitherType<Generator, Array<Vector3>>;

	/**
	 * Same as sides() but returns a pre-populated array instead of Generator.
	 */
	function sidesArray(keys: Bool = false, step: Int = 1): Array<Vector3>;

	/**
	 * Yields vectors stepped out from this one in directions except those on the given axis.
	 *
	 * @param Int axis Facing directions on this axis will be excluded
	 */
	function sidesAroundAxis(axis: Int, step: Int = 1): EitherType<Generator, Array<Vector3>>;

	/**
	 * Return a Vector3 instance
	 */
	function asVector3(): Vector3;

	function distance(pos: Vector3): Float;

	function distanceSquared(pos: Vector3): Float;

	function maxPlainDistance(x: EitherType<Float, EitherType<Vector2, Vector3>>, z: Float = 0): Float;

	function length(): Float;

	function lengthSquared(): Float;

	function normalize(): Vector3;

	function dot(v: Vector3): Float;

	function cross(v: Vector3): Vector3;

	function equals(v: Vector3): Bool;

	/**
	 * Returns a new vector with x value equal to the second parameter, along the line between this vector and the
	 * passed in vector, or null if not possible.
	 */
	function getIntermediateWithXValue(v: Vector3, x: Float): Null<Vector3>;

	/**
	 * Returns a new vector with y value equal to the second parameter, along the line between this vector and the
	 * passed in vector, or null if not possible.
	 */
	function getIntermediateWithYValue(v: Vector3, y: Float): Null<Vector3>;

	/**
	 * Returns a new vector with z value equal to the second parameter, along the line between this vector and the
	 * passed in vector, or null if not possible.
	 */
	function getIntermediateWithZValue(v: Vector3, z: Float): Null<Vector3>;

	function __toString(): String;

	/**
	 * Returns a Vector3 with the provided components. If any of the components are null, the values from this
	 * Vector3 will be filled in instead.
	 * If no components are overridden (all components are null), the original vector will be returned unchanged.
	 */
	function withComponents(x: Null<EitherType<Float, Int>>, y: Null<EitherType<Float, Int>>, z: Null<EitherType<Float, Int>>): Vector3;

	/**
	 * Returns a new Vector3 taking the maximum of each component in the input vectors.
	 *
	 * @param Vector3 ...vectors
	 */
	static function maxComponents(vector: Vector3, ...vectors: Vector3): Vector3;

	/**
	 * Returns a new Vector3 taking the minimum of each component in the input vectors.
	 *
	 * @param Vector3 ...vectors
	 */
	static function minComponents(vector: Vector3, ...vectors: Vector3): Vector3;

	static function sum(...vector3s: Vector3): Vector3;
}
