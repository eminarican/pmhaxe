package php.pthreads;

import php.interfaces.Closure;

/**
 * Worker
 *
 * Worker Threads have a persistent context, as such should be used over Threads in most cases.
 *
 * When a Worker is started, the run method will be executed, but the Thread will not leave until one
 * of the following conditions are met:
 *   - the Worker goes out of scope (no more references remain)
 *   - the programmer calls shutdown
 *   - the script dies
 * This means the programmer can reuse the context throughout execution; placing objects on the stack of
 * the Worker will cause the Worker to execute the stacked objects run method.
 *
 * @link http://www.php.net/manual/en/class.worker.php
 */
@:native("Worker")
extern class Worker extends Thread {

    /**
	 * Executes the optional collector on each of the tasks, removing the task if true is returned
	 */
    function collect(collectFunc: Closure = null): Int;

    /**
	 * Executes the collector on the collectable object passed
	 */
    function collector(collectable: Collectable): Bool;

    /**
	 * Returns the number of threaded tasks waiting to be executed by the referenced Worker
	 *
	 * @link http://www.php.net/manual/en/worker.getstacked.php
	 */
    function getStacked(): Int;

    /**
	 * Tell if the referenced Worker has been shutdown
	 *
	 * @link http://www.php.net/manual/en/worker.isshutdown.php
	 */
    function isShutdown(): Bool;

    /**
	 * Shuts down the Worker after executing all the threaded tasks previously stacked
	 *
	 * @link http://www.php.net/manual/en/worker.shutdown.php
	 */
    function shutdown(): Bool;

    /**
	 * Appends the referenced object to the stack of the referenced Worker
	 *
	 * @param Threaded work Threaded object to be executed by the referenced Worker
	 *
	 * @link http://www.php.net/manual/en/worker.stack.php
	 * @return int The new length of the stack
	 */
    function stack(work: Threaded): Int;

    /**
	 * Removes the first task (the oldest one) in the stack.
	 *
	 * @link http://www.php.net/manual/en/worker.unstack.php
	 */
    function unstack(): Null<Collectable>;
}
