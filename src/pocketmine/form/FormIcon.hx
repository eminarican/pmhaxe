package pocketmine.form;

import php.JsonSerializable;
import php.TypedArray;

/**
 * Represents an icon which can be placed next to options on menus, or as the icon for the server-settings form type.
 */
class FormIcon implements JsonSerializable<TypedArray<String, String>> {

	public static inline final IMAGE_TYPE_URL = "url";
	public static inline final IMAGE_TYPE_PATH = "path";

	private var type: String;
	private var data: String;

	/**
	 * @param String data URL or path depending on the type chosen.
	 * @param String type Can be one of the static finalants at the top of the file, but only "url" is known to work.
	 */
	public function new(data: String, type: String = IMAGE_TYPE_URL) {
		this.type = type;
		this.data = data;
	}

	public function getType(): String {
		return this.type;
	}

	public function getData(): String {
		return this.data;
	}

	public function jsonSerialize(): TypedArray<String, String> {
		return ["type" => this.type, "data" => this.data];
	}
}
