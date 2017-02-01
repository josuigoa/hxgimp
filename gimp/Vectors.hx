package gimp;

@:native("gimp.Vectors")
extern class Vectors extends Item {
	public var ID:UInt;

	/**
	 * The image the channel belongs to, or None if it isn't attached yet.
	 */
	public var image:Image;

	public var linked:Dynamic;

	/**
	 * The name of the channel.
	 */
	public var name:String;

	public var strokes:Dynamic;

	public var tattoo:Dynamic;

	/**
	 * Non-zero if the channel is visible.
	 */
	public var visible:UInt;

}