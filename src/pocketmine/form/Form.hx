package pocketmine.form;

import php.TypedArray;
import php.JsonSerializable;
import pocketmine.player.Player;

@:native("pocketmine\\form\\Form")
extern interface Form extends JsonSerializable<TypedArray<String, Any>> {
	/**
	 * Handles a form response from a player.
	 *
	 * @param Any  data
	 *
	 * @throws FormValidationException if the data could not be processed
	 */
	public function handleResponse(player:Player, data:Null<Any>):Void;
}
