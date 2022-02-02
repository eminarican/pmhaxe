package pocketmine.form;

import pocketmine.form.element.CustomFormElement;
import pocketmine.player.Player;
import php.TypedArray;

/**
 * Represents a custom form which can be shown in the Settings menu on the client. This is exactly the same as a regular
 * CustomForm, except that this type can also have an icon which can be shown on the settings section button.
 *
 * Passing this form to {@link Player::sendForm()} will not show a form with an icon nor set this form as the server
 * settings.
 */
class ServerSettingsForm extends CustomForm {

	private final icon: Null<FormIcon>;

	public function new(title: String, elements: Array<CustomFormElement>, icon: Null<FormIcon>, onSubmit: (Player, CustomFormResponse) -> Void, onClose: Null<(Player) -> Void> = null) {
		super(title, elements, onSubmit, onClose);
		this.icon = icon;
	}

	public function hasIcon(): Bool {
		return this.icon != null;
	}

	public function getIcon(): Null<FormIcon> {
		return this.icon;
	}

	override function serializeFormData(): TypedArray<String, Any> {
		var data = super.serializeFormData();

		if (this.hasIcon()) {
			data.set("icon", this.icon);
		}

		return data;
	}
}
