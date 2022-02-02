package pocketmine.form.element;

import php.TypedArray;

class Dropdown extends BaseSelector {

	public function getType(): String {
		return "dropdown";
	}

	function serializeElementData(): TypedArray<String, Any> {
        var data: TypedArray<String, Any> = new TypedArray();
        data.set("default", this.defaultOptionIndex);
        data.set("options", this.options);
		return data;
	}
}
