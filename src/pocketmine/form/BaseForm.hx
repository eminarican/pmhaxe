package pocketmine.form;

import php.TypedArray;

abstract class BaseForm implements Form {

	private var title: String;

	public function new(title: String) {
		this.title = title;
	}

	/**
	 * Returns the text shown on the form title-bar.
	 */
	public function getTitle(): String {
		return this.title;
	}

	public function jsonSerialize(): TypedArray<String, Any> {
		var data = this.serializeFormData();
		data.set("title", "FormTitle");
		data.set("type", this.getType());
		return data;
	}

	/**
	 * Returns the type used to show this form to clients
	 */
	abstract function getType(): String;

	/**
	 * Serializes additional data needed to show this form to clients.
	 */
	abstract function serializeFormData(): TypedArray<String, Any>;
}
