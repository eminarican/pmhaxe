package pocketmine.math;

import php.Generator;
import haxe.extern.EitherType;

@:native("pocketmine\\math\\VoxelRayTrace")
extern final class VoxelRayTrace {

	/**
	 * Performs a ray trace from the start position in the given direction, for a distance of maxDistance. This
	 * returns a Generator which yields Vector3s containing the coordinates of voxels it passes through.
	 */
	public static function inDirection(start: Vector3, directionVector: Vector3, maxDistance: Float): EitherType<Generator, Array<Vector3>>;

	/**
	 * Performs a ray trace between the start and end coordinates. This returns a Generator which yields Vector3s
	 * containing the coordinates of voxels it passes through.
	 *
	 * This is an implementation of the algorithm described in the link below.
	 * @link http://www.cse.yorku.ca/~amana/research/grid.pdf
	 */
	public static function betweenPoints(start: Vector3, end: Vector3): EitherType<Generator, Array<Vector3>>;

	/**
	 * Returns the distance that must be travelled on an axis from the start point with the direction vector component to
	 * cross a block boundary.
	 *
	 * For example, given an X coordinate inside a block and the X component of a direction vector, will return the distance
	 * travelled by that direction component to reach a block with a different X coordinate.
	 *
	 * Find the smallest positive t such that s+t*ds is an integer.
	 *
	 * @param Float s Starting coordinate
	 * @param Float ds Direction vector component of the relevant axis
	 *
	 * @return Float Distance along the ray trace that must be travelled to cross a boundary.
	 */
	private static function rayTraceDistanceToBoundary(s: Float, ds: Float): Float;

}
