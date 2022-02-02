package pocketmine.form;

import php.TypedArray;
import pocketmine.player.Player;

/**
 * This form type presents a simple "yes/no" dialog with two buttons.
 */
class ModalForm extends BaseForm {

	private var content: String;

	private var button1: String;
	private var button2: String;

	private var onSubmit: (Player, Bool) -> Void;

	/**
	 * @param String   title Text to put on the title of the dialog.
	 * @param String   text Text to put in the body.
	 * @param Closure  onSubmit signature `function(player: Player, choice: Bool)`
	 * @param String   yesButtonText Text to show on the "Yes" button. Defaults to client-translated "Yes" String.
	 * @param String   noButtonText Text to show on the "No" button. Defaults to client-translated "No" String.
	 */
	public function new(title: String, text: String, onSubmit: (Player, Bool) -> Void, yesButtonText: String = "gui.yes", noButtonText: String = "gui.no"){
		super(title);
		this.content = text;
		this.onSubmit = onSubmit;
		this.button1 = yesButtonText;
		this.button2 = noButtonText;
	}

	public function getYesButtonText(): String {
		return this.button1;
	}

	public function getNoButtonText(): String {
		return this.button2;
	}

	final public function handleResponse(player: Player, data: Null<Any>): Void {
        if (data == null) {
            return;
		} else if (Std.isOfType(data, Bool)) {
            this.onSubmit(player, data);
		}else{
			throw new FormValidationException("Expected bool");
		}
	}

	function getType(): String {
		return "modal";
	}

	function serializeFormData(): TypedArray<String, Any> {
		return [
			"content" => this.content,
			"button1" => this.button1,
			"button2" => this.button2
		];
	}
}
