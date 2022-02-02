package pocketmine.form.element;

import php.TypedArray;

/**
 * Element which displays some text on a form.
 */
class Label extends CustomFormElement {
	public function getType():String {
		return "label";
	}

	public function validateValue(value:Any):Void {}

	function serializeElementData():TypedArray<String, Any> {
		return new TypedArray();
	}
}
