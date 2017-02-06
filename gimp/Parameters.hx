package gimp;

import python.Syntax;
import python.Tuple;

class Parameters {
    
    static inline function generic_tuple4_param(type:UInt, name:String, description:String, default_value:Any) {
        return Tuple4.make(type, name, description, default_value);
    }
    
    static public inline function int(name:String = 'int', description:String = 'Input integer', default_value:Int = 0) {
        return generic_tuple4_param(GimpFu.PF_INT, name, description, default_value);
    }
    
    static public inline function int8(name:String = 'int8', description:String = 'Input integer', default_value:Int = 0) {
        return generic_tuple4_param(GimpFu.PF_INT8, name, description, default_value);
    }
    
    static public inline function int16(name:String = 'int16', description:String = 'Input integer', default_value:Int = 0) {
        return generic_tuple4_param(GimpFu.PF_INT16, name, description, default_value);
    }
    
    static public inline function int32(name:String = 'int32', description:String = 'Input integer', default_value:Int = 0) {
        return generic_tuple4_param(GimpFu.PF_INT32, name, description, default_value);
    }
    
    static public inline function float(name:String = 'float', description:String = 'Input float', default_value:Float = 0) {
        return generic_tuple4_param(GimpFu.PF_FLOAT, name, description, default_value);
    }
    
    static public inline function string(name:String = 'string', description:String = 'Input string', default_value:String = null) {
        return generic_tuple4_param(GimpFu.PF_STRING, name, description, default_value);
    }
    
    static public inline function text(name:String = 'text', description:String = 'Input text', default_value:String = null) {
        return generic_tuple4_param(GimpFu.PF_TEXT, name, description, default_value);
    }
    
    static public inline function color(name:String = 'color', description:String = 'Input color', default_value:Color = null) {
        return generic_tuple4_param(GimpFu.PF_COLOR, name, description, default_value);
    }
    
    static public inline function image(name:String = 'image', description:String = 'Input image', default_value:String = null) {
        return generic_tuple4_param(GimpFu.PF_IMAGE, name, description, default_value);
    }
    
    static public inline function layer(name:String = 'layer', description:String = 'Input layer', default_value:String = null) {
        return generic_tuple4_param(GimpFu.PF_LAYER, name, description, default_value);
    }
    
    static public inline function channel(name:String = 'channel', description:String = 'Input channel', default_value:String = null) {
        return generic_tuple4_param(GimpFu.PF_CHANNEL, name, description, default_value);
    }
    
    static public inline function drawable(name:String = 'drawable', description:String = 'Input drawable', default_value:String = null) {
        return generic_tuple4_param(GimpFu.PF_DRAWABLE, name, description, default_value);
    }
    
    static public inline function toggle(name:String = 'toogle', description:String = 'Input toogle', default_value:UInt = 0) {
        return generic_tuple4_param(GimpFu.PF_TOGGLE, name, description, default_value);
    }
    
    static public inline function boolean(name:String = 'boolean', description:String = 'Input boolean', default_value:Bool = false) {
        return generic_tuple4_param(GimpFu.PF_BOOL, name, description, default_value);
    }
    
    // radio(radio', 'Input radio', 'jpg', ( ('png', 'png'), ('jpg', 'jpg') ) ); {
    static public inline function radio(name:String = 'radio', description:String = 'Input radio', default_value:String = null, options:Dynamic = null) {
        return Syntax.tuple(GimpFu.PF_RADIO, name, description, default_value, options);
    }
    
    // option('option', 'Input option', 2, ("Mouse", "Cat", "Dog", "Horse") ); {
    static public inline function option(name:String = 'option', description:String = 'Input option', default_value:UInt = 0, options:Dynamic = null) {
        return Syntax.tuple(GimpFu.PF_OPTION, name, description, default_value, options);
    }
    
    static public inline function spinner(name:String = 'spinner', description:String = 'Input spinner', default_value:Int = 0, min:Int = 0, max:Int = 100, step:Int = 1) {
        return Syntax.tuple(GimpFu.PF_SPINNER, name, description, default_value, Tuple3.make(min, max, step));
    }
    
    static public inline function slider(name:String = 'slider', description:String = 'Input slider', default_value:Int = 0, min:Int = 0, max:Int = 100, step:Int = 1) {
        return Syntax.tuple(GimpFu.PF_SLIDER, name, description, default_value, Tuple3.make(min, max, step));
    }
    
    static public inline function file(name:String = 'file', description:String = 'Input file', default_value:String = null) {
        return generic_tuple4_param(GimpFu.PF_FILE, name, description, default_value);
    }
    
    static public inline function dirname(name:String = 'dirname', description:String = 'Input dirname', default_value:String = null) {
        return generic_tuple4_param(GimpFu.PF_DIRNAME, name, description, default_value);
    }
    
    static public inline function font(name:String = 'font', description:String = 'Input font', default_value:String = null) {
        return generic_tuple4_param(GimpFu.PF_FONT, name, description, default_value);
    }
    
    static public inline function brush(name:String = 'brush', description:String = 'Input brush', default_value:String = null) {
        return generic_tuple4_param(GimpFu.PF_DIRNAME, name, description, default_value);
    }
    
    static public inline function pattern(name:String = 'pattern', description:String = 'Input pattern', default_value:String = null) {
        return generic_tuple4_param(GimpFu.PF_PATTERN, name, description, default_value);
    }
    
    static public inline function gradient(name:String = 'gradient', description:String = 'Input gradient', default_value:String = null) {
        return generic_tuple4_param(GimpFu.PF_GRADIENT, name, description, default_value);
    }
    
    static public inline function palette(name:String = 'palette', description:String = 'Input palette', default_value:String = null) {
        return generic_tuple4_param(GimpFu.PF_PALETTE, name, description, default_value);
    }
}