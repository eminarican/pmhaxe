package php.pthreads;

import php.pthreads.Pthreads;

/**
 * Basic thread implementation
 *
 * An implementation of a Thread should extend this declaration, implementing the run method.
 * When the start method of that object is called, the run method code will be executed in separate Thread.
 *
 * @link http://www.php.net/manual/en/class.thread.php
 */
@:native("Thread")
extern class Thread extends Threaded {

    /**
	 * Will return the identity of the Thread that created the referenced Thread
	 *
	 * @link http://www.php.net/manual/en/thread.getcreatorid.php
	 */
    function getCreatorId():Int;

    /**
	 * Will return the instance of currently executing thread
	 */
    static function getCurrentThread():Thread;

    /**
	 * Will return the identity of the currently executing thread
	 *
	 * @link http://www.php.net/manual/en/thread.getcurrentthreadid.php
	 */
    static function getCurrentThreadId():Int;

    /**
	 * Will return the identity of the referenced Thread
	 *
	 * @link http://www.php.net/manual/en/thread.getthreadid.php
	 */
    function getThreadId():Int;

    /**
	 * Tell if the referenced Thread has been joined by another context
	 *
	 * @link http://www.php.net/manual/en/thread.isjoined.php
	 */
    function isJoined():Bool;

    /**
	 * Tell if the referenced Thread has been started
	 *
	 * @link http://www.php.net/manual/en/thread.isstarted.php
	 */
    function isStarted():Bool;

    /**
	 * Causes the calling context to wait for the referenced Thread to finish executing
	 *
	 * @link http://www.php.net/manual/en/thread.join.php
	 */
    function join():Bool;

    /**
	 * Will start a new Thread to execute the implemented run method
	 *
	 * @link http://www.php.net/manual/en/thread.start.php
	 */
    function start(options:Int = 0x111111):Bool;

}
