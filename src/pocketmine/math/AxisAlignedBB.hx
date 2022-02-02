package pocketmine.math;

@:native("pocketminemathAxisAlignedBB")
extern final class AxisAlignedBB {
	function new(minX:Float, minY:Float, minZ:Float, maxX:Float, maxY:Float, maxZ:Float):Void;

	/**
	 * Returns a new AxisAlignedBB extended by the specified X, Y and Z.
	 * If each of X, Y and Z are positive, the relevant max bound will be increased. If negative, the relevant min
	 * bound will be decreased.
	 */
	function addCoord(x:Float, y:Float, z:Float):AxisAlignedBB;

	/**
	 * Outsets the bounds of this AxisAlignedBB by the specified X, Y and Z.
	 */
	function expand(x:Float, y:Float, z:Float):AxisAlignedBB;

	/**
	 * Returns an expanded clone of this AxisAlignedBB.
	 */
	function expandedCopy(x:Float, y:Float, z:Float):AxisAlignedBB;

	/**
	 * Shifts this AxisAlignedBB by the given X, Y and Z.
	 */
	function offset(x:Float, y:Float, z:Float):AxisAlignedBB;

	/**
	 * Returns an offset clone of this AxisAlignedBB.
	 */
	function offsetCopy(x:Float, y:Float, z:Float):AxisAlignedBB;

	/**
	 * Insets the bounds of this AxisAlignedBB by the specified X, Y and Z.
	 */
	function contract(x:Float, y:Float, z:Float):AxisAlignedBB;

	/**
	 * Returns a contracted clone of this AxisAlignedBB.
	 */
	function contractedCopy(x:Float, y:Float, z:Float):AxisAlignedBB;

	/**
	 * Extends the AABB in the given direction.
	 *
	 * @param Float distance Negative values pull the face in, positive values push out.
	 *
	 * @return this
	 * @throws InvalidArgumentException
	 */
	function extend(face:Int, distance:Float):AxisAlignedBB;

	/**
	 * Returns an extended clone of this bounding box.
	 * @see AxisAlignedBB::extend()
	 *
	 * @throws InvalidArgumentException
	 */
	function extendedCopy(face:Int, distance:Float):AxisAlignedBB;

	/**
	 * Inverse of extend().
	 * @see AxisAlignedBB::extend()
	 *
	 * @param Float distance Positive values pull the face in, negative values push out.
	 *
	 * @return this
	 * @throws InvalidArgumentException
	 */
	function trim(face:Int, distance:Float):AxisAlignedBB;

	/**
	 * Returns a trimmed clone of this bounding box.
	 * @see AxisAlignedBB::trim()
	 *
	 * @throws InvalidArgumentException
	 */
	function trimmedCopy(face:Int, distance:Float):AxisAlignedBB;

	/**
	 * Increases the dimension of the AABB along the given axis.
	 *
	 * @param Int   axis one of the Axis::* constants
	 * @param Float distance Negative values reduce width, positive values increase width.
	 *
	 * @return this
	 * @throws InvalidArgumentException
	 */
	function stretch(axis:Int, distance:Float):AxisAlignedBB;

	/**
	 * Returns a stretched copy of this bounding box.
	 * @see AxisAlignedBB::stretch()
	 *
	 * @throws InvalidArgumentException
	 */
	function stretchedCopy(axis:Int, distance:Float):AxisAlignedBB;

	/**
	 * Reduces the dimension of the AABB on the given axis. Inverse of stretch().
	 * @see AxisAlignedBB::stretch()
	 *
	 * @return this
	 * @throws InvalidArgumentException
	 */
	function squash(axis:Int, distance:Float):AxisAlignedBB;

	/**
	 * Returns a squashed copy of this bounding box.
	 * @see AxisAlignedBB::squash()
	 *
	 * @throws InvalidArgumentException
	 */
	function squashedCopy(axis:Int, distance:Float):AxisAlignedBB;

	function calculateXOffset(bb:AxisAlignedBB, x:Float):Float;

	function calculateYOffset(bb:AxisAlignedBB, y:Float):Float;

	function calculateZOffset(bb:AxisAlignedBB, z:Float):Float;

	/**
	 * Returns whether any part of the specified AABB is inside (Intersects with) this one.
	 */
	function IntersectsWith(bb:AxisAlignedBB, epsilon:Float = 0.00001):Bool;

	/**
	 * Returns whether the specified vector is within the bounds of this AABB on all axes.
	 */
	function isVectorInside(vector:Vector3):Bool;

	/**
	 * Returns the mean average of the AABB's X, Y and Z lengths.
	 */
	function getAverageEdgeLength():Float;

	function getXLength():Float;

	function getYLength():Float;

	function getZLength():Float;

	function isCube(epsilon:Float = 0.000001):Bool;

	/**
	 * Returns the Interior volume of the AABB.
	 */
	function getVolume():Float;

	/**
	 * Returns whether the specified vector is within the Y and Z bounds of this AABB.
	 */
	function isVectorInYZ(vector:Vector3):Bool;

	/**
	 * Returns whether the specified vector is within the X and Z bounds of this AABB.
	 */
	function isVectorInXZ(vector:Vector3):Bool;

	/**
	 * Returns whether the specified vector is within the X and Y bounds of this AABB.
	 */
	function isVectorInXY(vector:Vector3):Bool;

	/**
	 * Performs a ray-trace and calculates the poInt on the AABB's edge nearest the start position that the ray-trace
	 * collided with. Returns a RayTraceResult with colliding vector closest to the start position.
	 * Returns null if no colliding poInt was found.
	 */
	function calculateIntercept(pos1:Vector3, pos2:Vector3):Null<RayTraceResult>;

	function __toString():String;

	/**
	 * Returns a 1x1x1 bounding box starting at grid position 0,0,0.
	 */
	static function one():AxisAlignedBB;
}
