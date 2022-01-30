package pocketmine.utils;

import php.Ref;

@:native("pocketmine\\utils\\Binary")
extern class Binary {
    
    static function signByte(value: Int): Int;

	static function unsignByte(value: Int): Int;

	static function signShort(value: Int): Int;

	static function unsignShort(value: Int): Int;

	static function signInt(value: Int): Int;

	static function unsignInt(value: Int): Int;

	static function flipShortEndianness(value: Int): Int;

	static function flipIntEndianness(value: Int): Int;

	static function flipLongEndianness(value: Int): Int;

	/**
	 * Reads a byte Boolean
	 */
	static function readBool(b: String): Bool;

	/**
	 * Writes a byte Boolean
	 */
	static function writeBool(b: Bool): String;

	/**
	 * Reads an unsigned byte (0 - 255)
	 *
	 * @throws BinaryDataException
	 */
	static function readByte(c: String): Int;

	/**
	 * Reads a signed byte (-128 - 127)
	 *
	 * @throws BinaryDataException
	 */
	static function readSignedByte(c: String): Int;

	/**
	 * Writes an unsigned/signed byte
	 */
	static function writeByte(c: Int): String;

	/**
	 * Reads a 16-bit unsigned big-endian number
	 *
	 * @throws BinaryDataException
	 */
	static function readShort(str: String): Int;

	/**
	 * Reads a 16-bit signed big-endian number
	 *
	 * @throws BinaryDataException
	 */
	static function readSignedShort(str: String): Int;

	/**
	 * Writes a 16-bit signed/unsigned big-endian number
	 */
	static function writeShort(value: Int): String;

	/**
	 * Reads a 16-bit unsigned little-endian number
	 *
	 * @throws BinaryDataException
	 */
	static function readLShort(str: String): Int;

	/**
	 * Reads a 16-bit signed little-endian number
	 *
	 * @throws BinaryDataException
	 */
	static function readSignedLShort(str: String): Int;

	/**
	 * Writes a 16-bit signed/unsigned little-endian number
	 */
	static function writeLShort(value: Int): String;

	/**
	 * Reads a 3-byte big-endian number
	 *
	 * @throws BinaryDataException
	 */
	static function readTriad(str: String): Int;

	/**
	 * Writes a 3-byte big-endian number
	 */
	static function writeTriad(value: Int): String;

	/**
	 * Reads a 3-byte little-endian number
	 *
	 * @throws BinaryDataException
	 */
	static function readLTriad(str: String): Int;

	/**
	 * Writes a 3-byte little-endian number
	 */
	static function writeLTriad(value: Int): String;

	/**
	 * Reads a 4-byte signed Integer
	 *
	 * @throws BinaryDataException
	 */
	static function readInt(str: String): Int;

	/**
	 * Writes a 4-byte Integer
	 */
	static function writeInt(value: Int): String;

	/**
	 * Reads a 4-byte signed little-endian Integer
	 *
	 * @throws BinaryDataException
	 */
	static function readLInt(str: String): Int;

	/**
	 * Writes a 4-byte signed little-endian Integer
	 */
	static function writeLInt(value: Int): String;

	/**
	 * Reads a 4-byte Floating-poInt number
	 *
	 * @throws BinaryDataException
	 */
	static function readFloat(str: String): Float;

	/**
	 * Reads a 4-byte Floating-poInt number, rounded to the specified number of decimal places.
	 *
	 * @throws BinaryDataException
	 */
	static function readRoundedFloat(str: String, accuracy: Int): Float;

	/**
	 * Writes a 4-byte Floating-poInt number.
	 */
	static function writeFloat(value: Float): String;

	/**
	 * Reads a 4-byte little-endian Floating-poInt number.
	 *
	 * @throws BinaryDataException
	 */
	static function readLFloat(str: String): Float;

	/**
	 * Reads a 4-byte little-endian Floating-poInt number rounded to the specified number of decimal places.
	 *
	 * @throws BinaryDataException
	 */
	static function readRoundedLFloat(str: String, accuracy: Int): Float;

	/**
	 * Writes a 4-byte little-endian Floating-poInt number.
	 */
	static function writeLFloat(value: Float): String;

	/**
	 * Returns a prIntable Floating-poInt number.
	 */
	static function prIntFloat(value: Float): String;

	/**
	 * Reads an 8-byte Floating-poInt number.
	 *
	 * @throws BinaryDataException
	 */
	static function readDouble(str: String): Float;

	/**
	 * Writes an 8-byte Floating-poInt number.
	 */
	static function writeDouble(value: Float): String;

	/**
	 * Reads an 8-byte little-endian Floating-poInt number.
	 *
	 * @throws BinaryDataException
	 */
	static function readLDouble(str: String): Float;

	/**
	 * Writes an 8-byte Floating-poInt little-endian number.
	 */
	static function writeLDouble(value: Float): String;

	/**
	 * Reads an 8-byte Integer.
	 *
	 * @throws BinaryDataException
	 */
	static function readLong(str: String): Int;

	/**
	 * Writes an 8-byte Integer.
	 */
	static function writeLong(value: Int): String;

	/**
	 * Reads an 8-byte little-endian Integer.
	 *
	 * @throws BinaryDataException
	 */
	static function readLLong(str: String): Int;

	/**
	 * Writes an 8-byte little-endian Integer.
	 */
	static function writeLLong(value: Int): String;

	/**
	 * Reads a 32-bit zigzag-encoded variable-length Integer.
	 *
	 * @param Int    offset reference parameter
	 *
	 * @throws BinaryDataException
	 */
	static function readVarInt(buffer: String, offset: Ref<Int>): Int;

	/**
	 * Reads a 32-bit variable-length unsigned Integer.
	 *
	 * @param Int    offset reference parameter
	 *
	 * @throws BinaryDataException if the var-Int did not end after 5 bytes or there were not enough bytes
	 */
	static function readUnsignedVarInt(buffer: String, offset: Ref<Int>): Int;

	/**
	 * Writes a 32-bit Integer as a zigzag-encoded variable-length Integer.
	 */
	static function writeVarInt(v: Int): String;

	/**
	 * Writes a 32-bit unsigned Integer as a variable-length Integer.
	 *
	 * @return String up to 5 bytes
	 */
	static function writeUnsignedVarInt(value: Int): String;

	/**
	 * Reads a 64-bit zigzag-encoded variable-length Integer.
	 *
	 * @param Int    offset reference parameter
	 *
	 * @throws BinaryDataException
	 */
	static function readVarLong(buffer: String, offset: Ref<Int>): Int;

	/**
	 * Reads a 64-bit unsigned variable-length Integer.
	 *
	 * @param Int    offset reference parameter
	 *
	 * @throws BinaryDataException if the var-Int did not end after 10 bytes or there were not enough bytes
	 */
	static function readUnsignedVarLong(buffer: String, offset: Ref<Int>): Int;

	/**
	 * Writes a 64-bit Integer as a zigzag-encoded variable-length long.
	 */
	static function writeVarLong(v: Int): String;

	/**
	 * Writes a 64-bit unsigned Integer as a variable-length long.
	 */
	static function writeUnsignedVarLong(value: Int): String;
}
