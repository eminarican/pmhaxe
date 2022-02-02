package pocketmine.utils;

@:native("DynamicClassLoader")
extern interface DynamicClassLoader extends ClassLoader {

	/**
	 * Adds a path to the lookup list
	 *
	 * @param String namespacePrefix An empty string, or string ending with a backslash
	 */
	public function addPath(namespacePrefix: String, path: String, prepend: Bool = false): Void;
}
