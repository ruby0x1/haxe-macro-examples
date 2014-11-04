// MIT License
//https://github.com/underscorediscovery/haxe-macro-examples | notes.underscorediscovery.com

class TestID {

    public inline static var build_id : String = BuildID.get();

    public function new() {
        trace( build_id );
        trace( 'running build ${build_id}' );
    }

        //called automatically as the entry point
    static function main() {
        new TestID();
    }

}