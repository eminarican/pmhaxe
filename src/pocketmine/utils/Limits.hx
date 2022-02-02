package pocketmine.utils;

@:native("pocketmine\\utils\\Limits")
extern final class Limits {
	inline static final UINT8_MAX = 0xff;
	inline static final INT8_MIN = -0x7f - 1;
	inline static final INT8_MAX = 0x7f;

	inline static final UINT16_MAX = 0xffff;
	inline static final INT16_MIN = -0x7fff - 1;
	inline static final INT16_MAX = 0x7fff;

	inline static final UINT32_MAX = 0xffffffff;
	inline static final INT32_MIN = -0x7fffffff - 1;
	inline static final INT32_MAX = 0x7fffffff;

	// Todo: find out fix
	// inline static final UINT64_MAX = 0xffffffffffffffff;
	inline static final INT64_MIN = -0x7fffffffffffffff - 1;
	// inline static final INT64_MAX = 0x7fffffffffffffff;
}
