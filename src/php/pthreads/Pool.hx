package php.pthreads;

import php.TypedArray;
import php.interfaces.Closure;

/**
 * Pool class
 *
 * A Pool is a container for, and controller of, a number of Worker threads, the number of threads can be adjusted
 * during execution, additionally the Pool provides an easy mechanism to maIntain and collect references in the
 * proper way.
 *
 * @link http://www.php.net/manual/en/class.pool.php
 */
@:native("Pool")
extern class Pool {

    /**
	 * Construct a new Pool of Workers
	 *
	 * @link http://www.php.net/manual/en/pool.__construct.php
	 */
    function new(size: Int, workerClass: String, ctor: TypedArray<Int, Dynamic>);

    /**
	 * Collect references to completed tasks
	 *
	 * Allows the Pool to collect references determined to be garbage by the given collector
	 *
	 * @link http://www.php.net/manual/en/pool.collect.php
	 */
    function collect(collector: Closure = null): Int;

    /**
	 * Resize the Pool
	 *
	 * @link http://www.php.net/manual/en/pool.resize.php
	 */
    function resize(size: Int): Int;

    /**
	 * Shutdown all Workers in this Pool
	 *
	 * @link http://www.php.net/manual/en/pool.shutdown.php
	 */
    function shutdown(): Void;

    /**
	 * Submit the task to the next Worker in the Pool
	 *
	 * @param Threaded task The task for execution
	 */
    function submit(task: Threaded): Int;

    /**
	 * Submit the task to the specific Worker in the Pool
	 *
	 * @param Int      worker The worker for execution
	 * @param Threaded task The task for execution
	 */
    function submitTo(worker: Int, task: Threaded): Int;
}
