package pocketmine.form;

import php.exceptions.InvalidArgumentException;
import php.TypedArray;

class CustomFormResponse {

	private var data: TypedArray<String, Any>;

	public function new(data: TypedArray<String, Any>) {
		this.data = data;
	}

	public function getInt(name: String): Int {
		return this.get(name);
	}

	public function getString(name: String): String {
		return this.get(name);
	}

	public function getFloat(name: String): Float {
		return this.get(name);
	}

	public function getBool(name: String): Bool {
		return this.get(name);
	}

    private function get(name: String): Any {
        this.checkExists(name);
		return this.data.get(name);
    }

	private function checkExists(name: String): Void {
		if(!this.data.hasKey(name)){
			throw new InvalidArgumentException("Value \"name\" not found");
		}
	}
}
