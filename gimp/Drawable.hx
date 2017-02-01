package gimp;

/**
	 * Both layers and channels are drawables. Hence there are a number of operations that can be performed on both objects. They also have some common attributes and methods. In the description of these attributes, I will refer to a generic drawable called drawable.
 */
@:native("gimp.Drawable")
extern class Drawable extends Item {
	public var ID:UInt;

	/**
	 * The number of bytes per pixel.
	 */
	public var bpp:UInt;

	/**
	 * Non zero if the drawable has an alpha channel.
	 */
	public var has_alpha:Bool;

	/**
	 * This is the height of the image. You can't assign to this member.
	 */
	public var height:Float;

	/**
	 * The image the channel belongs to, or None if it isn't attached yet.
	 */
	public var image:Image;

	/**
	 * Non zero if the drawable is greyscale.
	 */
	public var is_gray:UInt;

	/**
	 * Non zero if the drawable is greyscale.
	 */
	public var is_grey:UInt;

	/**
	 * Non zero if the drawable uses an indexed colour scheme.
	 */
	public var is_indexed:UInt;

	public var is_layer_mask:Bool;

	/**
	 * Non zero if the drawable is colour.
	 */
	public var is_rgb:UInt;

	public var linked:Dynamic;

	/**
	 * The bounds of the drawable's selection.
	 */
	public var mask_bounds:Dynamic;

	/**
	 * The name of the channel.
	 */
	public var name:String;

	/**
	 * The offset of the top left hand corner of the drawable.
	 */
	public var offsets:Dynamic;

	public var tattoo:Dynamic;

	/**
	 * The type of the drawable.
	 */
	public var type:Dynamic;

	public var type_with_alpha:Dynamic;

	/**
	 * Non-zero if the channel is visible.
	 */
	public var visible:UInt;

	/**
	 * This is the width of the image. You can't assign to this member.
	 */
	public var width:UInt;

}