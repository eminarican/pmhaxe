package pocketmine.utils;

@:native("pocketmine\\utils\\BinaryStream")
extern class BinaryStream {

	function new(buffer: String = "", offset: Int = 0);

	/**
	 * Rewinds the stream poInter to the start.
	 */
	function rewind(): Void;

	function setOffset(offset: Int): Void;

	function getOffset(): Int;

	function getBuffer(): String;

	/**
	 * @throws BinaryDataException if there are not enough bytes left in the buffer
	 */
	function get(len: Int): String;

	/**
	 * @throws BinaryDataException
	 */
	function getRemaining(): String;

	function put(str: String): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getBool(): Bool;

	function putBool(v: Bool): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getByte(): Int;

	function putByte(v: Int): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getShort(): Int;

	/**
	 * @throws BinaryDataException
	 */
	function getSignedShort(): Int;

	function putShort(v: Int): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getLShort(): Int;

	/**
	 * @throws BinaryDataException
	 */
	function getSignedLShort(): Int;

	function putLShort(v: Int): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getTriad(): Int;

	function putTriad(v: Int): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getLTriad(): Int;

	function putLTriad(v: Int): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getInt(): Int;

	function putInt(v: Int): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getLInt(): Int;

	function putLInt(v: Int): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getFloat(): Float;

	/**
	 * @throws BinaryDataException
	 */
	function getRoundedFloat(accuracy: Int): Float;

	function putFloat(v: Float): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getLFloat(): Float;

	/**
	 * @throws BinaryDataException
	 */
	function getRoundedLFloat(accuracy: Int): Float;

	function putLFloat(v: Float): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getDouble(): Float;

	function putDouble(v: Float): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getLDouble(): Float;

	function putLDouble(v: Float): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getLong(): Int;

	function putLong(v: Int): Void;

	/**
	 * @throws BinaryDataException
	 */
	function getLLong(): Int;

	function putLLong(v: Int): Void;

	/**
	 * Reads a 32-bit variable-length unsigned Integer from the buffer and returns it.
	 *
	 * @throws BinaryDataException
	 */
	function getUnsignedVarInt(): Int;

	/**
	 * Writes a 32-bit variable-length unsigned Integer to the end of the buffer.
	 */
	function putUnsignedVarInt(v: Int): Void;

	/**
	 * Reads a 32-bit zigzag-encoded variable-length Integer from the buffer and returns it.
	 *
	 * @throws BinaryDataException
	 */
	function getVarInt(): Int;

	/**
	 * Writes a 32-bit zigzag-encoded variable-length Integer to the end of the buffer.
	 */
	function putVarInt(v: Int): Void;

	/**
	 * Reads a 64-bit variable-length Integer from the buffer and returns it.
	 *
	 * @throws BinaryDataException
	 */
	function getUnsignedVarLong(): Int;

	/**
	 * Writes a 64-bit variable-length Integer to the end of the buffer.
	 */
	function putUnsignedVarLong(v: Int): Void;

	/**
	 * Reads a 64-bit zigzag-encoded variable-length Integer from the buffer and returns it.
	 *
	 * @throws BinaryDataException
	 */
	function getVarLong(): Int;

	/**
	 * Writes a 64-bit zigzag-encoded variable-length Integer to the end of the buffer.
	 */
	function putVarLong(v: Int): Void;

	/**
	 * Returns whether the offset has reached the end of the buffer.
	 */
	function feof(): Bool;
}
