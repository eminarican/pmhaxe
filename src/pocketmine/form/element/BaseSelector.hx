package pocketmine.form.element;

import php.exceptions.InvalidArgumentException;

abstract class BaseSelector extends CustomFormElement {

	private var defaultOptionIndex: Int;
	private var options: Array<String>;

	/**
	 * @throws InvalidArgumentException
	 */
	public function new(name: String, text: String, options: Array<String>, defaultOptionIndex: Int = 0){
		super(name, text);
		this.options = options;

		if(this.options[defaultOptionIndex] == null){
			throw new InvalidArgumentException("No option at index defaultOptionIndex, cannot set as default");
		}
		this.defaultOptionIndex = defaultOptionIndex;
	}

	public function validateValue(value: Any): Void {
		if (!Std.isOfType(value, Int)) {
			throw new FormValidationException("Expected int");
		}
        var value: Int = value;
		if (this.options[value] == null) {
			throw new FormValidationException("Option value does not exist");
		}
	}

	/**
	 * Returns the text of the option at the specified index, or null if it doesn't exist.
	 */
	public function getOption(index: Int): Null<String>{
		return this.options[index];
	}

	public function getDefaultOptionIndex(): Int {
		return this.defaultOptionIndex;
	}

	public function getDefaultOption(): String {
		return this.options[this.defaultOptionIndex];
	}

	public function getOptions(): Array<String> {
		return this.options;
	}
}
