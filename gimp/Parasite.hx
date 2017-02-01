package gimp;

/**
	 * In gimp >= 1.1, it is possible to attach arbitrary data to an image through the use of parasites. Parasites are simply wrappers for the data, containing its name and some flags. Parasites have the following parameters:
 */
@:native("gimp.Parasite")
extern class Parasite {
	public var data:Dynamic;

	public var flags:Dynamic;

	public var is_persistent:Bool;

	public var is_undoable:Bool;

	/**
	 * The name of the channel.
	 */
	public var name:String;

}