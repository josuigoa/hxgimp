package gimp;

/**
	 * These objects represent a GIMP Image's colour channels. In this section, channel will refer to a generic channel object.
 */
@:native("gimp.Channel")
extern class Channel extends Drawable {
	/**
	 * The colour of the channel.
	 */
	public var color:Color;

	/**
	 * The colour of the channel.
	 */
	public var colour:Color;

	/**
	 * The opacity of the channel.
	 */
	public var opacity:Float;

	/**
	 * The show_masked value of the channel.
	 */
	public var show_masked:Bool;

}