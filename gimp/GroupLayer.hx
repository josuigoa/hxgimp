package gimp;

@:native("gimp.GroupLayer")
extern class GroupLayer extends Layer {
	/**
	 * This is a list of the layers of the image.
	 */
	public var layers:Array<Layer>;

}