package pocketmine.form.element;

import php.exceptions.InvalidArgumentException;
import php.TypedArray;

class Slider extends CustomFormElement{

	private var def: Float;
	private var min: Float;
	private var max: Float;
	private var step: Float;

	public function new(name: String, text: String, min: Float, max: Float, step: Float = 1.0, def: Null<Float> = null){
		super(name, text);

		if(this.min > this.max){
			throw new InvalidArgumentException("Slider min value should be less than max value");
		}
		this.min = min;
		this.max = max;

		if (def != null) {
			if (def > this.max || def < this.min) {
				throw new InvalidArgumentException("Default must be in range this.min ... this.max");
			}
			this.def = def;
		} else {
			this.def = this.min;
		}

		if (step <= 0) {
			throw new InvalidArgumentException("Step must be greater than zero");
		}
		this.step = step;
	}

	public function getType(): String{
		return "slider";
	}

	public function validateValue(value: Any): Void {
		if (!Std.isOfType(value, Float)) {
			throw new FormValidationException("Expected Float");
		}
        var value: Float = value;
		if (value < this.min || value > this.max) {
			throw new FormValidationException("Value value is out of bounds (min this.min, max this.max)");
		}
	}

	public function getMin(): Float {
		return this.min;
	}

	public function getMax(): Float {
		return this.max;
	}

	public function getStep(): Float {
		return this.step;
	}

	public function getDefault(): Float {
		return this.def;
	}

	function serializeElementData(): TypedArray<String, Any>{
		return [
			"min" => this.min,
			"max" => this.max,
			"default" => this.def,
			"step" => this.step
		];
	}
}
