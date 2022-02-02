package pocketmine.log;

import php.pthreads.Volatile;

@:native("ThreadedLoggerAttachment")
extern abstract class ThreadedLoggerAttachment extends Volatile {
	abstract public function log(level:Any, message:String):Void;
}
