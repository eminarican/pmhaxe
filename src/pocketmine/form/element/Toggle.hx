package pocketmine.form.element;

import php.TypedArray;

/**
 * Represents a UI on/off switch. The switch may have a default value.
 */
 class Toggle extends CustomFormElement {

	private var def: Bool;

	public function new(name: String, text: String, defaultValue: Bool = false){
		super(name, text);
		this.def = defaultValue;
	}

	public function getType(): String {
		return "toggle";
	}

	public function getDefaultValue(): Bool {
		return this.def;
	}

	public function validateValue(value: Any): Void {
		if (!Std.isOfType(value, Bool)) {
			throw new FormValidationException("Expected bool");
		}
	}

    function serializeElementData(): TypedArray<String, Any> {
		return [
			"default" => this.def
		];
	}
}
