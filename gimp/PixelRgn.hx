package gimp;

@:native("gimp.PixelRgn")
extern class PixelRgn {
	/**
	 * The number of bytes per pixel.
	 */
	public var bpp:UInt;

	/**
	 * If there have been changes to the tile since it was last flushed.
	 */
	public var dirty:Bool;

	/**
	 * The drawable that the tile is from.
	 */
	public var drawable:Drawable;

	/**
	 * This is the height of the image. You can't assign to this member.
	 */
	public var h:UInt;

	/**
	 * The rowstride for the pixel region.
	 */
	public var rowstride:UInt;

	/**
	 * Non zero if the tile is part of the shadow buffer.
	 */
	public var shadow:Dynamic;

	/**
	 * This is the width of the image. You can't assign to this member.
	 */
	public var w:UInt;

	/**
	 * The x coordinate of the top left hand corner.
	 */
	public var x:UInt;

	/**
	 * The y coordinate of the top left hand corner.
	 */
	public var y:UInt;

}