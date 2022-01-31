package pocketmine.log;

import php.pthreads.Threaded;

@:native("ThreadedLogger")
abstract class ThreadedLogger extends Threaded implements Logger {}
