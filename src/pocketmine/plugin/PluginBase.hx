package pocketmine.plugin;

@:native("pocketmine\\plugin\\PluginBase")
extern abstract class PluginBase {

    function onEnable(): Void;

    function onDisable(): Void;
}
