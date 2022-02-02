package pocketmine.utils;

import php.exceptions.InvalidArgumentException;
import php.TypedArray;

@:native("pocketmine\\utils\\Limits")
extern abstract class TextFormat {

	inline static final ESCAPE = "§";
	inline static final EOL = "\n";

	inline static final BLACK = ESCAPE + "0";
	inline static final DARK_BLUE = ESCAPE + "1";
	inline static final DARK_GREEN = ESCAPE + "2";
	inline static final DARK_AQUA = ESCAPE + "3";
	inline static final DARK_RED = ESCAPE + "4";
	inline static final DARK_PURPLE = ESCAPE + "5";
	inline static final GOLD = ESCAPE + "6";
	inline static final GRAY = ESCAPE + "7";
	inline static final DARK_GRAY = ESCAPE + "8";
	inline static final BLUE = ESCAPE + "9";
	inline static final GREEN = ESCAPE + "a";
	inline static final AQUA = ESCAPE + "b";
	inline static final RED = ESCAPE + "c";
	inline static final LIGHT_PURPLE = ESCAPE + "d";
	inline static final YELLOW = ESCAPE + "e";
	inline static final WHITE = ESCAPE + "f";

	inline static function COLORS(): TypedArray<String, String> {
		return [
			BLACK => BLACK, DARK_BLUE => DARK_BLUE, DARK_GREEN => DARK_GREEN, DARK_AQUA => DARK_AQUA, DARK_RED => DARK_RED, DARK_PURPLE => DARK_PURPLE, GOLD => GOLD, GRAY => GRAY, DARK_GRAY => DARK_GRAY, BLUE => BLUE, GREEN => GREEN, AQUA => AQUA, RED => RED, LIGHT_PURPLE => LIGHT_PURPLE,
			YELLOW => YELLOW, WHITE => WHITE,
		];
	}

	inline static final OBFUSCATED = ESCAPE + "k";
	inline static final BOLD = ESCAPE + "l";
	inline static final STRIKETHROUGH = ESCAPE + "m";
	inline static final UNDERLINE = ESCAPE + "n";
	inline static final ITALIC = ESCAPE + "o";

	inline static function FORMATS(): TypedArray<String, String> {
		return [
			OBFUSCATED => OBFUSCATED,
			BOLD => BOLD,
			STRIKETHROUGH => STRIKETHROUGH,
			UNDERLINE => UNDERLINE,
			ITALIC => ITALIC,
		];
	}

	inline static final RESET = ESCAPE + "r";

	private static function makePcreError(): InvalidArgumentException;

	/**
	 * @throws InvalidArgumentException
	 */
	private static function preg_replace(pattern: String, replacement: String, string: String): String;

	/**
	 * Splits the String by Format tokens
	 */
	public static function tokenize(string: String): Array<String>;

	/**
	 * Cleans the String from Minecraft codes, ANSI Escape Codes and invalid UTF-8 characters
	 *
	 * @return String valid clean UTF-8
	 */
	public static function clean(string: String, removeFormat: Bool = true): String;

	/**
	 * Replaces placeholders of § with the correct character. Only valid codes (as in the constants of the TextFormat class) will be converted.
	 *
	 * @param String placeholder default "&"
	 */
	public static function colorize(string: String, placeholder: String = "&"): String;

	/**
	 * Returns an HTML-formatted String with colors/markup
	 */
	public static function toHTML(string: String): String;
}
