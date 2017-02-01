package gimp;

import python.Tuple;

class Parameters {
    
    static public inline function image(name:String = 'image', description:String = 'Input image', default_value:String = null) {
        return Tuple4.make(GimpFu.PF_IMAGE, name, description, default_value);
    }
    
    static public inline function drawable(name:String = 'drawable', description:String = 'Input drawable', default_value:String = null) {
        return Tuple4.make(GimpFu.PF_DRAWABLE, name, description, default_value);
    }
    
    static public inline function dirname(name:String = 'dirname', description:String = 'Input dirname', default_value:String = null) {
        return Tuple4.make(GimpFu.PF_DIRNAME, name, description, default_value);
    }
    
    static public inline function string(name:String = 'string', description:String = 'Input string', default_value:String = null) {
        return Tuple4.make(GimpFu.PF_STRING, name, description, default_value);
    }
    
    static public inline function toggle(name:String = 'toogle', description:String = 'Input toogle', default_value:UInt = 0) {
        return Tuple4.make(GimpFu.PF_TOGGLE, name, description, default_value);
    }
    
}
