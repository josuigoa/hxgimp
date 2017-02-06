package gimp;

@:enum 
abstract ImageType(String) from String to String {
    var NONE = ''; // Create a new image -- don't run from an existing one
    var ALL = '*'; // Accept any type of image
    var RGB = 'RGB'; // RGB only, no alpha channel (no transparency)
    var RGBA = 'RGBA'; // Only RGB with transparency
    var RGB_STAR = 'RGB*'; // RGB with or without transparency
    var GRAY = 'GRAY'; // Only grayscale, no transparency
    var GRAY_STAR = 'GRAY*'; // Grayscale with or without transparency
    var INDEXED = 'INDEXED'; // Only indexed, no transparency
}