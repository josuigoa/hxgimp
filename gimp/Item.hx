package gimp;

@:native("gimp.Item")
extern class Item {
	public var children:Array<Item>;

	public var parent:Item;

}