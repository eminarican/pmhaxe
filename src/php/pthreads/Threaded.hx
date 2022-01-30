package php.pthreads;

import php.interfaces.ArrayAccess;
import php.interfaces.Countable;
import php.interfaces.Traversable;

/**
 * Threaded class
 *
 * Threaded objects form the basis of pthreads ability to execute user code in parallel;
 * they expose and include synchronization methods and various useful interfaces.
 *
 * Threaded objects, most importantly, provide implicit safety for the programmer;
 * all operations on the object scope are safe.
 *
 * @link http://www.php.net/manual/en/class.threaded.php
 * @since 2.0.0
 */
@:native("Threaded")
extern class Threaded implements Traversable implements Countable implements ArrayAccess {

    /**
	 * Increments the object's reference count
	 */
    function addRef(): Void;

    /**
	 * Fetches a chunk of the objects properties table of the given size
	 *
	 * @link http://www.php.net/manual/en/threaded.chunk.php
	 */
    function chunk(size: Int, preserve: Bool = false): NativeArray;

    function count(): Int;

    /**
	 * Decrements the object's reference count
	 */
    function delRef(): Void;

    /**
	 * Runtime extending of the Threaded class
	 */
    static function extend(className: String): Bool;

    /**
	 * Gets the object's reference count
	 */
    function getRefCount(): Int;

    /**
	 * A default method for marking an object as ready to be destroyed
	 */
    function isGarbage(): Bool;

    /**
	 * Tell if the referenced object is executing
	 *
	 * @link http://www.php.net/manual/en/threaded.isrunning.php
	 */
    function isRunning(): Bool;

    /**
	 * Tell if the referenced object exited, suffered fatal errors, or threw uncaught exceptions during execution
	 *
	 * @link http://www.php.net/manual/en/threaded.isterminated.php
	 */
    function isTerminated(): Bool;

    /**
	 * Merges data into the current object
	 *
	 * @link http://www.php.net/manual/en/threaded.merge.php
	 */
    function merge(from: Any, overwrite: Bool = true): Bool;

    /**
	 * Send notification to the referenced object
	 *
	 * @link http://www.php.net/manual/en/threaded.notify.php
	 */
    function notify(): Bool;

    /**
	 * Send notification to one context waiting on the Threaded
	 */
    function notifyOne(): Bool;

    function offsetExists(offset: Dynamic): Bool;

    function offsetGet(offset: Dynamic): Any;

    function offsetSet(offset: Dynamic, value: Dynamic): Void;

    function offsetUnset(offset: Dynamic): Void;

    /**
	 * Pops an item from the objects property table
	 *
	 * @link http://www.php.net/manual/en/threaded.pop.php
	 */
    function pop(): Any;

    /**
	 * The programmer should always implement the run method for objects that are intended for execution.
	 *
	 * @link http://www.php.net/manual/en/threaded.run.php
	 */
    function run(): Void;

    /**
	 * Shifts an item from the objects properties table
	 *
	 * @link http://www.php.net/manual/en/threaded.shift.php
	 */
    function shift(): Any;

    /**
	 * Executes the block while retaining the synchronization lock for the current context.
	 *
	 * @link http://www.php.net/manual/en/threaded.synchronized.php
	 */
    function synchronized(callback: Any -> Void, args: Array<Any>): Any;

    /**
	 * Waits for notification from the Stackable
	 *
	 * @param int timeout An optional timeout in microseconds
	 *
	 * @link http://www.php.net/manual/en/threaded.wait.php
	 * @return bool A boolean indication of success
	 */
    function wait(timeout: Int = 0): Bool;
}
