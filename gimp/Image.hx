package gimp;

/**
	 * This is the object that represents an open image. In this section, image represents a generic image object.
 */
@:native("gimp.Image")
extern class Image {
	public var ID:UInt;

	/**
	 * This is the active channel of the image. You can also assign to this member, or None if there is no active channel.
	 */
	public var active_channel:Channel;

	public var active_drawable:Drawable;

	/**
	 * This is the active layer of the image. You can also assign to this member, or None if there is no active layer.
	 */
	public var active_layer:Layer;

	public var active_vectors:Dynamic;

	/**
	 * This is the type of the image (eg RGB, INDEXED).
	 */
	public var base_type:UInt;

	/**
	 * This is a list of the channels of the image. Altering this list has no effect, and you can not assign to this member.
	 */
	public var channels:Array<Channel>;

	public var colormap:Dynamic;

	/**
	 * If there have been changes to the tile since it was last flushed.
	 */
	public var dirty:Bool;

	/**
	 * This is the filename for the image. A file load or save handler might assign to this.
	 */
	public var filename:String;

	public var floating_sel_attached_to:Dynamic;

	/**
	 * The floating selection layer, or None if there is no floating selection.
	 */
	public var floating_selection:Dynamic;

	/**
	 * This is the height of the image. You can't assign to this member.
	 */
	public var height:UInt;

	/**
	 * This is a list of the layers of the image.
	 */
	public var layers:Array<Layer>;

	/**
	 * The name of the channel.
	 */
	public var name:String;

	public var resolution:Dynamic;

	/**
	 * The selection mask for the image.
	 */
	public var selection:Dynamic;

	public var tattoo_state:Dynamic;

	public var unit:Dynamic;

	public var uri:Dynamic;

	public var vectors:Dynamic;

	/**
	 * This is the width of the image. You can't assign to this member.
	 */
	public var width:UInt;

}