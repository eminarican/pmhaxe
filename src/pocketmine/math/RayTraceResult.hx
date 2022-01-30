package pocketmine.math;

@:native("pocketmine\\math\\RayTraceResult")
extern class RayTraceResult {

    function getBoundingBox(): AxisAlignedBB;

	function getHitFace(): Int;

	function getHitVector() : Vector3;
}
