package pocketmine.form;

import pocketmine.form.element.CustomFormElement;
import php.exceptions.InvalidArgumentException;
import pocketmine.utils.Transform;
import pocketmine.player.Player;
import php.TypedArray;
import haxe.ds.Option;

class CustomForm extends BaseForm {

    private var elements: TypedArray<String, CustomFormElement>;

    private var onSubmit: (Player, CustomFormResponse) -> Void;
    private var onClose: Null<(Player) -> Void>;

    public function new(title: String, elements: Array<CustomFormElement>, onSubmit: (Player, CustomFormResponse) -> Void, onClose: Null<(Player) -> Void> = null) {
        super(title);
        this.elements = new TypedArray();
        this.onSubmit = onSubmit;
        this.onClose = onClose;

        for (element in elements) {
            if (this.elements.hasKey(element.getName())) {
                throw new InvalidArgumentException('Multiple elements cannot have the same name, found \"${element.getName()}\" more than once');
            }
            this.elements.set(element.getName(), element);
        }
    }

    public function getElement(name: String): Option<CustomFormElement> {
        return Transform.nullableToOption(this.elements.get(name));
    }

	public function handleResponse(player: Player, data: Null<Any>) {
        if (data == null) {
            if (this.onClose != null) {
                this.onClose(player);
            }
        } else if (Std.isOfType(data, TypedArray)) {
            var data: Array<Any> = data;
            if (this.elements.length != data.length) {
                throw new FormValidationException("Response data is invalid");
            }

            var index = 0;
            var values: TypedArray<String, Any> = new TypedArray();
            this.elements.foreachKeyValue((name, element) -> {
                var value = data[index];
                try {
					element.validateValue(value);
				} catch(e: FormValidationException) {
					throw new FormValidationException('Validation failed for element \"${element.getName()}\": ${e.getMessage()}', 0, e);
				}
                values.set(name, value);
            });

            this.onSubmit(player, new CustomFormResponse(values));
        } else {
            throw new FormValidationException("Expected array or null");
        }
    }

	function getType(): String {
		return "custom_form";
	}

	function serializeFormData(): TypedArray<String, Any> {
		return [
            "content" => this.elements,
        ];
	}
}
