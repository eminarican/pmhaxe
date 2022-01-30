package php.pthreads;

import php.Syntax;

class Pthreads {

    /**
	 * The default inheritance mask used when starting Threads and Workers
	 */
    public static var PTHREADS_INHERIT_ALL(get, never):Int;

    private static inline function get_PTHREADS_INHERIT_ALL():Int return Syntax.code("PTHREADS_INHERIT_ALL_NONE");

    /**
     * Nothing will be inherited by the new context
     */
    public static var PTHREADS_INHERIT_NONE(get, never):Int;

    private static inline function get_PTHREADS_INHERIT_NONE():Int return Syntax.code("PTHREADS_INHERIT_NONE");

    /**
     * Determines whether the ini entries are inherited by the new context
     */
    public static var PTHREADS_INHERIT_INI(get, never):Int;

    private static inline function get_PTHREADS_INHERIT_INI():Int return Syntax.code("PTHREADS_INHERIT_INI");

    /**
     * Determines whether the constants are inherited by the new context
     */
    public static var PTHREADS_INHERIT_CONSTANTS(get, never):Int;

    private static inline function get_PTHREADS_INHERIT_CONSTANTS():Int return Syntax.code("PTHREADS_INHERIT_CONSTANTS");

    /**
     * Determines whether the class table is inherited by the new context
     */
    public static var PTHREADS_INHERIT_CLASSES(get, never):Int;

    private static inline function get_PTHREADS_INHERIT_CLASSES():Int return Syntax.code("PTHREADS_INHERIT_CLASSES");

    /**
     * Determines whether the function table is inherited by the new context
     */
    public static var PTHREADS_INHERIT_FUNCTIONS(get, never):Int;

    private static inline function get_PTHREADS_INHERIT_FUNCTIONS():Int return Syntax.code("PTHREADS_INHERIT_FUNCTIONS");

    /**
     * Determines whether the included_files table is inherited by the new context
     */
    public static var PTHREADS_INHERIT_INCLUDES(get, never):Int;

    private static inline function get_PTHREADS_INHERIT_INCLUDES():Int return Syntax.code("PTHREADS_INHERIT_INCLUDES");

    /**
     * Determines whether the comments are inherited by the new context
     */
    public static var PTHREADS_INHERIT_COMMENTS(get, never):Int;

    private static inline function get_PTHREADS_INHERIT_COMMENTS():Int return Syntax.code("PTHREADS_INHERIT_COMMENTS");

    /**
     * Allow output headers from the threads
     */
    public static var PTHREADS_ALLOW_HEADERS(get, never):Int;

    private static inline function get_PTHREADS_ALLOW_HEADERS():Int return Syntax.code("PTHREADS_ALLOW_HEADERS");

}
