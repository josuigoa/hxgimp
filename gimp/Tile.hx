package gimp;

/**
	 * Tile objects represent the way GIMP stores information. A tile is basically just a 64x64 pixel region of the drawable. The reason GIMP breaks the image into small pieces like this is so that the whole image doesn't have to be loaded into memory in order to alter one part of it. This becomes important with larger images.
 */
@:native("gimp.Tile")
extern class Tile {
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
	 * The actual height of the tile.
	 */
	public var eheight:UInt;

	/**
	 * The actual width of the tile.
	 */
	public var ewidth:UInt;

	/**
	 * Non zero if the tile is part of the shadow buffer.
	 */
	public var shadow:Dynamic;

	public var tile_num:Dynamic;

}