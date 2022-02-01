package pocketmine.utils;

import haxe.ds.Option;

abstract class Transform {

    public static function nullableToOption<T>(nullable: T): Option<T> {
        return if (nullable != null) {
            Some(nullable);
        } else {
            None;
        }
    }

    public static function nullableToBool<T>(nullable: T): Bool {
        return if (nullable != null) {
             true;
        } else {
            false;
        }
    }

    public static function optionToBool<T>(option: Option<T>): Bool {
        return switch option {
            case Some(v):
                return true;
            case None:
                return false;
        }
    }

    public static function optionToBoolWithAction<T>(option: Option<T>, action: (T) -> Void): Bool {
        return switch option {
            case Some(v):
                action(v);
                return true;
            case None:
                return false;
        }
    }
}
