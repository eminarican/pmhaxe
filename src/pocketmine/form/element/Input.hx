package pocketmine.form.element;

import php.TypedArray;

/**
 * Element which accepts text input. The text-box can have a default value, and may also have a text hint when there is
 * no text in the box.
 */
class Input extends CustomFormElement {

	private var hint: String;
	private var def: String;

	public function new(name: String, text: String, hintText: String = "", defaultText: String = "") {
		super(name, text);
		this.hint = hintText;
		this.def = defaultText;
	}

	public function getType(): String {
		return "input";
	}

	public function validateValue(value: Any): Void {
		if (!Std.isOfType(value, String)) {
			throw new FormValidationException("Expected string");
		}
	}

	/**
	 * Returns the text shown in the text-box when the box is not focused and there is no text in it.
	 */
	public function getHintText(): String {
		return this.hint;
	}

	/**
	 * Returns the text which will be in the text-box by default.
	 */
	public function getDefaultText(): String {
		return this.def;
	}

	function serializeElementData(): TypedArray<String, Any> {
		return [
			"placeholder" => this.hint,
			"default" => this.def
		];
	}
}
