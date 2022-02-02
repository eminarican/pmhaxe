package pocketmine.form.element;

import php.TypedArray;

class StepSlider extends BaseSelector {
	public function getType():String {
		return "step_slider";
	}

	function serializeElementData():TypedArray<String, Any> {
		var data:TypedArray<String, Any> = new TypedArray();
		data.set("default", this.defaultOptionIndex);
		data.set("steps", this.options);
		return data;
	}
}
