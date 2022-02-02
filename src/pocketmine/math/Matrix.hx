package pocketmine.math;

@:native("pocketmine\\math\\Matrix")
extern class Matrix {

	function offsetExists(offset: Int): Bool;

	function offsetGet(offset: Int): Array<Float>;

	function offsetSet(offset: Int, value: Array<Float>): Void;

	function offsetUnset(offset: Int): Void;

	// Todo: find out a fix
	function new(rows: Int, columns: Int, set: Array<Array<Float>>);

	function set(m: Array<Array<Float>>): Void;

	function getRows(): Int;

	function getColumns(): Int;

	function setElement(row: Int, column: Int, value: Float): Void;

	function getElement(row: Int, column: Int): Float;

	function isSquare(): Bool;

	function add(matrix: Matrix): Matrix;

	function subtract(matrix: Matrix): Matrix;

	function multiplyScalar(number: Float): Matrix;

	function divideScalar(number: Float): Matrix;

	function transpose(): Matrix;

	/**
	 * Naive Matrix product, O(n^3)
	 */
	function product(matrix: Matrix): Matrix;

	/**
	 * Computation of the determinant of 1x1, 2x2 and 3x3 matrices
	 */
	function determinant(): Float;

	function __toString(): String;
}
