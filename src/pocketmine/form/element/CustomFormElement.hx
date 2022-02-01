package pocketmine.form.element;

import php.JsonSerializable;
import php.TypedArray;

/**
 * Base class for UI elements which can be placed on custom forms.
 */
 abstract class CustomFormElement implements JsonSerializable<TypedArray<String, Any>> {

	private final name: String;

	private final text: String;

	public function new(name: String, text: String) {
		this.name = name;
		this.text = text;
	}

	/**
	 * Returns the type of element.
	 */
	abstract public function getType(): String;

	/**
	 * Returns the element's name. This is used to identify the element in code.
	 */
	public function getName(): String {
		return this.name;
	}

	/**
	 * Returns the element's label. Usually this is used to explain to the user what a control does.
	 */
	public function getText(): String{
		return this.text;
	}

	/**
	 * Validates that the given value is of the correct type and fits the constraints for the component. This function
	 * should do appropriate type checking and throw whatever errors necessary if the value is not valid.
	 *
	 * @throws FormValidationException
	 */
	abstract public function validateValue(value: Any): Void;

	/**
	 * Returns an array of properties which can be serialized to JSON for sending.
	 */
	final public function jsonSerialize(): TypedArray<String, Any> {
		var data = this.serializeElementData();
        data.set("type", this.getType());
        data.set("text", this.getText());
		return data;
	}

	/**
	 * Returns an array of extra data needed to serialize this element to JSON for showing to a player on a form.
	 */
	abstract function serializeElementData(): TypedArray<String, Any>;
}
