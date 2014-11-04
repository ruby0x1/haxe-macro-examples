// MIT License
// http://github.com/underscorediscovery/luxe | notes.underscorediscovery.com

import haxe.macro.Expr;
import haxe.macro.Context;

import haxe.crypto.Md5;
import haxe.Timer.stamp;
import Math.random;

class BuildID {

        /** Generate a unique enough string */
    public static function unique_id() : String {
        return Md5.encode(Std.string( stamp()*random() ));
    }

        /** Generates a unique string id at compile time only */
    macro public static function get() {
        return macro $v{ unique_id() };
    }

} //BuildID