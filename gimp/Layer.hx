package gimp;

/**
	 * Layer objects represent the layers of a GIMP image. In this section I will refer to a generic layer called layer.
 */
@:native("gimp.Layer")
extern class Layer extends Drawable {
	/**
	 * The apply mask setting. (non zero if the layer mask is being composited with the layer's alpha channel).
	 */
	public var apply_mask:UInt;

	/**
	 * The edit mask setting. (non zero if the mask is active, rather than the layer).
	 */
	public var edit_mask:UInt;

	/**
	 * Non zero if this layer is the image's floating selection.
	 */
	public var is_floating_sel:UInt;

	public var lock_alpha:Dynamic;

	/**
	 * The layer's mask, or None if it doesn't have one.
	 */
	public var mask:Dynamic;

	/**
	 * The mode of the layer.
	 */
	public var mode:UInt;

	/**
	 * The opacity of the channel.
	 */
	public var opacity:UInt;

	/**
	 * The layer's preserve transparency setting.
	 */
	public var preserve_trans:Dynamic;

	/**
	 * The show_masked value of the channel.
	 */
	public var show_mask:Dynamic;

}