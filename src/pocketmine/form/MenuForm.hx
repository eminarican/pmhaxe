package pocketmine.form;

import php.TypedArray;
import pocketmine.player.Player;

/**
 * This form type presents a menu to the user with a list of options on it. The user may select an option or close the
 * form by clicking the X in the top left corner.
 */
class MenuForm extends BaseForm {

	private var content: String;
	private var options: Array<MenuOption>;

	private var onSubmit: (Player, Int) -> Void;
	private var onClose: Null<(Player) -> Void>;

	public function new(title: String, text: String, options: Array<MenuOption>, onSubmit: (Player, Int) -> Void, onClose: Null<(Player) -> Void> = null): Void {
		super(title);
		this.content = text;
		this.options = options;
		this.onClose = onClose;
		this.onSubmit = onSubmit;
	}

	public function getOption(position: Int): Null<MenuOption> {
		return this.options[position];
	}

	final public function handleResponse(player: Player, data: Null<Any>): Void {
		if (data == null) {
			if (this.onClose != null) {
				this.onClose(player);
			}
		} else if (Std.isOfType(data, Int)) {
			var data: Int = data;
			if (this.options[data] == null) {
				throw new FormValidationException("Option data does not exist");
			}
			this.onSubmit(player, data);
		} else {
			throw new FormValidationException("Expected int or null");
		}
	}

	function getType(): String {
		return "form";
	}

	function serializeFormData(): TypedArray<String, Any> {
		var data: TypedArray<String, Any> = new TypedArray();
		data.set("buttons", this.options);
		data.set("content", this.content);
		return data;
	}
}
