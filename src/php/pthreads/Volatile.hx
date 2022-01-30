package php.pthreads;

/**
 * Volatile class
 *
 * The Volatile class is new to pthreads v3. Its introduction is a consequence of the new immutability semantics of
 * Threaded members of Threaded classes. The Volatile class enables for mutability of its Threaded members, and is also
 * used to store PHP arrays in Threaded contexts.
 *
 * @link http://php.net/manual/en/class.volatile.php
 * @since 3.0.0
 */
@:native("Volatile")
extern class Volatile extends Threaded {}
