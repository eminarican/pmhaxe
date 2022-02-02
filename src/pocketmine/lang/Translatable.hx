package pocketmine.lang;

import haxe.extern.EitherType;

@:native("pocketmine\\lang\\Translatable")
extern final class Translatable {

	// find out fix
	public function new(text: String, params: EitherType<EitherType<Array<Float>, Array<Int>>, EitherType<Array<String>, Array<Translatable>>>): Void;

	public function getText(): String;

	public function getParameters(): EitherType<Array<String>, Array<Translatable>>;

	public function getParameter(i: EitherType<Int, String>): Null<EitherType<Translatable, String>>;

	public function format(before: String, after: String): Translatable;

	public function prefix(prefix: String): Translatable;

	public function postfix(postfix: String): Translatable;
}
