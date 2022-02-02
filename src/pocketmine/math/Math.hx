package pocketmine.math;

@:native("pocketmine\\math\\Math")
extern final class Math {
	static function floorFloat(n:Float):Int;

	static function ceilFloat(n:Float):Int;

	/**
	 * Solves a quadratic equation with the given coefficients and returns an array of up to two solutions.
	 */
	static function solveQuadratic(a:Float, b:Float, c:Float):Array<Float>;
}
