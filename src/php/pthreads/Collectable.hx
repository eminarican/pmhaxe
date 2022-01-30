package php.pthreads;

/**
 * Collectable Class
 *
 * Garbage Collection interface for references to objects on Worker stacks
 *
 * @link http://www.php.net/manual/en/class.collectable.php
 */
@:native("Collectable")
extern interface Collectable {

    /**
	 * Determine whether an object is ready to be destroyed
	 *
	 * @return bool Whether the referenced object can be destroyed
	 */
    function isGarbage(): Bool;

}
