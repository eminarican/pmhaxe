package pocketmine.math;

@:native("pocketmine\\math\\Facing")
extern final class Facing {

    inline static final FLAG_AXIS_POSITIVE = 1;

    inline static final DOWN =   Axis.Y << 1;
	inline static final UP =    (Axis.Y << 1) | FLAG_AXIS_POSITIVE;
	inline static final NORTH =  Axis.Z << 1;
	inline static final SOUTH = (Axis.Z << 1) | FLAG_AXIS_POSITIVE;
	inline static final WEST =   Axis.X << 1;
	inline static final EAST =  (Axis.X << 1) | FLAG_AXIS_POSITIVE;

    inline static function ALL(): Array<Int> {
        return [
            DOWN,
            UP,
            NORTH,
            SOUTH,
            WEST,
            EAST
        ];
    }

    inline static function HORIZONTAL(): Array<Int> {
        return [
            NORTH,
		    SOUTH,
		    WEST,
		    EAST
        ];
    }

    /**
	 * Returns the axis of the given direction.
	 */
	public static function axis(direction: Int): Int;

	/**
	 * Returns whether the direction is facing the positive of its axis.
	 */
	public static function isPositive(direction: Int): Bool;

	/**
	 * Returns the opposite Facing of the specified one.
	 *
	 * @param Int direction 0-5 one of the Facing::* constants
	 */
	public static function opposite(direction: Int): Int;

	/**
	 * Rotates the given direction around the axis.
	 *
	 * @throws InvalidArgumentException if not possible to rotate direction around axis
	 */
	public static function rotate(direction: Int, axis: Int, clockwise: Bool): Int;

	/**
	 * @throws InvalidArgumentException
	 */
	public static function rotateY(direction: Int, clockwise: Bool): Int;

	/**
	 * @throws InvalidArgumentException
	 */
	public static function rotateZ(direction: Int, clockwise: Bool): Int;

	/**
	 * @throws InvalidArgumentException
	 */
	public static function rotateX(direction: Int, clockwise: Bool): Int;

	/**
	 * Validates the given Integer as a Facing direction.
	 *
	 * @throws InvalidArgumentException if the argument is not a valid Facing constant
	 */
	public static function validate(facing: Int): Void;

	/**
	 * Returns a human-readable String representation of the given Facing direction.
	 */
	public static function toString(facing: Int): String;
}
