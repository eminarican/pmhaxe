package pocketmine.form;

import php.JsonSerializable;
import php.TypedArray;

/**
 * Represents an option on a MenuForm. The option is shown as a button and may optionally have an image next to it.
 */
class MenuOption implements JsonSerializable<TypedArray<String, Any>> {

	private var text: String;
	private var image: Null<FormIcon>;

	public function __construct(text: String, image: Null<FormIcon> = null) {
		this.text = text;
		this.image = image;
	}

	public function getText(): String {
		return this.text;
	}

	public function hasImage(): Bool {
		return this.image != null;
	}

	public function getImage(): Null<FormIcon> {
		return this.image;
	}

	public function jsonSerialize(): TypedArray<String, Any> {
		var json: TypedArray<String, Any> = ["text" => this.text];

		if (this.hasImage()) {
			json.set("image", this.image);
		}

		return json;
	}
}
