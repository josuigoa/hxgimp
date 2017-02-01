package gimp;

@:native("pdb")
extern class PDB {
	/**
	 * Round the corners of an image and optionally add a drop-shadow and background
	 *   by Sven Neumann <sven@@gimp.org>
	 *   1999/12/21
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Edge radius
	 *    toggle : Int -> Add drop-shadow
	 *    value : Float -> Shadow X offset
	 *    value : Float -> Shadow Y offset
	 *    value : Float -> Blur radius
	 *    toggle : Int -> Add background
	 *    toggle : Int -> Work on copy
	 * @return
	 */
// 	public function script_fu_round_corners(image:Image, drawable:Drawable, value:Float, toggle:Int, value:Float, value:Float, value:Float, toggle:Int, toggle:Int):Void;

	/**
	 * Sets the right endpoint color of the specified segment
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    segment : Int -> The index of the segment within the gradient (segment >= 0)
	 *    color : Color -> The color to set
	 *    opacity : Float -> The opacity to set for the endpoint (0 <= opacity <= 100)
	 * @return
	 */
	public function gimp_gradient_segment_set_right_color(name:String, segment:Int, color:Color, opacity:Float):Void;

	/**
	 * Simulate an image created by embossing
	 *   by Eric L. Hernes, John Schlag
	 *   1997
	 * @param
	 *    image : Image -> The Image
	 *    drawable : Drawable -> The Drawable
	 *    azimuth : Float -> The Light Angle (degrees)
	 *    elevation : Float -> The Elevation Angle (degrees)
	 *    depth : Int -> The Filter Width
	 *    emboss : Int -> Emboss or Bumpmap
	 * @return
	 */
// 	public function plug_in_emboss(image:Image, drawable:Drawable, azimuth:Float, elevation:Float, depth:Int, emboss:Int):Void;

	/**
	 * save image as PostScript docuement
	 *   by Peter Kirchgessner <peter@@kirchgessner.net>
	 *   v1.17  19-Sep-2004
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    width : Float -> Width of the image in PostScript file (0: use input image size)
	 *    height : Float -> Height of image in PostScript file (0: use input image size)
	 *    x_offset : Float -> X-offset to image from lower left corner
	 *    y_offset : Float -> Y-offset to image from lower left corner
	 *    unit : Int -> Unit for width/height/offset. 0: inches, 1: millimeters
	 *    keep_ratio : Int -> 0: use width/height, 1: keep aspect ratio
	 *    rotation : Int -> 0, 90, 180, 270
	 *    eps_flag : Int -> 0: PostScript, 1: Encapsulated PostScript
	 *    preview : Int -> 0: no preview, >0: max. size of preview
	 *    level : Int -> 1: PostScript Level 1, 2: PostScript Level 2
	 * @return
	 */
	public function file_ps_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, width:Float, height:Float, x_offset:Float, y_offset:Float, unit:Int, keep_ratio:Int, rotation:Int, eps_flag:Int, preview:Int, level:Int):Void;

	/**
	 * Get the current set of defaults used by the PNG file save plug-in
	 *   by Michael Sweet <mike@@easysw.com>, Daniel Skarda <0rfelyus@@atrey.karlin.mff.cuni.cz>
	 *   1.3.4 - 03 September 2002
	 * @param
	 * @return
	 *    interlace : Int -> Use Adam7 interlacing?
	 *    compression : Int -> Deflate Compression factor (0--9)
	 *    bkgd : Int -> Write bKGD chunk?
	 *    gama : Int -> Write gAMA chunk?
	 *    offs : Int -> Write oFFs chunk?
	 *    phys : Int -> Write pHYs chunk?
	 *    time : Int -> Write tIME chunk?
	 *    comment : Int -> Write comment?
	 *    svtrans : Int -> Preserve color of transparent pixels?
	 */
	public function file_png_get_defaults():Dynamic;

	/**
	 * Is the specified layer a floating selection?
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 * @return
	 *    is-floating-sel : Int -> TRUE if the layer is a floating selection (TRUE or FALSE)
	 */
	public function gimp_layer_is_floating_sel(layer:Layer):Int;

	/**
	 * Resize the layer to the specified extents.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 *    new_width : Int -> New layer width (1 <= new-width <= 262144)
	 *    new_height : Int -> New layer height (1 <= new-height <= 262144)
	 *    offx : Int -> x offset between upper left corner of old and new layers: (old - new)
	 *    offy : Int -> y offset between upper left corner of old and new layers: (old - new)
	 * @return
	 */
	public function gimp_layer_resize(layer:Layer, new_width:Int, new_height:Int, offx:Int, offy:Int):Void;

	/**
	 * Rearrange the colormap
	 *   by Mukund Sivaraman <muks@@mukund.org>
	 *   June 2006
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    num_colors : Int -> Length of 'map' argument (should be equal to colormap size)
	 *    map : Array<Int> -> Remap array for the colormap
	 * @return
	 */
// 	public function plug_in_colormap_remap(image:Image, drawable:Drawable, num_colors:Int, map:Array<Int>):Void;

	/**
	 * Paint in the current brush without sub-pixel sampling.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_pencil(drawable:Drawable, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * saves files in the tiff file format
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996,2000-2003
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    compression : Int -> Compression type: @{ NONE (0), LZW (1), PACKBITS (2), DEFLATE (3), JPEG (4), CCITT G3 Fax (5), CCITT G4 Fax (6) @}
	 *    save_transp_pixels : Int -> Keep the color data masked by an alpha channel intact
	 * @return
	 */
	public function file_tiff_save2(image:Image, drawable:Drawable, filename:String, raw_filename:String, compression:Int, save_transp_pixels:Int):Void;

	/**
	 * Batch Image Manipulation Plugin
	 *   by Alessandro Francesconi <alessandrofrancesconi@@live.it>
	 *   http://www.alessandrofrancesconi.it/projects/bimp
	 * @param
	 * @return
	 */
// 	public function plug_in_bimp():Void;

	/**
	 * Get the linked state of the specified item.
	 *   by Wolfgang Hofer
	 *   1998
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    linked : Int -> The item linked state (for moves) (TRUE or FALSE)
	 */
	public function gimp_item_get_linked(item:Item):Int;

	/**
	 * Enable/disable kerning in a text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    kerning : Int -> Enable/disable kerning in the text (TRUE or FALSE)
	 * @return
	 */
	public function gimp_text_layer_set_kerning(layer:Layer, kerning:Int):Void;

	/**
	 * Creates a new vectors object from a text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    image : Image -> The image.
	 *    layer : Layer -> The text layer.
	 * @return
	 *    vectors : Vectors -> The vectors of the text layer.
	 */
	public function gimp_vectors_new_from_text_layer(image:Image, layer:Layer):Vectors;

	/**
	 * Sets a gimprc token to a value and saves it in the gimprc.
	 *   by Seth Burgess
	 *   1999
	 * @param
	 *    token : String -> The token to add or modify
	 *    value : String -> The value to set the token to
	 * @return
	 */
	public function gimp_gimprc_set(token:String, value:String):Void;

	/**
	 * Propagate certain colors to neighboring pixels
	 *   by Shuji Narazaki (narazaki@@InetQ.or.jp)
	 *   1996-1997
	 * @param
	 *    image : Image -> Input image (not used)
	 *    drawable : Drawable -> Input drawable
	 *    propagate_mode : Int -> propagate 0:white, 1:black, 2:middle value 3:foreground to peak, 4:foreground, 5:background, 6:opaque, 7:transparent
	 *    propagating_channel : Int -> channels which values are propagated
	 *    propagating_rate : Float -> 0.0 <= propagatating_rate <= 1.0
	 *    direction_mask : Int -> 0 <= direction-mask <= 15
	 *    lower_limit : Int -> 0 <= lower-limit <= 255
	 *    upper_limit : Int -> 0 <= upper-limit <= 255
	 * @return
	 */
// 	public function plug_in_vpropagate(image:Image, drawable:Drawable, propagate_mode:Int, propagating_channel:Int, propagating_rate:Float, direction_mask:Int, lower_limit:Int, upper_limit:Int):Void;

	/**
	 * Adjust page size and orientation for printing
	 *   by Bill Skaggs, Sven Neumann, Stefan Röllin
	 *   2008
	 * @param
	 *    image : Image -> Image to print
	 * @return
	 */
	public function file_print_gtk_page_setup(image:Image):Void;

	/**
	 * Derive a smooth color palette from the image
	 *   by Scott Draves
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    width : Int -> Width
	 *    height : Int -> Height
	 *    ntries : Int -> Search Depth
	 *    show_image : Int -> Show Image?
	 * @return
	 *    new-image : Image -> Output image
	 *    new-layer : Layer -> Output layer
	 */
// 	public function plug_in_smooth_palette(image:Image, drawable:Drawable, width:Int, height:Int, ntries:Int, show_image:Int):python.Tuple.Tuple2<Image,Layer>;

	/**
	 * Find the bounding box of the current selection.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    non-empty : Int -> TRUE if there is a selection (TRUE or FALSE)
	 *    x1 : Int -> x coordinate of upper left corner of selection bounds
	 *    y1 : Int -> y coordinate of upper left corner of selection bounds
	 *    x2 : Int -> x coordinate of lower right corner of selection bounds
	 *    y2 : Int -> y coordinate of lower right corner of selection bounds
	 */
	public function gimp_selection_bounds(image:Image):Dynamic;

	/**
	 * Create a logo with a speedy text effect
	 *   by Austin Donnelly
	 *   1998
	 * @param
	 *    string : String -> Text
	 *    font : String -> Font
	 *    value : Float -> Font size (pixels)
	 *    value : Float -> Density (%)
	 *    color : Color -> Text colour
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_speed_text(string:String, font:String, value:Float, value:Float, color:Color, color:Color):Void;

	/**
	 * Simulate glow by making highlights intense and fuzzy
	 *   by Spencer Kimball
	 *   2001
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    glow_radius : Float -> Glow radius (radius in pixels)
	 *    brightness : Float -> Glow brightness (0.0 - 1.0)
	 *    sharpness : Float -> Glow sharpness (0.0 - 1.0)
	 * @return
	 */
// 	public function plug_in_softglow(image:Image, drawable:Drawable, glow_radius:Float, brightness:Float, sharpness:Float):Void;

	/**
	 * Return the drawable the floating selection is attached to.
	 *   by Wolfgang Hofer
	 *   1998
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    drawable : Drawable -> The drawable the floating selection is attached to
	 */
	public function gimp_image_floating_sel_attached_to(image:Image):Drawable;

	/**
	 * Get the sample merged setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 * @return
	 *    sample-merged : Int -> The sample merged setting (TRUE or FALSE)
	 */
	public function gimp_context_get_sample_merged():Int;

	/**
	 * Set the sample criterion setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 *    sample_criterion : Int -> The sample criterion setting @{ SELECT-CRITERION-COMPOSITE (0), SELECT-CRITERION-R (1), SELECT-CRITERION-G (2), SELECT-CRITERION-B (3), SELECT-CRITERION-H (4), SELECT-CRITERION-S (5), SELECT-CRITERION-V (6) @}
	 * @return
	 */
	public function gimp_context_set_sample_criterion(sample_criterion:Int):Void;

	/**
	 * Offset the colors in a palette
	 *   by Joao S. O. Bueno Calligaris, Carol Spears
	 *   2004, 2006
	 * @param
	 *    palette : String -> Palette
	 *    amount : Int -> Offset
	 * @return
	 *    new-palette : String -> Result
	 */
	public function python_fu_palette_offset(palette:String, amount:Int):String;

	/**
	 * Loads files in PNG file format
	 *   by Michael Sweet <mike@@easysw.com>, Daniel Skarda <0rfelyus@@atrey.karlin.mff.cuni.cz>
	 *   1.3.4 - 03 September 2002
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_png_load(filename:String, raw_filename:String):Image;

	/**
	 * Get the sample threshold setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 * @return
	 *    sample-threshold : Float -> The sample threshold setting (0 <= sample-threshold <= 1)
	 */
	public function gimp_context_get_sample_threshold():Float;

	/**
	 * Select all of the image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_selection_all(image:Image):Void;

	/**
	 * Returns the specified image's resolution.
	 *   by Austin Donnelly
	 *   1998
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    xresolution : Float -> The resolution in the x-axis, in dots per inch
	 *    yresolution : Float -> The resolution in the y-axis, in dots per inch
	 */
	public function gimp_image_get_resolution(image:Image):python.Tuple.Tuple2<Float,Float>;

	/**
	 * Bend the image using two control curves
	 *   by Wolfgang Hofer (hof@@hotbot.com)
	 *   v1.3.18 (2003/08/26)
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable (must be a layer without layermask)
	 *    rotation : Float -> Direction @{angle 0 to 360 degree @} of the bend effect
	 *    smoothing : Int -> Smoothing @{ TRUE, FALSE @}
	 *    antialias : Int -> Antialias @{ TRUE, FALSE @}
	 *    work_on_copy : Int -> @{ TRUE, FALSE @} TRUE: copy the drawable and bend the copy
	 *    curve_type : Int -> @{ 0, 1 @} 0 == smooth (use 17 points), 1 == freehand (use 256 val_y)
	 *    argc_upper_point_x : Int -> @{2 <= argc <= 17@}
	 *    upper_point_x : Array<Float> -> array of 17 x point_koords @{ 0.0 <= x <= 1.0 or -1 for unused point @}
	 *    argc_upper_point_y : Int -> @{2 <= argc <= 17@}
	 *    upper_point_y : Array<Float> -> array of 17 y point_koords @{ 0.0 <= y <= 1.0 or -1 for unused point @}
	 *    argc_lower_point_x : Int -> @{2 <= argc <= 17@}
	 *    lower_point_x : Array<Float> -> array of 17 x point_koords @{ 0.0 <= x <= 1.0 or -1 for unused point @}
	 *    argc_lower_point_y : Int -> @{2 <= argc <= 17@}
	 *    lower_point_y : Array<Float> -> array of 17 y point_koords @{ 0.0 <= y <= 1.0 or -1 for unused point @}
	 *    argc_upper_val_y : Int -> @{ 256 @}
	 *    upper_val_y : Array<Int> -> array of 256 y freehand koord @{ 0 <= y <= 255 @}
	 *    argc_lower_val_y : Int -> @{ 256 @}
	 *    lower_val_y : Array<Int> -> array of 256 y freehand koord @{ 0 <= y <= 255 @}
	 * @return
	 *    bent-layer : Layer -> the handled layer
	 */
// 	public function plug_in_curve_bend(image:Image, drawable:Drawable, rotation:Float, smoothing:Int, antialias:Int, work_on_copy:Int, curve_type:Int, argc_upper_point_x:Int, upper_point_x:Array<Float>, argc_upper_point_y:Int, upper_point_y:Array<Float>, argc_lower_point_x:Int, lower_point_x:Array<Float>, argc_lower_point_y:Int, lower_point_y:Array<Float>, argc_upper_val_y:Int, upper_val_y:Array<Int>, argc_lower_val_y:Int, lower_val_y:Array<Int>):Layer;

	/**
	 * Dump images to disk in raw format
	 *   by timecop, pg@@futureware.at
	 *   Aug 2004
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name entered
	 * @return
	 */
	public function file_raw_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Set the current GIMP foreground and background colors to black and white.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 */
	public function gimp_context_set_default_colors():Void;

	/**
	 * Set the feather setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    feather : Int -> The feather setting (TRUE or FALSE)
	 * @return
	 */
	public function gimp_context_set_feather(feather:Int):Void;

	/**
	 * Remove the alpha channel from the layer if it has one.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2007
	 * @param
	 *    layer : Layer -> The layer
	 * @return
	 */
	public function gimp_layer_flatten(layer:Layer):Void;

	/**
	 * Removes a parasite from an item.
	 *   by Jay Cox
	 *   1998
	 * @param
	 *    item : Item -> The item
	 *    name : String -> The name of the parasite to detach from the item.
	 * @return
	 */
	public function gimp_item_detach_parasite(item:Item, name:String):Void;

	/**
	 * Free the specified drawable's shadow data (if it exists).
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2008
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 */
	public function gimp_drawable_free_shadow(drawable:Drawable):Void;

	/**
	 * Returns the drawable's type with alpha.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 *    type-with-alpha : Int -> The drawable's type with alpha @{ RGBA-IMAGE (1), GRAYA-IMAGE (3), INDEXEDA-IMAGE (5) @}
	 */
	public function gimp_drawable_type_with_alpha(drawable:Drawable):Int;

	/**
	 * Copy into a named buffer.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 *    drawable : Drawable -> The drawable to copy from
	 *    buffer_name : String -> The name of the buffer to create
	 * @return
	 *    real-name : String -> The real name given to the buffer, or NULL if the copy failed
	 */
	public function gimp_edit_named_copy(drawable:Drawable, buffer_name:String):String;

	/**
	 * Remove speckle noise from the image
	 *   by Michael Sweet <mike@@easysw.com>
	 *   May 2010
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    radius : Int -> Filter box radius (default = 3)
	 *    type : Int -> Filter type @{ MEDIAN (0), ADAPTIVE (1), RECURSIVE-MEDIAN (2), RECURSIVE-ADAPTIVE (3) @}
	 *    black : Int -> Black level (-1 to 255)
	 *    white : Int -> White level (0 to 256)
	 * @return
	 */
// 	public function plug_in_despeckle(image:Image, drawable:Drawable, radius:Int, type:Int, black:Int, white:Int):Void;

	/**
	 * loads g3 fax files
	 *   by Jochen Friedrich
	 *   0.6
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_faxg3_load(filename:String, raw_filename:String):Image;

	/**
	 * saves images in GIMP brush pipe format
	 *   by Tor Lillqvist
	 *   1999
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the brush pipe in
	 *    raw_filename : String -> The name of the file to save the brush pipe in
	 *    spacing : Int -> Spacing of the brush
	 *    description : String -> Short description of the brush pipe
	 *    cell_width : Int -> Width of the brush cells
	 *    cell_height : Int -> Width of the brush cells
	 *    display_cols : Int -> Display column number
	 *    display_rows : Int -> Display row number
	 *    dimension : Int -> Dimension of the brush pipe
	 *    rank : Array<Int> -> Ranks of the dimensions
	 *    dimension : Int -> Dimension (again)
	 *    sel : Array<String> -> Selection modes
	 * @return
	 */
	public function file_gih_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, spacing:Int, description:String, cell_width:Int, cell_height:Int, display_cols:Int, display_rows:Int, dimension:Int, rank:Array<Int>, dimension:Int, sel:Array<String>):Void;

	/**
	 * Deprecated: Use 'gimp-drawable-free-shadow' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_image_free_shadow(image:Image):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-scale' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    x0 : Float -> The new x coordinate of the upper-left corner of the scaled region
	 *    y0 : Float -> The new y coordinate of the upper-left corner of the scaled region
	 *    x1 : Float -> The new x coordinate of the lower-right corner of the scaled region
	 *    y1 : Float -> The new y coordinate of the lower-right corner of the scaled region
	 *    transform_direction : Int -> Direction of transformation @{ TRANSFORM-FORWARD (0), TRANSFORM-BACKWARD (1) @}
	 *    interpolation : Int -> Type of interpolation @{ INTERPOLATION-NONE (0), INTERPOLATION-LINEAR (1), INTERPOLATION-CUBIC (2), INTERPOLATION-LANCZOS (3) @}
	 *    supersample : Int -> This parameter is ignored, supersampling is performed based on the interpolation type (TRUE or FALSE)
	 *    recursion_level : Int -> Maximum recursion level used for supersampling (3 is a nice value) (recursion-level >= 1)
	 *    clip_result : Int -> How to clip results @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 * @return
	 *    drawable : Drawable -> The scaled drawable
	 */
	public function gimp_drawable_transform_scale(drawable:Drawable, x0:Float, y0:Float, x1:Float, y1:Float, transform_direction:Int, interpolation:Int, supersample:Int, recursion_level:Int, clip_result:Int):Drawable;

	/**
	 * Queries the procedural database for information on the specified procedure's return value.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    procedure_name : String -> The procedure name
	 *    val_num : Int -> The return value number
	 * @return
	 *    val-type : Int -> The type of return value @{ PDB-INT32 (0), PDB-INT16 (1), PDB-INT8 (2), PDB-FLOAT (3), PDB-STRING (4), PDB-INT32ARRAY (5), PDB-INT16ARRAY (6), PDB-INT8ARRAY (7), PDB-FLOATARRAY (8), PDB-STRINGARRAY (9), PDB-COLOR (10), PDB-ITEM (11), PDB-DISPLAY (12), PDB-IMAGE (13), PDB-LAYER (14), PDB-CHANNEL (15), PDB-DRAWABLE (16), PDB-SELECTION (17), PDB-COLORARRAY (18), PDB-VECTORS (19), PDB-PARASITE (20), PDB-STATUS (21) @}
	 *    val-name : String -> The name of the return value
	 *    val-desc : String -> A description of the return value
	 */
	public function gimp_procedural_db_proc_val(procedure_name:String, val_num:Int):python.Tuple.Tuple3<Int,String,String>;

	/**
	 * Autocrop unused space from edges and middle
	 *   by Adam D. Moss
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_zealouscrop(image:Image, drawable:Drawable):Void;

	/**
	 * Get the brush spacing.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 * @return
	 *    spacing : Int -> The brush spacing (0 <= spacing <= 1000)
	 */
	public function gimp_brush_get_spacing(name:String):Int;

	/**
	 * Cut into a named buffer.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 *    drawable : Drawable -> The drawable to cut from
	 *    buffer_name : String -> The name of the buffer to create
	 * @return
	 *    real-name : String -> The real name given to the buffer, or NULL if the cut failed
	 */
	public function gimp_edit_named_cut(drawable:Drawable, buffer_name:String):String;

	/**
	 * Find a layer with a given name in an image.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 *    image : Image -> The image
	 *    name : String -> The name of the layer to find
	 * @return
	 *    layer : Layer -> The layer with the specified name
	 */
	public function gimp_image_get_layer_by_name(image:Image, name:String):Layer;

	/**
	 * Paint in the current brush with varying pressure. Paint application is time-dependent.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    pressure : Float -> The pressure of the airbrush strokes (0 <= pressure <= 100)
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_airbrush(drawable:Drawable, pressure:Float, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * loads a thumbnail from an OpenRaster (.ora) file
	 *   by Jon Nordby
	 *   2009
	 * @param
	 *    filename : String -> The name of the file to load
	 *    thumb_size : Int -> Preferred thumbnail size
	 * @return
	 *    image : Image -> Thumbnail image
	 *    image-width : Int -> Width of full-sized image
	 *    image-height : Int -> Height of full-sized image
	 */
	public function file_openraster_load_thumb(filename:String, thumb_size:Int):python.Tuple.Tuple3<Image,Int,Int>;

	/**
	 * Update the specified region of the drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    x : Int -> x coordinate of upper left corner of update region
	 *    y : Int -> y coordinate of upper left corner of update region
	 *    width : Int -> Width of update region
	 *    height : Int -> Height of update region
	 * @return
	 */
	public function gimp_drawable_update(drawable:Drawable, x:Int, y:Int, width:Int, height:Int):Void;

	/**
	 * Sets the current pattern in a pattern selection dialog.
	 *   by Andy Thomas
	 *   1998
	 * @param
	 *    pattern_callback : String -> The name of the callback registered for this pop-up
	 *    pattern_name : String -> The name of the pattern to set as selected
	 * @return
	 */
	public function gimp_patterns_set_popup(pattern_callback:String, pattern_name:String):Void;

	/**
	 * Returns the list of vectors contained in the specified image.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    num-vectors : Int -> The number of vectors contained in the image (num-vectors >= 0)
	 *    vector-ids : Array<Int> -> The list of vectors contained in the image
	 */
	public function gimp_image_get_vectors(image:Image):python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * High-resolution edge detection
	 *   by Thorsten Schnier
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_laplace(image:Image, drawable:Drawable):Void;

	/**
	 * Get the specified mask's layer.
	 *   by Geert Jordaens
	 *   2004
	 * @param
	 *    mask : Channel -> Mask for which to return the layer
	 * @return
	 *    layer : Layer -> The mask's layer
	 */
	public function gimp_layer_from_mask(mask:Channel):Layer;

	/**
	 * Uninstalls the progress callback for the current plug-in.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    progress_callback : String -> The name of the callback registered for this progress
	 * @return
	 */
	public function gimp_progress_uninstall(progress_callback:String):Void;

	/**
	 * Get the visibility of the specified item.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    visible : Int -> The item visibility (TRUE or FALSE)
	 */
	public function gimp_item_get_visible(item:Item):Int;

	/**
	 * Fill selected area of drawable.
	 *   by Spencer Kimball & Peter Mattis & Raphael Quinet
	 *   1995-2000
	 * @param
	 *    drawable : Drawable -> The drawable to fill to
	 *    fill_type : Int -> The type of fill @{ FOREGROUND-FILL (0), BACKGROUND-FILL (1), WHITE-FILL (2), TRANSPARENT-FILL (3), PATTERN-FILL (4), NO-FILL (5) @}
	 * @return
	 */
	public function gimp_edit_fill(drawable:Drawable, fill_type:Int):Void;

	/**
	 * Lower the specified item to the bottom of its level in its item tree
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to lower to bottom
	 * @return
	 */
	public function gimp_image_lower_item_to_bottom(image:Image, item:Item):Void;

	/**
	 * Create intermediate layers to blend two or more layers over a background as an animation
	 *   by Sven Neumann <sven@@gimp.org>
	 *   1999/12/21
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Intermediate frames
	 *    value : Float -> Max. blur radius
	 *    toggle : Int -> Looped
	 * @return
	 */
// 	public function script_fu_blend_anim(image:Image, drawable:Drawable, value:Float, value:Float, toggle:Int):Void;

	/**
	 * Colorize image using a sample image as a guide
	 *   by Wolfgang Hofer
	 *   02/2000
	 * @param
	 *    image : Image -> Input image (unused)
	 *    dst_drawable : Drawable -> The drawable to be colorized (Type GRAY* or RGB*)
	 *    sample_drawable : Drawable -> Sample drawable (should be of Type RGB or RGBA)
	 *    hold_inten : Int -> hold brightness intensity levels (TRUE, FALSE)
	 *    orig_inten : Int -> TRUE: hold brightness of original intensity levels. FALSE: Hold Intensity of input levels
	 *    rnd_subcolors : Int -> TRUE: Use all subcolors of same intensity, FALSE: use only one color per intensity
	 *    guess_missing : Int -> TRUE: guess samplecolors for the missing intensity values FALSE: use only colors found in the sample
	 *    in_low : Int -> intensity of lowest input (0 <= in_low <= 254)
	 *    in_high : Int -> intensity of highest input (1 <= in_high <= 255)
	 *    gamma : Float -> gamma correction factor (0.1 <= gamma <= 10) where 1.0 is linear
	 *    out_low : Int -> lowest sample color intensity (0 <= out_low <= 254)
	 *    out_high : Int -> highest sample color intensity (1 <= out_high <= 255)
	 * @return
	 */
// 	public function plug_in_sample_colorize(image:Image, dst_drawable:Drawable, sample_drawable:Drawable, hold_inten:Int, orig_inten:Int, rnd_subcolors:Int, guess_missing:Int, in_low:Int, in_high:Int, gamma:Float, out_low:Int, out_high:Int):Void;

	/**
	 * Shift each row of pixels by a random amount
	 *   by Spencer Kimball and Peter Mattis, ported by Brian Degenhardt and Federico Mena Quintero
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    shift_amount : Int -> shift amount (0 <= shift_amount_x <= 200)
	 *    orientation : Int -> vertical, horizontal orientation
	 * @return
	 */
// 	public function plug_in_shift(image:Image, drawable:Drawable, shift_amount:Int, orientation:Int):Void;

	/**
	 * Dodgeburn image with varying exposure.
	 *   by Andy Thomas
	 *   1999
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    exposure : Float -> The exposure of the strokes (0 <= exposure <= 100)
	 *    dodgeburn_type : Int -> The type either dodge or burn @{ DODGE (0), BURN (1) @}
	 *    dodgeburn_mode : Int -> The mode @{ SHADOWS (0), MIDTONES (1), HIGHLIGHTS (2) @}
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_dodgeburn(drawable:Drawable, exposure:Float, dodgeburn_type:Int, dodgeburn_mode:Int, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * Saves files in the PGM file format
	 *   by Erik Nygren
	 *   1996
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    raw : Int -> Specify non-zero for raw output, zero for ascii output
	 * @return
	 */
	public function file_pgm_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, raw:Int):Void;

	/**
	 * Paste named buffer to the specified drawable.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 *    drawable : Drawable -> The drawable to paste to
	 *    buffer_name : String -> The name of the buffer to paste
	 *    paste_into : Int -> Clear selection, or paste behind it? (TRUE or FALSE)
	 * @return
	 *    floating-sel : Layer -> The new floating selection
	 */
	public function gimp_edit_named_paste(drawable:Drawable, buffer_name:String, paste_into:Int):Layer;

	/**
	 * Re-read all available Script-Fu scripts
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 * @return
	 */
// 	public function script_fu_refresh():Void;

	/**
	 * Save a path as an SVG string.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2007
	 * @param
	 *    image : Image -> The image
	 *    vectors : Vectors -> The vectors object to save, or 0 for all in the image
	 * @return
	 *    string : String -> A string whose contents are a complete SVG document.
	 */
	public function gimp_vectors_export_to_string(image:Image, vectors:Vectors):String;

	/**
	 * Pops the topmost context from the plug-in's context stack.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 */
	public function gimp_context_pop():Void;

	/**
	 * Extends a bezier stroke with a conic bezier spline.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 *    x0 : Float -> The x-coordinate of the control point
	 *    y0 : Float -> The y-coordinate of the control point
	 *    x1 : Float -> The x-coordinate of the end point
	 *    y1 : Float -> The y-coordinate of the end point
	 * @return
	 */
	public function gimp_vectors_bezier_stroke_conicto(vectors:Vectors, stroke_id:Int, x0:Float, y0:Float, x1:Float, y1:Float):Void;

	/**
	 * Transforms the specified floating selection into a layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    floating_sel : Layer -> The floating selection
	 * @return
	 */
	public function gimp_floating_sel_to_layer(floating_sel:Layer):Void;

	/**
	 * Create a decorative web title header
	 *   by Federico Mena Quintero
	 *   June 1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    toggle : Int -> Gradient reverse
	 * @return
	 */
// 	public function script_fu_title_header(string:String, value:Float, font:String, toggle:Int):Void;

	/**
	 * Stretch color saturation to cover maximum possible range
	 *   by Martin Weber
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_color_enhance(image:Image, drawable:Drawable):Void;

	/**
	 * Displace pixels as indicated by displacement maps
	 *   by Stephen Robert Norris & (ported to 1.0 by) Spencer Kimball
	 *   1996
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    amount_x : Float -> Displace multiplier for X or radial direction
	 *    amount_y : Float -> Displace multiplier for Y or tangent (degrees) direction
	 *    do_x : Int -> Displace in X or radial direction?
	 *    do_y : Int -> Displace in Y or tangent direction?
	 *    displace_map_x : Drawable -> Displacement map for X or radial direction
	 *    displace_map_y : Drawable -> Displacement map for Y or tangent direction
	 *    displace_type : Int -> Edge behavior @{ WRAP (1), SMEAR (2), BLACK (3) @}
	 * @return
	 */
// 	public function plug_in_displace(image:Image, drawable:Drawable, amount_x:Float, amount_y:Float, do_x:Int, do_y:Int, displace_map_x:Drawable, displace_map_y:Drawable, displace_type:Int):Void;

	/**
	 * Deprecated: Use 'gimp-text-layer-get-hint-style' instead.
	 *   by 
	 *   
	 * @param
	 *    layer : Layer -> The text layer
	 * @return
	 *    hinting : Int -> A flag which is true if hinting is used on the font. (TRUE or FALSE)
	 *    autohint : Int -> A flag which is true if the text layer is forced to use the autohinter from FreeType. (TRUE or FALSE)
	 */
	public function gimp_text_layer_get_hinting(layer:Layer):python.Tuple.Tuple2<Int,Int>;

	/**
	 * Deprecated: Use 'gimp-item-transform-shear' instead.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    interpolation : Int -> Whether to use interpolation (TRUE or FALSE)
	 *    shear_type : Int -> Type of shear @{ ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) @}
	 *    magnitude : Float -> The magnitude of the shear
	 * @return
	 *    drawable : Drawable -> The sheared drawable
	 */
	public function gimp_shear(drawable:Drawable, interpolation:Int, shear_type:Int, magnitude:Float):Drawable;

	/**
	 * Retrieve information about the specified brush.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 * @return
	 *    width : Int -> The brush width
	 *    height : Int -> The brush height
	 *    mask-bpp : Int -> The brush mask bpp
	 *    color-bpp : Int -> The brush color bpp
	 */
	public function gimp_brush_get_info(name:String):python.Tuple.Tuple4<Int,Int,Int,Int>;

	/**
	 * Import paths from an SVG string.
	 *   by Simon Budig
	 *   2006
	 * @param
	 *    image : Image -> The image
	 *    string : String -> A string that must be a complete and valid SVG document.
	 *    length : Int -> Number of bytes in string or -1 if the string is NULL terminated.
	 *    merge : Int -> Merge paths into a single vectors object. (TRUE or FALSE)
	 *    scale : Int -> Scale the SVG to image dimensions. (TRUE or FALSE)
	 * @return
	 *    num-vectors : Int -> The number of newly created vectors (num-vectors >= 0)
	 *    vectors-ids : Array<Int> -> The list of newly created vectors
	 */
	public function gimp_vectors_import_from_string(image:Image, string:String, length:Int, merge:Int, scale:Int):python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * Get a serialized version of the color management configuration.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2005
	 * @param
	 * @return
	 *    config : String -> Serialized color management configuration
	 */
	public function gimp_get_color_configuration():String;

	/**
	 * Deprecated: Use 'gimp-text-get-extents-fontname' instead.
	 *   by 
	 *   
	 * @param
	 *    text : String -> The text to generate (in UTF-8 encoding)
	 *    size : Float -> The size of text in either pixels or points (size >= 0)
	 *    size_type : Int -> The units of specified size @{ PIXELS (0), POINTS (1) @}
	 *    foundry : String -> The font foundry
	 *    family : String -> The font family
	 *    weight : String -> The font weight
	 *    slant : String -> The font slant
	 *    set_width : String -> The font set-width
	 *    spacing : String -> The font spacing
	 *    registry : String -> The font registry
	 *    encoding : String -> The font encoding
	 * @return
	 *    width : Int -> The width of the specified font
	 *    height : Int -> The height of the specified font
	 *    ascent : Int -> The ascent of the specified font
	 *    descent : Int -> The descent of the specified font
	 */
	public function gimp_text_get_extents(text:String, size:Float, size_type:Int, foundry:String, family:String, weight:String, slant:String, set_width:String, spacing:String, registry:String, encoding:String):python.Tuple.Tuple4<Int,Int,Int,Int>;

	/**
	 * Paint in the current brush with optional fade out parameter and pull colors from a gradient.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    fade_out : Float -> Fade out parameter (fade-out >= 0)
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 *    method : Int -> The paint method to use @{ PAINT-CONSTANT (0), PAINT-INCREMENTAL (1) @}
	 *    gradient_length : Float -> Length of gradient to draw (gradient-length >= 0)
	 * @return
	 */
	public function gimp_paintbrush(drawable:Drawable, fade_out:Float, num_strokes:Int, strokes:Array<Float>, method:Int, gradient_length:Float):Void;

	/**
	 * Decompose an image into separate colorspace components
	 *   by Peter Kirchgessner
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    decompose_type : String -> What to decompose: \RGB\, \Red\, \Green\, \Blue\, \RGBA\, \HSV\, \Hue\, \Saturation\, \Value\, \HSL\, \Hue (HSL)\, \Saturation (HSL)\, \Lightness\, \CMY\, \Cyan\, \Magenta\, \Yellow\, \CMYK\, \Cyan_K\, \Magenta_K\, \Yellow_K\, \Alpha\, \LAB\, \YCbCr_ITU_R470\, \YCbCr_ITU_R709\, \YCbCr ITU R470 256\, \YCbCr ITU R709 256\
	 *    layers_mode : Int -> Create channels as layers in a single image
	 * @return
	 *    new-image : Image -> Output gray image
	 *    new-image : Image -> Output gray image (N/A for single channel extract)
	 *    new-image : Image -> Output gray image (N/A for single channel extract)
	 *    new-image : Image -> Output gray image (N/A for single channel extract)
	 */
// 	public function plug_in_decompose(image:Image, drawable:Drawable, decompose_type:String, layers_mode:Int):python.Tuple.Tuple4<Image,Image,Image,Image>;

	/**
	 * Returns whether the item is a vectors.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    vectors : Int -> TRUE if the item is a vectors, FALSE otherwise (TRUE or FALSE)
	 */
	public function gimp_item_is_vectors(item:Item):Int;

	/**
	 * Adds a palette entry to the specified palette.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The palette name
	 *    entry_name : String -> The name of the entry
	 *    color : Color -> The new entry's color color
	 * @return
	 *    entry-num : Int -> The index of the added entry
	 */
	public function gimp_palette_add_entry(name:String, entry_name:String, color:Color):Int;

	/**
	 * Add Spirographs, Epitrochoids and Lissajous Curves to the current layer
	 *   by Elad Shahar <elad@@wisdom.weizmann.ac.il>
	 *   June 2003
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    option : Int -> Type
	 *    option : Int -> Shape
	 *    value : Float -> Outer teeth
	 *    value : Float -> Inner teeth
	 *    value : Float -> Margin (pixels)
	 *    value : Float -> Hole ratio
	 *    value : Float -> Start angle
	 *    option : Int -> Tool
	 *    brush : String -> Brush
	 *    option : Int -> Colour method
	 *    color : Color -> Colour
	 *    gradient : String -> Gradient
	 * @return
	 */
// 	public function script_fu_spyrogimp(image:Image, drawable:Drawable, option:Int, option:Int, value:Float, value:Float, value:Float, value:Float, value:Float, option:Int, brush:String, option:Int, color:Color, gradient:String):Void;

	/**
	 * Create a textured logo with highlights, shadows and a mosaic background
	 *   by Spencer Kimball
	 *   1996
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    pattern : String -> Text pattern
	 *    option : Int -> Mosaic tile type
	 *    color : Color -> Background colour
	 *    color : Color -> Starting blend
	 *    color : Color -> Ending blend
	 * @return
	 */
// 	public function script_fu_textured_logo(string:String, value:Float, font:String, pattern:String, option:Int, color:Color, color:Color, color:Color):Void;

	/**
	 * Gets the background color of an image's grid.
	 *   by Sylvain Foret
	 *   2005
	 * @param
	 *    image : Image -> The image
	 *    bgcolor : Color -> The new background color
	 * @return
	 */
	public function gimp_image_grid_set_background_color(image:Image, bgcolor:Color):Void;

	/**
	 * Deprecated: Use 'gimp-vectors-set-linked' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    name : String -> the name of the path whose locked status should be set
	 *    locked : Int -> Whether the path is locked (TRUE or FALSE)
	 * @return
	 */
	public function gimp_path_set_locked(image:Image, name:String, locked:Int):Void;

	/**
	 * save file in the Alias|Wavefront pix/matte file format
	 *   by Michael Taylor
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 * @return
	 */
	public function file_pix_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Close the palette selection dialog.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2002
	 * @param
	 *    palette_callback : String -> The name of the callback registered for this pop-up
	 * @return
	 */
	public function gimp_palettes_close_popup(palette_callback:String):Void;

	/**
	 * Distort the image with waves
	 *   by Eric L. Hernes, Stephen Norris
	 *   1997
	 * @param
	 *    image : Image -> The Image
	 *    drawable : Drawable -> The Drawable
	 *    amplitude : Float -> The Amplitude of the Waves
	 *    phase : Float -> The Phase of the Waves
	 *    wavelength : Float -> The Wavelength of the Waves
	 *    type : Int -> Type of waves, black/smeared
	 *    reflective : Int -> Use Reflection
	 * @return
	 */
// 	public function plug_in_waves(image:Image, drawable:Drawable, amplitude:Float, phase:Float, wavelength:Float, type:Int, reflective:Int):Void;

	/**
	 * Outline the selected region (or alpha) with a pattern and add a drop shadow
	 *   by Hrvoje Horvat (hhorvat@@open.hr)
	 *   07 April, 1998
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    pattern : String -> Pattern
	 *    value : Float -> Outline blur radius
	 *    value : Float -> Shadow blur radius
	 *    value : Float -> Bumpmap (alpha layer) blur radius
	 *    toggle : Int -> Default bumpmap settings
	 *    value : Float -> Shadow X offset
	 *    value : Float -> Shadow Y offset
	 * @return
	 */
// 	public function script_fu_3d_outline_logo_alpha(image:Image, drawable:Drawable, pattern:String, value:Float, value:Float, value:Float, toggle:Int, value:Float, value:Float):Void;

	/**
	 * loads files compressed with bzip2
	 *   by Daniel Risacher
	 *   1995-1997
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_bz2_load(filename:String, raw_filename:String):Image;

	/**
	 * Copy a channel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    channel : Channel -> The channel to copy
	 * @return
	 *    channel-copy : Channel -> The newly copied channel
	 */
	public function gimp_channel_copy(channel:Channel):Channel;

	/**
	 * Set the sample transparent setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 *    sample_transparent : Int -> The sample transparent setting (TRUE or FALSE)
	 * @return
	 */
	public function gimp_context_set_sample_transparent(sample_transparent:Int):Void;

	/**
	 * Get the rotation angle of a generated brush.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 * @return
	 *    angle : Float -> The rotation angle of the brush.
	 */
	public function gimp_brush_get_angle(name:String):Float;

	/**
	 * Create a new layer by copying an existing drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The source drawable from where the new layer is copied
	 *    dest_image : Image -> The destination image to which to add the layer
	 * @return
	 *    layer-copy : Layer -> The newly copied layer
	 */
	public function gimp_layer_new_from_drawable(drawable:Drawable, dest_image:Image):Layer;

	/**
	 * Paste buffer to the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable to paste to
	 *    paste_into : Int -> Clear selection, or paste behind it? (TRUE or FALSE)
	 * @return
	 *    floating-sel : Layer -> The new floating selection
	 */
	public function gimp_edit_paste(drawable:Drawable, paste_into:Int):Layer;

	/**
	 * Create an image of a textured sphere
	 *   by Vidar Madsen
	 *   1999
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_spheredesigner(image:Image, drawable:Drawable):Void;

	/**
	 * Adjust the line spacing in a text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    line_spacing : Float -> The additional line spacing to use. (-8192 <= line-spacing <= 8192)
	 * @return
	 */
	public function gimp_text_layer_set_line_spacing(layer:Layer, line_spacing:Float):Void;

	/**
	 * Rename a palette
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The palette name
	 *    new_name : String -> The new name of the palette
	 * @return
	 *    actual-name : String -> The actual new name of the palette
	 */
	public function gimp_palette_rename(name:String, new_name:String):String;

	/**
	 * Retrieves the middle point position of the specified segment
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    segment : Int -> The index of the segment within the gradient (segment >= 0)
	 * @return
	 *    pos : Float -> The return position
	 */
	public function gimp_gradient_segment_get_middle_pos(name:String, segment:Int):Float;

	/**
	 * Get the opacity.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 *    opacity : Float -> The opacity (0 <= opacity <= 100)
	 */
	public function gimp_context_get_opacity():Float;

	/**
	 * Renames a named buffer.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 *    buffer_name : String -> The buffer name
	 *    new_name : String -> The buffer's new name
	 * @return
	 *    real-name : String -> The real name given to the buffer
	 */
	public function gimp_buffer_rename(buffer_name:String, new_name:String):String;

	/**
	 * Import paths from an SVG file.
	 *   by Simon Budig
	 *   2006
	 * @param
	 *    image : Image -> The image
	 *    filename : String -> The name of the SVG file to import.
	 *    merge : Int -> Merge paths into a single vectors object. (TRUE or FALSE)
	 *    scale : Int -> Scale the SVG to image dimensions. (TRUE or FALSE)
	 * @return
	 *    num-vectors : Int -> The number of newly created vectors (num-vectors >= 0)
	 *    vectors-ids : Array<Int> -> The list of newly created vectors
	 */
	public function gimp_vectors_import_from_file(image:Image, filename:String, merge:Int, scale:Int):python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * Distort colors by random amounts
	 *   by Torsten Martinsen
	 *   May 2000
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    independent : Int -> Noise in channels independent
	 *    correlated : Int -> Noise correlated (i.e. multiplicative not additive)
	 *    noise_1 : Float -> Noise in the first channel (red, gray)
	 *    noise_2 : Float -> Noise in the second channel (green, gray_alpha)
	 *    noise_3 : Float -> Noise in the third channel (blue)
	 *    noise_4 : Float -> Noise in the fourth channel (alpha)
	 * @return
	 */
// 	public function plug_in_rgb_noise(image:Image, drawable:Drawable, independent:Int, correlated:Int, noise_1:Float, noise_2:Float, noise_3:Float, noise_4:Float):Void;

	/**
	 * Deprecated: Use 'gimp-palette-entry-get-color' instead.
	 *   by 
	 *   
	 * @param
	 *    name : String -> The palette name (\\ means currently active palette)
	 *    entry_num : Int -> The entry to retrieve
	 * @return
	 *    actual-name : String -> The palette name
	 *    num-colors : Int -> The palette num_colors
	 *    color : Color -> The color requested
	 */
	public function gimp_palettes_get_palette_entry(name:String, entry_num:Int):python.Tuple.Tuple3<String,Int,Color>;

	/**
	 * Queries the procedural database for information on the specified procedure's argument.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    procedure_name : String -> The procedure name
	 *    arg_num : Int -> The argument number
	 * @return
	 *    arg-type : Int -> The type of argument @{ PDB-INT32 (0), PDB-INT16 (1), PDB-INT8 (2), PDB-FLOAT (3), PDB-STRING (4), PDB-INT32ARRAY (5), PDB-INT16ARRAY (6), PDB-INT8ARRAY (7), PDB-FLOATARRAY (8), PDB-STRINGARRAY (9), PDB-COLOR (10), PDB-ITEM (11), PDB-DISPLAY (12), PDB-IMAGE (13), PDB-LAYER (14), PDB-CHANNEL (15), PDB-DRAWABLE (16), PDB-SELECTION (17), PDB-COLORARRAY (18), PDB-VECTORS (19), PDB-PARASITE (20), PDB-STATUS (21) @}
	 *    arg-name : String -> The name of the argument
	 *    arg-desc : String -> A description of the argument
	 */
	public function gimp_procedural_db_proc_arg(procedure_name:String, arg_num:Int):python.Tuple.Tuple3<Int,String,String>;

	/**
	 * Deprecated: Use 'gimp-image-insert-vectors' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    vectors : Vectors -> The vectors object
	 *    position : Int -> The vectors objects position
	 * @return
	 */
	public function gimp_image_add_vectors(image:Image, vectors:Vectors, position:Int):Void;

	/**
	 * save FLI-movies
	 *   by Jens Ch. Restemeier
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable (unused)
	 *    filename : String -> The name of the file to save
	 *    raw_filename : String -> The name entered
	 *    from_frame : Int -> Save beginning from this frame
	 *    to_frame : Int -> End saving with this frame
	 * @return
	 */
	public function file_fli_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, from_frame:Int, to_frame:Int):Void;

	/**
	 * Transform the specified item in 2d.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    item : Item -> The affected item
	 *    source_x : Float -> X coordinate of the transformation center
	 *    source_y : Float -> Y coordinate of the transformation center
	 *    scale_x : Float -> Amount to scale in x direction
	 *    scale_y : Float -> Amount to scale in y direction
	 *    angle : Float -> The angle of rotation (radians)
	 *    dest_x : Float -> X coordinate of where the center goes
	 *    dest_y : Float -> Y coordinate of where the center goes
	 * @return
	 *    item : Item -> The transformed item
	 */
	public function gimp_item_transform_2d(item:Item, source_x:Float, source_y:Float, scale_x:Float, scale_y:Float, angle:Float, dest_x:Float, dest_y:Float):Item;

	/**
	 * Interactive GIMP Python interpreter
	 *   by James Henstridge
	 *   1997-1999
	 * @param
	 * @return
	 */
	public function python_fu_console():Void;

	/**
	 * Duplicates a brush
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 * @return
	 *    copy-name : String -> The name of the brush's copy
	 */
	public function gimp_brush_duplicate(name:String):String;

	/**
	 * Loads a preview from an Windows ICO file
	 *   by Dom Lachowicz, Sven Neumann
	 *   2005
	 * @param
	 *    filename : String -> The name of the file to load
	 *    thumb_size : Int -> Preferred thumbnail size
	 * @return
	 *    image : Image -> Thumbnail image
	 *    image-width : Int -> Width of full-sized image
	 *    image-height : Int -> Height of full-sized image
	 */
	public function file_ico_load_thumb(filename:String, thumb_size:Int):python.Tuple.Tuple3<Image,Int,Int>;

	/**
	 * Returns the position of the item in its level of its item tree.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item
	 * @return
	 *    position : Int -> The position of the item in its level in the item tree
	 */
	public function gimp_image_get_item_position(image:Image, item:Item):Int;

	/**
	 * Set the specified font as the active font.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The name of the font
	 * @return
	 */
	public function gimp_context_set_font(name:String):Void;

	/**
	 * Copy from the projection.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    image : Image -> The image to copy from
	 * @return
	 *    non-empty : Int -> TRUE if the copy was successful (TRUE or FALSE)
	 */
	public function gimp_edit_copy_visible(image:Image):Int;

	/**
	 * Unsets the active channel in the specified image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_image_unset_active_channel(image:Image):Void;

	/**
	 * Fill the selected region (or alpha) with a texture and add highlights, shadows and a mosaic background
	 *   by Spencer Kimball
	 *   1996
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Border size (pixels)
	 *    pattern : String -> Pattern
	 *    option : Int -> Mosaic tile type
	 *    color : Color -> Background colour
	 *    color : Color -> Starting blend
	 *    color : Color -> Ending blend
	 * @return
	 */
// 	public function script_fu_textured_logo_alpha(image:Image, drawable:Drawable, value:Float, pattern:String, option:Int, color:Color, color:Color, color:Color):Void;

	/**
	 * Bookmark to the GIMP web site
	 *   by Henrik Brix Andersen <brix@@gimp.org>
	 *   2003
	 * @param
	 * @return
	 */
	public function gimp_online_developer_web_site():Void;

	/**
	 * Returns the abbreviation of the unit.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1999
	 * @param
	 *    unit_id : Int -> The unit's integer ID
	 * @return
	 *    abbreviation : String -> The unit's abbreviation
	 */
	public function gimp_unit_get_abbreviation(unit_id:Int):String;

	/**
	 * Loads files in Zsoft PCX file format
	 *   by Francisco Bustamante & Nick Lamb
	 *   January 1997
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_pcx_load(filename:String, raw_filename:String):Image;

	/**
	 * Smudge image with varying pressure.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    pressure : Float -> The pressure of the smudge strokes (0 <= pressure <= 100)
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_smudge(drawable:Drawable, pressure:Float, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * Set brush aspect ratio.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 *    aspect : Float -> aspect ratio (-20 <= aspect <= 20)
	 * @return
	 */
	public function gimp_context_set_brush_aspect_ratio(aspect:Float):Void;

	/**
	 * Several simple methods for detecting edges
	 *   by Peter Mattis & (ported to 1.0 by) Eiichi Takamori
	 *   1996
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    amount : Float -> Edge detection amount
	 *    wrapmode : Int -> Edge detection behavior @{ WRAP (1), SMEAR (2), BLACK (3) @}
	 *    edgemode : Int -> Edge detection algorithm @{ SOBEL (0), PREWITT (1), GRADIENT (2), ROBERTS (3), DIFFERENTIAL (4), LAPLACE (5) @}
	 * @return
	 */
// 	public function plug_in_edge(image:Image, drawable:Drawable, amount:Float, wrapmode:Int, edgemode:Int):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-shear' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    shear_type : Int -> Type of shear @{ ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) @}
	 *    magnitude : Float -> The magnitude of the shear
	 *    transform_direction : Int -> Direction of transformation @{ TRANSFORM-FORWARD (0), TRANSFORM-BACKWARD (1) @}
	 *    interpolation : Int -> Type of interpolation @{ INTERPOLATION-NONE (0), INTERPOLATION-LINEAR (1), INTERPOLATION-CUBIC (2), INTERPOLATION-LANCZOS (3) @}
	 *    supersample : Int -> This parameter is ignored, supersampling is performed based on the interpolation type (TRUE or FALSE)
	 *    recursion_level : Int -> Maximum recursion level used for supersampling (3 is a nice value) (recursion-level >= 1)
	 *    clip_result : Int -> How to clip results @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 * @return
	 *    drawable : Drawable -> The sheared drawable
	 */
	public function gimp_drawable_transform_shear(drawable:Drawable, shear_type:Int, magnitude:Float, transform_direction:Int, interpolation:Int, supersample:Int, recursion_level:Int, clip_result:Int):Drawable;

	/**
	 * Get the opacity of the specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 * @return
	 *    opacity : Float -> The layer opacity (0 <= opacity <= 100)
	 */
	public function gimp_layer_get_opacity(layer:Layer):Float;

	/**
	 * Create a logo that looks like glowing hot metal
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_glowing_logo(string:String, value:Float, font:String, color:Color):Void;

	/**
	 * Get the letter spacing used in a text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer.
	 * @return
	 *    letter-spacing : Float -> The letter-spacing value.
	 */
	public function gimp_text_layer_get_letter_spacing(layer:Layer):Float;

	/**
	 * Deprecated: Use 'gimp-context-get-palette' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 *    name : String -> The palette name
	 *    num-colors : Int -> The palette num_colors
	 */
	public function gimp_palettes_get_palette():python.Tuple.Tuple2<String,Int>;

	/**
	 * Set the specified paint dynamics as the active paint dynamics.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 *    name : String -> The name of the paint dynamics
	 * @return
	 */
	public function gimp_context_set_dynamics(name:String):Void;

	/**
	 * Get the color of the text in a text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer.
	 * @return
	 *    color : Color -> The color of the text.
	 */
	public function gimp_text_layer_get_color(layer:Layer):Color;

	/**
	 * loads files of the tiff file format
	 *   by Spencer Kimball, Peter Mattis & Nick Lamb
	 *   1995-1996,1998-2003
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_tiff_load(filename:String, raw_filename:String):Image;

	/**
	 * Turn bright spots into starry sparkles
	 *   by John Beale, & (ported to GIMP v0.54) Michael J. Hammel & ted to GIMP v1.0) & Seth Burgess & Spencer Kimball
	 *   Version 1.27, September 2003
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    lum_threshold : Float -> Luminosity threshold (0.0 - 1.0)
	 *    flare_inten : Float -> Flare intensity (0.0 - 1.0)
	 *    spike_len : Int -> Spike length (in pixels)
	 *    spike_pts : Int -> # of spike points
	 *    spike_angle : Int -> Spike angle (0-360 degrees, -1: random)
	 *    density : Float -> Spike density (0.0 - 1.0)
	 *    transparency : Float -> Transparency (0.0 - 1.0)
	 *    random_hue : Float -> Random hue (0.0 - 1.0)
	 *    random_saturation : Float -> Random saturation (0.0 - 1.0)
	 *    preserve_luminosity : Int -> Preserve luminosity (TRUE/FALSE)
	 *    inverse : Int -> Inverse (TRUE/FALSE)
	 *    border : Int -> Add border (TRUE/FALSE)
	 *    color_type : Int -> Color of sparkles: @{ NATURAL (0), FOREGROUND (1), BACKGROUND (2) @}
	 * @return
	 */
// 	public function plug_in_sparkle(image:Image, drawable:Drawable, lum_threshold:Float, flare_inten:Float, spike_len:Int, spike_pts:Int, spike_angle:Int, density:Float, transparency:Float, random_hue:Float, random_saturation:Float, preserve_luminosity:Int, inverse:Int, border:Int, color_type:Int):Void;

	/**
	 * Add a chrome effect to the selected region (or alpha) using a specified (greyscale) stencil
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    image : Image -> Chrome image
	 *    drawable : Drawable -> Chrome mask
	 *    value : Float -> Chrome saturation
	 *    value : Float -> Chrome lightness
	 *    value : Float -> Chrome factor
	 *    filename : String -> Environment map
	 *    color : Color -> Highlight balance
	 *    color : Color -> Chrome balance
	 *    toggle : Int -> Chrome white areas
	 * @return
	 */
// 	public function script_fu_sota_chrome_it(image:Image, drawable:Drawable, value:Float, value:Float, value:Float, filename:String, color:Color, color:Color, toggle:Int):Void;

	/**
	 * Creates a new palette from a given gradient
	 *   by Joao S. O. Bueno
	 *   2011
	 * @param
	 *    gradient : String -> Gradient to use
	 *    file_name : String -> File Name
	 * @return
	 */
	public function python_fu_gradient_save_as_css(gradient:String, file_name:String):Void;

	/**
	 * Get the apply mask setting of the specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 * @return
	 *    apply-mask : Int -> The layer's apply mask setting (TRUE or FALSE)
	 */
	public function gimp_layer_get_apply_mask(layer:Layer):Int;

	/**
	 * Set the composite method of the specified channel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    channel : Channel -> The channel
	 *    show_masked : Int -> The new channel composite method (TRUE or FALSE)
	 * @return
	 */
	public function gimp_channel_set_show_masked(channel:Channel, show_masked:Int):Void;

	/**
	 * Get ink blob angle in degrees.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 * @return
	 *    angle : Float -> ink blob angle in degrees (-180 <= angle <= 180)
	 */
	public function gimp_context_get_ink_blob_angle():Float;

	/**
	 * Create a comic-book style logo by outlining and filling with a gradient
	 *   by Brian McFee <keebler@@wco.com>
	 *   April 1998
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    gradient : String -> Gradient
	 *    toggle : Int -> Gradient reverse
	 *    value : Float -> Outline size
	 *    color : Color -> Outline colour
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_comic_logo(string:String, value:Float, font:String, gradient:String, toggle:Int, value:Float, color:Color, color:Color):Void;

	/**
	 * Get the transform supersampling recursion.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 * @return
	 *    transform-recursion : Int -> The transform recursion level (transform-recursion >= 1)
	 */
	public function gimp_context_get_transform_recursion():Int;

	/**
	 * Add a simple chrome effect to the selected region (or alpha)
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Offsets (pixels * 2)
	 *    color : Color -> Background Colour
	 * @return
	 */
// 	public function script_fu_chrome_logo_alpha(image:Image, drawable:Drawable, value:Float, color:Color):Void;

	/**
	 * Returns the specified image's active vectors.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    active-vectors : Vectors -> The active vectors
	 */
	public function gimp_image_get_active_vectors(image:Image):Vectors;

	/**
	 * Get the name of the specified item.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    name : String -> The item name
	 */
	public function gimp_item_get_name(item:Item):String;

	/**
	 * Returns the native window ID of the toplevel window this plug-in's progress is displayed in.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 *    window : Int -> The progress bar's toplevel window
	 */
	public function gimp_progress_get_window_handle():Int;

	/**
	 * Sets the offset of an image's grid.
	 *   by Sylvain Foret
	 *   2005
	 * @param
	 *    image : Image -> The image
	 *    xoffset : Float -> The image's grid horizontal offset
	 *    yoffset : Float -> The image's grid vertical offset
	 * @return
	 */
	public function gimp_image_grid_set_offset(image:Image, xoffset:Float, yoffset:Float):Void;

	/**
	 * save a path as an SVG file.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2007
	 * @param
	 *    image : Image -> The image
	 *    filename : String -> The name of the SVG file to create.
	 *    vectors : Vectors -> The vectors object to be saved, or 0 for all in the image
	 * @return
	 */
	public function gimp_vectors_export_to_file(image:Image, filename:String, vectors:Vectors):Void;

	/**
	 * Create a logo in the style of newspaper printing
	 *   by Austin Donnelly
	 *   1998
	 * @param
	 *    string : String -> Text
	 *    font : String -> Font
	 *    value : Float -> Font size (pixels)
	 *    value : Float -> Cell size (pixels)
	 *    value : Float -> Density (%)
	 *    value : Float -> Blur radius
	 *    color : Color -> Text colour
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_newsprint_text(string:String, font:String, value:Float, value:Float, value:Float, value:Float, color:Color, color:Color):Void;

	/**
	 * Add a parasite to an image.
	 *   by Jay Cox
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    parasite : Parasite -> The parasite to attach to an image
	 * @return
	 */
	public function gimp_image_attach_parasite(image:Image, parasite:Parasite):Void;

	/**
	 * Create a repeating gradient using colors from the palette
	 *   by Carol Spears, reproduced from previous work by Adrian Likins and Jeff Trefftz
	 *   2006
	 * @param
	 *    palette : String -> Palette
	 * @return
	 *    new-gradient : String -> Result
	 */
	public function python_fu_palette_to_gradient_repeating(palette:String):String;

	/**
	 * Deprecated: Use 'gimp-item-transform-flip-simple' instead.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    flip_type : Int -> Type of flip @{ ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) @}
	 * @return
	 *    drawable : Drawable -> The flipped drawable
	 */
	public function gimp_flip(drawable:Drawable, flip_type:Int):Drawable;

	/**
	 * Get the sample transparent setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 * @return
	 *    sample-transparent : Int -> The sample transparent setting (TRUE or FALSE)
	 */
	public function gimp_context_get_sample_transparent():Int;

	/**
	 * Creates a new palette
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The requested name of the new palette
	 * @return
	 *    actual-name : String -> The actual new palette name
	 */
	public function gimp_palette_new(name:String):String;

	/**
	 * Convolve (Blur, Sharpen) using the current brush.
	 *   by Andy Thomas
	 *   1999
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_convolve_default(drawable:Drawable, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * Align all visible layers of the image
	 *   by Shuji Narazaki <narazaki@@InetQ.or.jp>
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable (not used)
	 *    link_after_alignment : Int -> Link the visible layers after alignment @{ TRUE, FALSE @}
	 *    use_bottom : Int -> use the bottom layer as the base of alignment @{ TRUE, FALSE @}
	 * @return
	 */
// 	public function plug_in_align_layers(image:Image, drawable:Drawable, link_after_alignment:Int, use_bottom:Int):Void;

	/**
	 * Clear selected area of drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable to clear from
	 * @return
	 */
	public function gimp_edit_clear(drawable:Drawable):Void;

	/**
	 * Sets if the specified image's image component is active.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    component : Int -> The image component @{ RED-CHANNEL (0), GREEN-CHANNEL (1), BLUE-CHANNEL (2), GRAY-CHANNEL (3), INDEXED-CHANNEL (4), ALPHA-CHANNEL (5) @}
	 *    active : Int -> Component is active (TRUE or FALSE)
	 * @return
	 */
	public function gimp_image_set_component_active(image:Image, component:Int, active:Int):Void;

	/**
	 * Set the antialias setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    antialias : Int -> The antialias setting (TRUE or FALSE)
	 * @return
	 */
	public function gimp_context_set_antialias(antialias:Int):Void;

	/**
	 * Check if kerning is used in the text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 * @return
	 *    kerning : Int -> A flag which is true if kerning is used in the text layer. (TRUE or FALSE)
	 */
	public function gimp_text_layer_get_kerning(layer:Layer):Int;

	/**
	 * Change the blending function of a segments range
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    start_segment : Int -> The index of the first segment to operate on (start-segment >= 0)
	 *    end_segment : Int -> The index of the last segment to operate on. If negative, the selection will extend to the end of the string.
	 *    blending_function : Int -> The blending function @{ GRADIENT-SEGMENT-LINEAR (0), GRADIENT-SEGMENT-CURVED (1), GRADIENT-SEGMENT-SINE (2), GRADIENT-SEGMENT-SPHERE-INCREASING (3), GRADIENT-SEGMENT-SPHERE-DECREASING (4) @}
	 * @return
	 */
	public function gimp_gradient_segment_range_set_blending_function(name:String, start_segment:Int, end_segment:Int, blending_function:Int):Void;

	/**
	 * Smear image to give windblown effect
	 *   by Nigel Wetten
	 *   May 2000
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    threshold : Int -> Controls where blending will be done >= 0
	 *    direction : Int -> Left or Right: 0 or 1
	 *    strength : Int -> Controls the extent of the blending > 1
	 *    algorithm : Int -> Algorithm @{ WIND (0), BLAST (1) @}
	 *    edge : Int -> Edge behavior @{ BOTH (0), LEADING (1), TRAILING (2) @}
	 * @return
	 */
// 	public function plug_in_wind(image:Image, drawable:Drawable, threshold:Int, direction:Int, strength:Int, algorithm:Int, edge:Int):Void;

	/**
	 * Deletes a palette
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The palette name
	 * @return
	 */
	public function gimp_palette_delete(name:String):Void;

	/**
	 * Create an arrow graphic with an eerie glow for web pages
	 *   by Adrian Likins
	 *   1997
	 * @param
	 *    value : Float -> Size
	 *    option : Int -> Orientation
	 *    color : Color -> Glow colour
	 *    color : Color -> Background colour
	 *    toggle : Int -> Flatten image
	 * @return
	 */
// 	public function script_fu_alien_glow_right_arrow(value:Float, option:Int, color:Color, color:Color, toggle:Int):Void;

	/**
	 * Checks if the specified procedure exists in the procedural database
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2008
	 * @param
	 *    procedure_name : String -> The procedure name
	 * @return
	 *    exists : Int -> Whether a procedure of that name is registered (TRUE or FALSE)
	 */
	public function gimp_procedural_db_proc_exists(procedure_name:String):Int;

	/**
	 * saves files given an URI
	 *   by Michael Natterer, Sven Neumann
	 *   2005-2008
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 * @return
	 */
	public function file_uri_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Returns if the specified image's image component is visible.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    component : Int -> The image component @{ RED-CHANNEL (0), GREEN-CHANNEL (1), BLUE-CHANNEL (2), GRAY-CHANNEL (3), INDEXED-CHANNEL (4), ALPHA-CHANNEL (5) @}
	 * @return
	 *    visible : Int -> Component is visible (TRUE or FALSE)
	 */
	public function gimp_image_get_component_visible(image:Image, component:Int):Int;

	/**
	 * Deletes a named buffer.
	 *   by David Gowers <neota@@softhome.net>
	 *   2005
	 * @param
	 *    buffer_name : String -> The buffer name
	 * @return
	 */
	public function gimp_buffer_delete(buffer_name:String):Void;

	/**
	 * Deprecated: Use 'gimp-vectors-stroke-get-points' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image to list the paths from
	 *    name : String -> The name of the path whose points should be listed.
	 * @return
	 *    path-type : Int -> The type of the path. Currently only one type (1 = Bezier) is supported
	 *    path-closed : Int -> Return if the path is closed. (0 = path open, 1 = path closed)
	 *    num-path-point-details : Int -> The number of points returned. Each point is made up of (x, y, pnt_type) of floats. (num-path-point-details >= 0)
	 *    points-pairs : Array<Float> -> The points in the path represented as 3 floats. The first is the x pos, next is the y pos, last is the type of the pnt. The type field is dependant on the path type. For beziers (type 1 paths) the type can either be (1.0 = BEZIER_ANCHOR, 2.0 = BEZIER_CONTROL, 3.0 = BEZIER_MOVE). Note all points are returned in pixel resolution.
	 */
	public function gimp_path_get_points(image:Image, name:String):python.Tuple.Tuple4<Int,Int,Int,Array<Float>>;

	/**
	 * Draw a grid as specified by the lists of X and Y locations using the current brush
	 *   by Shuji Narazaki <narazaki@@InetQ.or.jp>
	 *   1997
	 * @param
	 *    image : Image -> Image to use
	 *    drawable : Drawable -> Drawable to draw grid
	 *    value : String -> X divisions
	 *    value : String -> Y divisions
	 * @return
	 */
// 	public function script_fu_grid_system(image:Image, drawable:Drawable, value:String, value:String):Void;

	/**
	 * Add a slide-film like frame, sprocket holes and labels to an image
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2004/03/28
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    string : String -> Text
	 *    string : String -> Number
	 *    font : String -> Font
	 *    color : Color -> Font colour
	 *    toggle : Int -> Work on copy
	 * @return
	 */
// 	public function script_fu_slide(image:Image, drawable:Drawable, string:String, string:String, font:String, color:Color, toggle:Int):Void;

	/**
	 * Get the monitor resolution as specified in the Preferences.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 * @return
	 *    xres : Float -> X resolution
	 *    yres : Float -> Y resolution
	 */
	public function gimp_get_monitor_resolution():python.Tuple.Tuple2<Float,Float>;

	/**
	 * Swap the current GIMP foreground and background colors.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 */
	public function gimp_context_swap_colors():Void;

	/**
	 * Sets the right endpoint position of the specified segment
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    segment : Int -> The index of the segment within the gradient (segment >= 0)
	 *    pos : Float -> The position to set the guidepoint to (0 <= pos <= 1)
	 * @return
	 *    final-pos : Float -> The return position
	 */
	public function gimp_gradient_segment_set_right_pos(name:String, segment:Int, pos:Float):Float;

	/**
	 * Use mouse control to warp image areas
	 *   by Norbert Schmitz
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_iwarp(image:Image, drawable:Drawable):Void;

	/**
	 * Create a rectangular selection with round corners over the specified image;
	 *   by Martin Nordholts
	 *   2010
	 * @param
	 *    image : Image -> The image
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    x : Float -> x coordinate of upper-left corner of rectangle
	 *    y : Float -> y coordinate of upper-left corner of rectangle
	 *    width : Float -> The width of the rectangle (width >= 0)
	 *    height : Float -> The height of the rectangle (height >= 0)
	 *    corner_radius_x : Float -> The corner radius in X direction (0 <= corner-radius-x <= 262144)
	 *    corner_radius_y : Float -> The corner radius in Y direction (0 <= corner-radius-y <= 262144)
	 * @return
	 */
	public function gimp_image_select_round_rectangle(image:Image, operation:Int, x:Float, y:Float, width:Float, height:Float, corner_radius_x:Float, corner_radius_y:Float):Void;

	/**
	 * saves files as C unsigned character array
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 * @return
	 */
	public function file_header_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Bookmark to the user manual
	 *   by Roman Joost <romanofski@@gimp.org>
	 *   2006
	 * @param
	 * @return
	 */
	public function gimp_help_concepts_paths():Void;

	/**
	 * Find the layer visible at the specified coordinates.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    x : Int -> The x coordinate for the pick
	 *    y : Int -> The y coordinate for the pick
	 * @return
	 *    layer : Layer -> The layer found at the specified coordinates
	 */
	public function gimp_image_pick_correlate_layer(image:Image, x:Int, y:Int):Layer;

	/**
	 * Get brush aspect ratio.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 * @return
	 *    aspect : Float -> aspect ratio (-20 <= aspect <= 20)
	 */
	public function gimp_context_get_brush_aspect_ratio():Float;

	/**
	 * Convert a selection to an image
	 *   by Adrian Likins <adrian@@gimp.org>
	 *   10/07/97
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 * @return
	 */
// 	public function script_fu_selection_to_image(image:Image, drawable:Drawable):Void;

	/**
	 * Saves files in the PPM file format
	 *   by Erik Nygren
	 *   1996
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    raw : Int -> Specify non-zero for raw output, zero for ascii output
	 * @return
	 */
	public function file_ppm_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, raw:Int):Void;

	/**
	 * Add a gradient effect, a drop shadow and a background to the selected region (or alpha)
	 *   by Spencer Kimball
	 *   1996
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    color : Color -> Background colour
	 *    color : Color -> Text colour
	 * @return
	 */
// 	public function script_fu_basic1_logo_alpha(image:Image, drawable:Drawable, color:Color, color:Color):Void;

	/**
	 * Creates a new text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    image : Image -> The image
	 *    text : String -> The text to generate (in UTF-8 encoding)
	 *    fontname : String -> The name of the font
	 *    size : Float -> The size of text in either pixels or points (0 <= size <= 8192)
	 *    unit : Int -> The units of specified size
	 * @return
	 *    layer : Layer -> The new text layer.
	 */
	public function gimp_text_layer_new(image:Image, text:String, fontname:String, size:Float, unit:Int):Layer;

	/**
	 * Simulate color distortion produced by a copy machine
	 *   by Spencer Kimball
	 *   2001
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    mask_radius : Float -> Photocopy mask radius (radius of pixel neighborhood)
	 *    sharpness : Float -> Sharpness (detail level) (0.0 - 1.0)
	 *    pct_black : Float -> Percentage of darkened pixels to set to black (0.0 - 1.0)
	 *    pct_white : Float -> Percentage of non-darkened pixels left white (0.0 - 1.0)
	 * @return
	 */
// 	public function plug_in_photocopy(image:Image, drawable:Drawable, mask_radius:Float, sharpness:Float, pct_black:Float, pct_white:Float):Void;

	/**
	 * Get the sample criterion setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 * @return
	 *    sample-criterion : Int -> The sample criterion setting @{ SELECT-CRITERION-COMPOSITE (0), SELECT-CRITERION-R (1), SELECT-CRITERION-G (2), SELECT-CRITERION-B (3), SELECT-CRITERION-H (4), SELECT-CRITERION-S (5), SELECT-CRITERION-V (6) @}
	 */
	public function gimp_context_get_sample_criterion():Int;

	/**
	 * Returns the image's colormap
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    num-bytes : Int -> Number of bytes in the colormap array (num-bytes >= 0)
	 *    colormap : Array<Int> -> The image's colormap
	 */
	public function gimp_image_get_colormap(image:Image):python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * Saves files in Windows BMP file format
	 *   by Alexander Schulz
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name entered
	 * @return
	 */
	public function file_bmp_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Swap two colors in the colormap
	 *   by Mukund Sivaraman <muks@@mukund.org>
	 *   June 2006
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    index1 : Int -> First index in the colormap
	 *    index2 : Int -> Second (other) index in the colormap
	 * @return
	 */
// 	public function plug_in_colormap_swap(image:Image, drawable:Drawable, index1:Int, index2:Int):Void;

	/**
	 * Blur the edges of an image so the result tiles seamlessly
	 *   by Chris Gutteridge
	 *   25th April 1998
	 * @param
	 *    image : Image -> The Image
	 *    drawable : Drawable -> The Layer
	 *    value : Float -> Radius
	 *    toggle : Int -> Blur vertically
	 *    toggle : Int -> Blur horizontally
	 *    option : Int -> Blur type
	 * @return
	 */
// 	public function script_fu_tile_blur(image:Image, drawable:Drawable, value:Float, toggle:Int, toggle:Int, option:Int):Void;

	/**
	 * Deprecated: Use 'gimp-image-get-active-vectors' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image to get the current path from
	 * @return
	 *    name : String -> The name of the current path.
	 */
	public function gimp_path_get_current(image:Image):String;

	/**
	 * Deprecated: Use 'gimp-image-select-contiguous-color' instead.
	 *   by David Gowers
	 *   2006
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    x : Float -> x coordinate of initial seed fill point: (image coordinates)
	 *    y : Float -> y coordinate of initial seed fill point: (image coordinates)
	 *    threshold : Int -> Threshold in intensity levels (0 <= threshold <= 255)
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    antialias : Int -> Antialiasing (TRUE or FALSE)
	 *    feather : Int -> Feather option for selections (TRUE or FALSE)
	 *    feather_radius_x : Float -> Radius for feather operation in X direction (feather-radius-x >= 0)
	 *    feather_radius_y : Float -> Radius for feather operation in Y direction (feather-radius-y >= 0)
	 *    sample_merged : Int -> Use the composite image, not the drawable (TRUE or FALSE)
	 *    select_transparent : Int -> Whether to consider transparent pixels for selection. If TRUE, transparency is considered as a unique selectable color. (TRUE or FALSE)
	 *    select_criterion : Int -> The criterion used to determine color similarity. SELECT_CRITERION_COMPOSITE is the standard choice. @{ SELECT-CRITERION-COMPOSITE (0), SELECT-CRITERION-R (1), SELECT-CRITERION-G (2), SELECT-CRITERION-B (3), SELECT-CRITERION-H (4), SELECT-CRITERION-S (5), SELECT-CRITERION-V (6) @}
	 * @return
	 */
	public function gimp_fuzzy_select_full(drawable:Drawable, x:Float, y:Float, threshold:Int, operation:Int, antialias:Int, feather:Int, feather_radius_x:Float, feather_radius_y:Float, sample_merged:Int, select_transparent:Int, select_criterion:Int):Void;

	/**
	 * Paste buffer to a new image.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 * @return
	 *    image : Image -> The new image
	 */
	public function gimp_edit_paste_as_new():Image;

	/**
	 * Rotate the specified item about given coordinates through the specified angle.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    item : Item -> The affected item
	 *    rotate_type : Int -> Type of rotation @{ ROTATE-90 (0), ROTATE-180 (1), ROTATE-270 (2) @}
	 *    auto_center : Int -> Whether to automatically rotate around the selection center (TRUE or FALSE)
	 *    center_x : Float -> The hor. coordinate of the center of rotation
	 *    center_y : Float -> The vert. coordinate of the center of rotation
	 * @return
	 *    item : Item -> The rotated item
	 */
	public function gimp_item_transform_rotate_simple(item:Item, rotate_type:Int, auto_center:Int, center_x:Float, center_y:Float):Item;

	/**
	 * Remove empty borders from the layer
	 *   by Tim Newsome
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_autocrop_layer(image:Image, drawable:Drawable):Void;

	/**
	 * Add a global parasite.
	 *   by Jay Cox
	 *   1998
	 * @param
	 *    parasite : Parasite -> The parasite to attach
	 * @return
	 */
	public function gimp_attach_parasite(parasite:Parasite):Void;

	/**
	 * Deprecated: Use 'gimp-image-select-item' instead.
	 *   by 
	 *   
	 * @param
	 *    channel : Channel -> The channel
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 * @return
	 */
	public function gimp_selection_combine(channel:Channel, operation:Int):Void;

	/**
	 * Get brush size in pixels.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 * @return
	 *    size : Float -> brush size in pixels (size >= 0)
	 */
	public function gimp_context_get_brush_size():Float;

	/**
	 * Save a file in X10 or X11 bitmap (XBM) file format
	 *   by Gordon Matzigkeit
	 *   1998
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save
	 *    raw_filename : String -> The name entered
	 *    comment : String -> Image description (maximum 72 bytes)
	 *    x10 : Int -> Save in X10 format
	 *    x_hot : Int -> X coordinate of hotspot
	 *    y_hot : Int -> Y coordinate of hotspot
	 *    prefix : String -> Identifier prefix [determined from filename]
	 *    write_mask : Int -> (0 = ignore, 1 = save as extra file)
	 *    mask_extension : String -> Extension of the mask file
	 * @return
	 */
	public function file_xbm_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, comment:String, x10:Int, x_hot:Int, y_hot:Int, prefix:String, write_mask:Int, mask_extension:String):Void;

	/**
	 * Deprecated: Use 'gimp-vectors-get-tattoo' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    name : String -> The name of the path whose tattoo should be obtained.
	 * @return
	 *    tattoo : Int -> The tattoo associated with the named path.
	 */
	public function gimp_path_get_tattoo(image:Image, name:String):Int;

	/**
	 * Rename a gradient
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    new_name : String -> The new name of the gradient
	 * @return
	 *    actual-name : String -> The actual new name of the gradient
	 */
	public function gimp_gradient_rename(name:String, new_name:String):String;

	/**
	 * Retrieves the specified buffer's bytes.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 *    buffer_name : String -> The buffer name
	 * @return
	 *    bytes : Int -> The buffer bpp
	 */
	public function gimp_buffer_get_bytes(buffer_name:String):Int;

	/**
	 * Extends a bezier stroke with a cubic bezier spline.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 *    x0 : Float -> The x-coordinate of the first control point
	 *    y0 : Float -> The y-coordinate of the first control point
	 *    x1 : Float -> The x-coordinate of the second control point
	 *    y1 : Float -> The y-coordinate of the second control point
	 *    x2 : Float -> The x-coordinate of the end point
	 *    y2 : Float -> The y-coordinate of the end point
	 * @return
	 */
	public function gimp_vectors_bezier_stroke_cubicto(vectors:Vectors, stroke_id:Int, x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float):Void;

	/**
	 * Get the tattoo of the specified item.
	 *   by Jay Cox
	 *   1998
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    tattoo : Int -> The item tattoo
	 */
	public function gimp_item_get_tattoo(item:Item):Int;

	/**
	 * Returns whether the item is a layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    layer : Int -> TRUE if the item is a layer, FALSE otherwise (TRUE or FALSE)
	 */
	public function gimp_item_is_layer(item:Item):Int;

	/**
	 * Adjust the letter spacing in a text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    letter_spacing : Float -> The additional letter spacing to use. (-8192 <= letter-spacing <= 8192)
	 * @return
	 */
	public function gimp_text_layer_set_letter_spacing(layer:Layer, letter_spacing:Float):Void;

	/**
	 * Flips the image horizontally or vertically.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    flip_type : Int -> Type of flip @{ ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) @}
	 * @return
	 */
	public function gimp_image_flip(image:Image, flip_type:Int):Void;

	/**
	 * Pixelize the contents of the specified drawable
	 *   by Spencer Kimball & Peter Mattis, Tracy Scott, (ported to 1.0 by) Eiichi Takamori
	 *   2001
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    pixel_width : Int -> Pixel width (the decrease in horizontal resolution)
	 *    pixel_height : Int -> Pixel height (the decrease in vertical resolution)
	 * @return
	 */
// 	public function plug_in_pixelize2(image:Image, drawable:Drawable, pixel_width:Int, pixel_height:Int):Void;

	/**
	 * saves files in Compuserve GIF file format
	 *   by Spencer Kimball, Peter Mattis, Adam Moss, David Koblas
	 *   1995-1997
	 * @param
	 *    image : Image -> Image to save
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name entered
	 *    interlace : Int -> Try to save as interlaced
	 *    loop : Int -> (animated gif) loop infinitely
	 *    default_delay : Int -> (animated gif) Default delay between framese in milliseconds
	 *    default_dispose : Int -> (animated gif) Default disposal type (0=`don't care`, 1=combine, 2=replace)
	 * @return
	 */
	public function file_gif_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, interlace:Int, loop:Int, default_delay:Int, default_dispose:Int):Void;

	/**
	 * Set the value of an XMP property
	 *   by Raphaël Quinet <raphael@@gimp.org>
	 *   2005
	 * @param
	 *    image : Image -> Input image
	 *    schema : String -> XMP schema prefix or URI
	 *    property : String -> XMP property name
	 *    value : String -> XMP property value
	 * @return
	 */
// 	public function plug_in_metadata_set_simple(image:Image, schema:String, property:String, value:String):Void;

	/**
	 * Rotate the specified item about given coordinates through the specified angle.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    item : Item -> The affected item
	 *    angle : Float -> The angle of rotation (radians)
	 *    auto_center : Int -> Whether to automatically rotate around the selection center (TRUE or FALSE)
	 *    center_x : Float -> The hor. coordinate of the center of rotation
	 *    center_y : Float -> The vert. coordinate of the center of rotation
	 * @return
	 *    item : Item -> The rotated item
	 */
	public function gimp_item_transform_rotate(item:Item, angle:Float, auto_center:Int, center_x:Float, center_y:Float):Item;

	/**
	 * Set ink blob angle in degrees.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 *    angle : Float -> ink blob angle in degrees (-180 <= angle <= 180)
	 * @return
	 */
	public function gimp_context_set_ink_blob_angle(angle:Float):Void;

	/**
	 * Deprecated: Use 'gimp-gradient-get-uniform-samples' instead.
	 *   by 
	 *   
	 * @param
	 *    num_samples : Int -> The number of samples to take (num-samples >= 2)
	 *    reverse : Int -> Use the reverse gradient (TRUE or FALSE)
	 * @return
	 *    array-length : Int -> Length of the color_samples array (4 * num_samples) (array-length >= 0)
	 *    color-samples : Array<Float> -> Color samples: @{ R1, G1, B1, A1, ..., Rn, Gn, Bn, An @}
	 */
	public function gimp_gradients_sample_uniform(num_samples:Int, reverse:Int):python.Tuple.Tuple2<Int,Array<Float>>;

	/**
	 * Loads files in KISS CEL file format
	 *   by Nick Lamb
	 *   May 1998
	 * @param
	 *    filename : String -> Filename to load image from
	 *    raw_filename : String -> Name entered
	 *    palette_filename : String -> Filename to load palette from
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_cel_load(filename:String, raw_filename:String, palette_filename:String):Image;

	/**
	 * Add a jagged, fuzzy border to an image
	 *   by Chris Gutteridge
	 *   3rd April 1998
	 * @param
	 *    image : Image -> The image
	 *    drawable : Drawable -> The layer
	 *    color : Color -> Colour
	 *    value : Float -> Border size
	 *    toggle : Int -> Blur border
	 *    value : Float -> Granularity (1 is Low)
	 *    toggle : Int -> Add shadow
	 *    value : Float -> Shadow weight (%)
	 *    toggle : Int -> Work on copy
	 *    toggle : Int -> Flatten image
	 * @return
	 */
// 	public function script_fu_fuzzy_border(image:Image, drawable:Drawable, color:Color, value:Float, toggle:Int, value:Float, toggle:Int, value:Float, toggle:Int, toggle:Int):Void;

	/**
	 * Sets the specified image's active vectors.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    active_vectors : Vectors -> The new image active vectors
	 * @return
	 */
	public function gimp_image_set_active_vectors(image:Image, active_vectors:Vectors):Void;

	/**
	 * Sets an error handler for procedure calls.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2008
	 * @param
	 *    handler : Int -> Who is responsible for handling procedure call errors @{ PDB-ERROR-HANDLER-INTERNAL (0), PDB-ERROR-HANDLER-PLUGIN (1) @}
	 * @return
	 */
	public function gimp_plugin_set_pdb_error_handler(handler:Int):Void;

	/**
	 * Bookmark to the user manual
	 *   by Roman Joost <romanofski@@gimp.org>
	 *   2006
	 * @param
	 * @return
	 */
	public function gimp_help_using_photography():Void;

	/**
	 * Set the number of spikes for a generated brush.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 *    spikes_in : Int -> The desired number of spikes
	 * @return
	 *    spikes-out : Int -> The number of spikes actually assigned
	 */
	public function gimp_brush_set_spikes(name:String, spikes_in:Int):Int;

	/**
	 * Create an image filled with an example of the current gradient
	 *   by Federico Mena Quintero
	 *   June 1997
	 * @param
	 *    value : Float -> Width
	 *    value : Float -> Height
	 *    toggle : Int -> Gradient reverse
	 * @return
	 */
// 	public function script_fu_gradient_example(value:Float, value:Float, toggle:Int):Void;

	/**
	 * Create a logo using a rock-like texture, a nova glow and shadow
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Glow colour
	 * @return
	 */
// 	public function script_fu_starscape_logo(string:String, value:Float, font:String, color:Color):Void;

	/**
	 * Add an eerie glow around the selected region (or alpha)
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Glow size (pixels * 4)
	 *    color : Color -> Glow colour
	 * @return
	 */
// 	public function script_fu_alien_glow_logo_alpha(image:Image, drawable:Drawable, value:Float, color:Color):Void;

	/**
	 * load file of the SunRaster file format
	 *   by Peter Kirchgessner
	 *   1996
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_sunras_load(filename:String, raw_filename:String):Image;

	/**
	 * Deprecated: Use 'gimp-gradient-get-uniform-samples' instead.
	 *   by 
	 *   
	 * @param
	 *    name : String -> The gradient name (\\ means current active gradient)
	 *    sample_size : Int -> Size of the sample to return when the gradient is changed (1 <= sample-size <= 10000)
	 *    reverse : Int -> Use the reverse gradient (TRUE or FALSE)
	 * @return
	 *    actual-name : String -> The gradient name
	 *    width : Int -> The gradient sample width (r,g,b,a) (width >= 0)
	 *    grad-data : Array<Float> -> The gradient sample data
	 */
	public function gimp_gradients_get_gradient_data(name:String, sample_size:Int, reverse:Int):python.Tuple.Tuple3<String,Int,Array<Float>>;

	/**
	 * Sets the number of columns to use when displaying the palette
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2005
	 * @param
	 *    name : String -> The palette name
	 *    columns : Int -> The new number of columns (0 <= columns <= 64)
	 * @return
	 */
	public function gimp_palette_set_columns(name:String, columns:Int):Void;

	/**
	 * Solid noise applied with Difference layer mode
	 *   by Martin Nordholts <enselic@@hotmail.com>
	 *   2006/10/25
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 * @return
	 */
// 	public function script_fu_difference_clouds(image:Image, drawable:Drawable):Void;

	/**
	 * Heal from the source to the dest drawable using the current brush
	 *   by Kevin Sookocheff
	 *   2006
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_heal_default(drawable:Drawable, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * Returns the number of segments of the specified gradient
	 *   by Lars-Peter Clausen <lars@@metafoo.de>
	 *   2008
	 * @param
	 *    name : String -> The gradient name
	 * @return
	 *    num-segments : Int -> Number of segments
	 */
	public function gimp_gradient_get_number_of_segments(name:String):Int;

	/**
	 * Create a beveled pattern button for webpages
	 *   by Federico Mena Quintero
	 *   July 1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Text colour
	 *    pattern : String -> Pattern
	 *    toggle : Int -> Pressed
	 * @return
	 */
// 	public function script_fu_beveled_pattern_button(string:String, value:Float, font:String, color:Color, pattern:String, toggle:Int):Void;

	/**
	 * Compose an image from multiple drawables of gray images
	 *   by Peter Kirchgessner
	 *   1998
	 * @param
	 *    image1 : Image -> First input image (not used)
	 *    drawable1 : Drawable -> First input drawable
	 *    drawable2 : Drawable -> Second input drawable
	 *    drawable3 : Drawable -> Third input drawable
	 *    drawable4 : Drawable -> Fourth input drawable
	 *    compose_type : String -> What to compose: \RGB\, \RGBA\, \HSV\, \HSL\, \CMY\, \CMYK\, \LAB\, \YCbCr_ITU_R470\, \YCbCr_ITU_R709\, \YCbCr_ITU_R470_256\, \YCbCr_ITU_R709_256\
	 * @return
	 *    new-image : Image -> Output image
	 */
// 	public function plug_in_drawable_compose(image1:Image, drawable1:Drawable, drawable2:Drawable, drawable3:Drawable, drawable4:Drawable, compose_type:String):Image;

	/**
	 * Set the paint mode.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 *    paint_mode : Int -> The paint mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 * @return
	 */
	public function gimp_context_set_paint_mode(paint_mode:Int):Void;

	/**
	 * Create a logo with blended backgrounds, highlights and shadows
	 *   by Spencer Kimball
	 *   1996
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Text colour
	 *    color : Color -> Background colour
	 *    option : Int -> Blend mode
	 *    color : Color -> Start blend
	 *    color : Color -> End blend
	 *    gradient : String -> Gradient
	 *    toggle : Int -> Gradient reverse
	 * @return
	 */
// 	public function script_fu_blended_logo(string:String, value:Float, font:String, color:Color, color:Color, option:Int, color:Color, color:Color, gradient:String, toggle:Int):Void;

	/**
	 * Queries the procedural database for information on the specified procedure.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    procedure_name : String -> The procedure name
	 * @return
	 *    blurb : String -> A short blurb
	 *    help : String -> Detailed procedure help
	 *    author : String -> Author(s) of the procedure
	 *    copyright : String -> The copyright
	 *    date : String -> Copyright date
	 *    proc-type : Int -> The procedure type @{ INTERNAL (0), PLUGIN (1), EXTENSION (2), TEMPORARY (3) @}
	 *    num-args : Int -> The number of input arguments
	 *    num-values : Int -> The number of return values
	 */
	public function gimp_procedural_db_proc_info(procedure_name:String):Dynamic;

	/**
	 * Returns TRUE if the display is valid.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2007
	 * @param
	 *    display : Display -> The display to check
	 * @return
	 *    valid : Int -> Whether the display ID is valid (TRUE or FALSE)
	 */
	public function gimp_display_is_valid(display:Display):Int;

	/**
	 * Returns the item's parent item.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    parent : Item -> The item's parent item
	 */
	public function gimp_item_get_parent(item:Item):Item;

	/**
	 * Recompose an image that was previously decomposed
	 *   by Bill Skaggs
	 *   2004
	 * @param
	 *    image : Image -> Image to recompose from
	 *    drawable : Drawable -> Not used
	 * @return
	 */
// 	public function plug_in_recompose(image:Image, drawable:Drawable):Void;

	/**
	 * Clone from the source to the dest drawable using the current brush
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    src_drawable : Drawable -> The source drawable
	 *    clone_type : Int -> The type of clone @{ IMAGE-CLONE (0), PATTERN-CLONE (1) @}
	 *    src_x : Float -> The x coordinate in the source image
	 *    src_y : Float -> The y coordinate in the source image
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_clone(drawable:Drawable, src_drawable:Drawable, clone_type:Int, src_x:Float, src_y:Float, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * Grow the image's selection
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    steps : Int -> Steps of grow (in pixels) (steps >= 0)
	 * @return
	 */
	public function gimp_selection_grow(image:Image, steps:Int):Void;

	/**
	 * Sets the entries in the image's colormap.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    num_bytes : Int -> Number of bytes in the colormap array (0 <= num-bytes <= 768)
	 *    colormap : Array<Int> -> The new colormap values
	 * @return
	 */
	public function gimp_image_set_colormap(image:Image, num_bytes:Int, colormap:Array<Int>):Void;

	/**
	 * Retrieves the right endpoint position of the specified segment
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    segment : Int -> The index of the segment within the gradient (segment >= 0)
	 * @return
	 *    pos : Float -> The return position
	 */
	public function gimp_gradient_segment_get_right_pos(name:String, segment:Int):Float;

	/**
	 * Set the show mask setting of the specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 *    show_mask : Int -> The new layer's show mask setting (TRUE or FALSE)
	 * @return
	 */
	public function gimp_layer_set_show_mask(layer:Layer, show_mask:Int):Void;

	/**
	 * Cut image into paper tiles, and slide them
	 *   by Hirotsuna Mizuno <s1041150@@u-aizu.ac.jp>
	 *   September 31, 1999
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    tile_size : Int -> Tile size (pixels)
	 *    move_max : Float -> Max move rate (%)
	 *    fractional_type : Int -> 0:Background 1:Ignore 2:Force
	 *    wrap_around : Int -> Wrap around (bool)
	 *    centering : Int -> Centering (bool)
	 *    background_type : Int -> 0:Transparent 1:Inverted 2:Image? 3:FG 4:BG 5:Color
	 *    background_color : Int -> Background color (for bg-type 5)
	 *    background_alpha : Int -> Opacity (for bg-type 5)
	 * @return
	 */
// 	public function plug_in_papertile(image:Image, drawable:Drawable, tile_size:Int, move_max:Float, fractional_type:Int, wrap_around:Int, centering:Int, background_type:Int, background_color:Int, background_alpha:Int):Void;

	/**
	 * Lists the available paint methods.
	 *   by Simon Budig
	 *   2007
	 * @param
	 * @return
	 *    num-paint-methods : Int -> The number of the available paint methods (num-paint-methods >= 0)
	 *    paint-methods : Array<String> -> The names of the available paint methods
	 */
	public function gimp_context_list_paint_methods():python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Create an image filled with a Land Pattern
	 *   by Adrian Likins <aklikins@@eos.ncsu.edu>
	 *   1997
	 * @param
	 *    value : Float -> Image width
	 *    value : Float -> Image height
	 *    value : Float -> Random seed
	 *    value : Float -> Detail level
	 *    value : Float -> Scale X
	 *    value : Float -> Scale Y
	 * @return
	 */
// 	public function script_fu_flatland(value:Float, value:Float, value:Float, value:Float, value:Float, value:Float):Void;

	/**
	 * Raise the specified item in its level in its item tree
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to raise
	 * @return
	 */
	public function gimp_image_raise_item(image:Image, item:Item):Void;

	/**
	 * Add a Trace of Particles effect to the selected region (or alpha)
	 *   by Shuji Narazaki (narazaki@@InetQ.or.jp)
	 *   1997
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Border size (pixels)
	 *    value : Float -> Hit rate
	 *    value : Float -> Edge width
	 *    toggle : Int -> Edge only
	 *    color : Color -> Base colour
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_t_o_p_logo_alpha(image:Image, drawable:Drawable, value:Float, value:Float, value:Float, toggle:Int, color:Color, color:Color):Void;

	/**
	 * Find a layer with a given tattoo in an image.
	 *   by Jay Cox
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    tattoo : Int -> The tattoo of the layer to find
	 * @return
	 *    layer : Layer -> The layer with the specified tattoo
	 */
	public function gimp_image_get_layer_by_tattoo(image:Image, tattoo:Int):Layer;

	/**
	 * Blur neighboring pixels, but only in low-contrast areas
	 *   by Thom van Os
	 *   1999
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    radius : Float -> Radius of gaussian blur (in pixels, > 0.0)
	 *    max_delta : Int -> Maximum delta
	 * @return
	 */
// 	public function plug_in_sel_gauss(image:Image, drawable:Drawable, radius:Float, max_delta:Int):Void;

	/**
	 * Create an Iterated Function System (IFS) fractal
	 *   by Owen Taylor
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_ifscompose(image:Image, drawable:Drawable):Void;

	/**
	 * Ends the progress bar for the current plug-in.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2007
	 * @param
	 * @return
	 */
	public function gimp_progress_end():Void;

	/**
	 * Remove the specified channel from the image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    channel : Channel -> The channel
	 * @return
	 */
	public function gimp_image_remove_channel(image:Image, channel:Channel):Void;

	/**
	 * Removes a global parasite.
	 *   by Jay Cox
	 *   1998
	 * @param
	 *    name : String -> The name of the parasite to detach.
	 * @return
	 */
	public function gimp_detach_parasite(name:String):Void;

	/**
	 * Bookmark to the user manual
	 *   by Roman Joost <romanofski@@gimp.org>
	 *   2006
	 * @param
	 * @return
	 */
	public function gimp_help_using_docks():Void;

	/**
	 * Sharpen the selection mask.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_selection_sharpen(image:Image):Void;

	/**
	 * Returns the specified image's unit.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1998
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    unit : Int -> The unit
	 */
	public function gimp_image_get_unit(image:Image):Int;

	/**
	 * Stretch image contrast to cover the maximum possible range
	 *   by Scott Goehring and Federico Mena Quintero
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_autostretch_hsv(image:Image, drawable:Drawable):Void;

	/**
	 * Apply default RGB color profile on the image
	 *   by Sven Neumann
	 *   2006, 2007
	 * @param
	 *    image : Image -> Input image
	 *    intent : Int -> Rendering intent (enum GimpColorRenderingIntent)
	 *    bpc : Int -> Black point compensation
	 * @return
	 */
// 	public function plug_in_icc_profile_apply_rgb(image:Image, intent:Int, bpc:Int):Void;

	/**
	 * Get orientation of a guide on an image.
	 *   by Adam D. Moss
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    guide : Int -> The guide
	 * @return
	 *    orientation : Int -> The guide's orientation @{ ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) @}
	 */
	public function gimp_image_get_guide_orientation(image:Image, guide:Int):Int;

	/**
	 * Create a new layer from what is visible in an image.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2008
	 * @param
	 *    image : Image -> The source image from where the content is copied
	 *    dest_image : Image -> The destination image to which to add the layer
	 *    name : String -> The layer name
	 * @return
	 *    layer : Layer -> The newly created layer
	 */
	public function gimp_layer_new_from_visible(image:Image, dest_image:Image, name:String):Layer;

	/**
	 * Analyze the set of colors in the image
	 *   by robert@@experimental.net
	 *   June 20th, 1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 * @return
	 *    num-colors : Int -> Number of colors in the image
	 */
// 	public function plug_in_ccanalyze(image:Image, drawable:Drawable):Int;

	/**
	 * Deletes a gradient
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 * @return
	 */
	public function gimp_gradient_delete(name:String):Void;

	/**
	 * Deprecated: Use 'gimp-layer-scale' instead.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2008
	 * @param
	 *    layer : Layer -> The layer
	 *    new_width : Int -> New layer width (1 <= new-width <= 262144)
	 *    new_height : Int -> New layer height (1 <= new-height <= 262144)
	 *    local_origin : Int -> Use a local origin (as opposed to the image origin) (TRUE or FALSE)
	 *    interpolation : Int -> Type of interpolation @{ INTERPOLATION-NONE (0), INTERPOLATION-LINEAR (1), INTERPOLATION-CUBIC (2), INTERPOLATION-LANCZOS (3) @}
	 * @return
	 */
	public function gimp_layer_scale_full(layer:Layer, new_width:Int, new_height:Int, local_origin:Int, interpolation:Int):Void;

	/**
	 * Create an array of copies of the image
	 *   by Spencer Kimball & Peter Mattis
	 *   1996-1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    new_width : Int -> New (tiled) image width
	 *    new_height : Int -> New (tiled) image height
	 *    new_image : Int -> Create a new image?
	 * @return
	 *    new-image : Image -> Output image (-1 if new-image == FALSE)
	 *    new-layer : Layer -> Output layer (-1 if new-image == FALSE)
	 */
// 	public function plug_in_tile(image:Image, drawable:Drawable, new_width:Int, new_height:Int, new_image:Int):python.Tuple.Tuple2<Image,Layer>;

	/**
	 * Create or alter units used in GIMP
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2000
	 * @param
	 * @return
	 */
// 	public function plug_in_unit_editor():Void;

	/**
	 * Set the opacity of the specified channel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    channel : Channel -> The channel
	 *    opacity : Float -> The new channel opacity (0 <= opacity <= 100)
	 * @return
	 */
	public function gimp_channel_set_opacity(channel:Channel, opacity:Float):Void;

	/**
	 * Set the image dirty count to 0.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_image_clean_all(image:Image):Void;

	/**
	 * Determine whether the selection is empty.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    is-empty : Int -> Is the selection empty? (TRUE or FALSE)
	 */
	public function gimp_selection_is_empty(image:Image):Int;

	/**
	 * Gets the spacing of an image's grid.
	 *   by Sylvain Foret
	 *   2005
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    xspacing : Float -> The image's grid horizontal spacing
	 *    yspacing : Float -> The image's grid vertical spacing
	 */
	public function gimp_image_grid_get_spacing(image:Image):python.Tuple.Tuple2<Float,Float>;

	/**
	 * Remove the specified layer from the image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    layer : Layer -> The layer
	 * @return
	 */
	public function gimp_image_remove_layer(image:Image, layer:Layer):Void;

	/**
	 * scales the given stroke.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 *    scale_x : Float -> Scale factor in x direction
	 *    scale_y : Float -> Scale factor in y direction
	 * @return
	 */
	public function gimp_vectors_stroke_scale(vectors:Vectors, stroke_id:Int, scale_x:Float, scale_y:Float):Void;

	/**
	 * Get ink blob size in pixels.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 * @return
	 *    size : Float -> ink blob size in pixels (0 <= size <= 200)
	 */
	public function gimp_context_get_ink_size():Float;

	/**
	 * Replace a range of colors with another
	 *   by Sven Anders (anderss@@fmi.uni-passau.de) and Pavel Grinfeld (pavel@@ml.com)
	 *   04th April 1999
	 * @param
	 *    image : Image -> Input image (used for indexed images)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_rotate_colormap(image:Image, drawable:Drawable):Void;

	/**
	 * Uniformly redistribute the segment range's handles
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    start_segment : Int -> The index of the first segment to operate on (start-segment >= 0)
	 *    end_segment : Int -> The index of the last segment to operate on. If negative, the selection will extend to the end of the string.
	 * @return
	 */
	public function gimp_gradient_segment_range_redistribute_handles(name:String, start_segment:Int, end_segment:Int):Void;

	/**
	 * Set the linked state of the specified item.
	 *   by Wolfgang Hofer
	 *   1998
	 * @param
	 *    item : Item -> The item
	 *    linked : Int -> The new item linked state (TRUE or FALSE)
	 * @return
	 */
	public function gimp_item_set_linked(item:Item, linked:Int):Void;

	/**
	 * Browse the GIMP user manual
	 *   by Sven Neumann <sven@@gimp.org>, Michael Natterer <mitch@@gimp.org>Henrik Brix Andersen <brix@@gimp.org>
	 *   1999-2008
	 * @param
	 *    num_domain_names : Int -> 
	 *    domain_names : Array<String> -> 
	 *    num_domain_uris : Int -> 
	 *    domain_uris : Array<String> -> 
	 * @return
	 */
	public function extension_gimp_help_browser(num_domain_names:Int, domain_names:Array<String>, num_domain_uris:Int, domain_uris:Array<String>):Void;

	/**
	 * Returns the XCF URI for the specified image.
	 *   by Eric Grivel <gimp@@lumenssolutions.com>
	 *   2011
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    uri : String -> The imported URI
	 */
	public function gimp_image_get_xcf_uri(image:Image):String;

	/**
	 * Adds a bezier stroke describing an ellipse the vectors object.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    x0 : Float -> The x-coordinate of the center
	 *    y0 : Float -> The y-coordinate of the center
	 *    radius_x : Float -> The radius in x direction
	 *    radius_y : Float -> The radius in y direction
	 *    angle : Float -> The angle the x-axis of the ellipse (radians, counterclockwise)
	 * @return
	 *    stroke-id : Int -> The resulting stroke
	 */
	public function gimp_vectors_bezier_stroke_new_ellipse(vectors:Vectors, x0:Float, y0:Float, radius_x:Float, radius_y:Float, angle:Float):Int;

	/**
	 * Retrieve the list of loaded paint dynamics.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 *    filter : String -> An optional regular expression used to filter the list
	 * @return
	 *    num-dynamics : Int -> The number of available paint dynamics (num-dynamics >= 0)
	 *    dynamics-list : Array<String> -> The list of paint dynamics names
	 */
	public function gimp_dynamics_get_list(filter:String):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Deprecated: Use 'gimp-item-transform-shear' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    shear_type : Int -> Type of shear @{ ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) @}
	 *    magnitude : Float -> The magnitude of the shear
	 *    interpolate : Int -> Whether to use interpolation and supersampling (TRUE or FALSE)
	 *    clip_result : Int -> How to clip results @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 * @return
	 *    drawable : Drawable -> The sheared drawable
	 */
	public function gimp_drawable_transform_shear_default(drawable:Drawable, shear_type:Int, magnitude:Float, interpolate:Int, clip_result:Int):Drawable;

	/**
	 * Sets the current font in a font selection dialog.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2003
	 * @param
	 *    font_callback : String -> The name of the callback registered for this pop-up
	 *    font_name : String -> The name of the font to set as selected
	 * @return
	 */
	public function gimp_fonts_set_popup(font_callback:String, font_name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-edit-copy-visible' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 * @return
	 */
// 	public function script_fu_copy_visible(image:Image, drawable:Drawable):Void;

	/**
	 * List all parasites.
	 *   by Marc Lehmann
	 *   1999
	 * @param
	 * @return
	 *    num-parasites : Int -> The number of attached parasites (num-parasites >= 0)
	 *    parasites : Array<String> -> The names of currently attached parasites
	 */
	public function gimp_get_parasite_list():python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Set dither matrix for conversion to indexed
	 *   by David Gowers
	 *   2006
	 * @param
	 *    width : Int -> Width of the matrix (0 to reset to default matrix)
	 *    height : Int -> Height of the matrix (0 to reset to default matrix)
	 *    matrix_length : Int -> The length of 'matrix' (1 <= matrix-length <= 1024)
	 *    matrix : Array<Int> -> The matrix -- all values must be >= 1
	 * @return
	 */
	public function gimp_image_convert_set_dither_matrix(width:Int, height:Int, matrix_length:Int, matrix:Array<Int>):Void;

	/**
	 * Dump image data in RGB(A) format for C source
	 *   by Tim Janik
	 *   1999
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 * @return
	 */
	public function file_csource_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Pushes a context to the top of the plug-in's context stack.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 */
	public function gimp_context_push():Void;

	/**
	 * Deprecated: Use 'gimp-image-scale' instead.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2008
	 * @param
	 *    image : Image -> The image
	 *    new_width : Int -> New image width (1 <= new-width <= 262144)
	 *    new_height : Int -> New image height (1 <= new-height <= 262144)
	 *    interpolation : Int -> Type of interpolation @{ INTERPOLATION-NONE (0), INTERPOLATION-LINEAR (1), INTERPOLATION-CUBIC (2), INTERPOLATION-LANCZOS (3) @}
	 * @return
	 */
	public function gimp_image_scale_full(image:Image, new_width:Int, new_height:Int, interpolation:Int):Void;

	/**
	 * Create a rectangular selection over the specified image;
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    image : Image -> The image
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    x : Float -> x coordinate of upper-left corner of rectangle
	 *    y : Float -> y coordinate of upper-left corner of rectangle
	 *    width : Float -> The width of the rectangle (width >= 0)
	 *    height : Float -> The height of the rectangle (height >= 0)
	 * @return
	 */
	public function gimp_image_select_rectangle(image:Image, operation:Int, x:Float, y:Float, width:Float, height:Float):Void;

	/**
	 * Saves files in PNG file format
	 *   by Michael Sweet <mike@@easysw.com>, Daniel Skarda <0rfelyus@@atrey.karlin.mff.cuni.cz>
	 *   1.3.4 - 03 September 2002
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    interlace : Int -> Use Adam7 interlacing?
	 *    compression : Int -> Deflate Compression factor (0--9)
	 *    bkgd : Int -> Write bKGD chunk?
	 *    gama : Int -> Write gAMA chunk?
	 *    offs : Int -> Write oFFs chunk?
	 *    phys : Int -> Write pHYs chunk?
	 *    time : Int -> Write tIME chunk?
	 * @return
	 */
	public function file_png_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, interlace:Int, compression:Int, bkgd:Int, gama:Int, offs:Int, phys:Int, time:Int):Void;

	/**
	 * Deprecated: Use 'gimp-image-select-color' instead.
	 *   by David Gowers
	 *   2006
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    color : Color -> The color to select
	 *    threshold : Int -> Threshold in intensity levels (0 <= threshold <= 255)
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    antialias : Int -> Antialiasing (TRUE or FALSE)
	 *    feather : Int -> Feather option for selections (TRUE or FALSE)
	 *    feather_radius_x : Float -> Radius for feather operation in X direction (feather-radius-x >= 0)
	 *    feather_radius_y : Float -> Radius for feather operation in Y direction (feather-radius-y >= 0)
	 *    sample_merged : Int -> Use the composite image, not the drawable (TRUE or FALSE)
	 *    select_transparent : Int -> Whether to consider transparent pixels for selection. If TRUE, transparency is considered as a unique selectable color. (TRUE or FALSE)
	 *    select_criterion : Int -> The criterion used to determine color similarity. SELECT_CRITERION_COMPOSITE is the standard choice. @{ SELECT-CRITERION-COMPOSITE (0), SELECT-CRITERION-R (1), SELECT-CRITERION-G (2), SELECT-CRITERION-B (3), SELECT-CRITERION-H (4), SELECT-CRITERION-S (5), SELECT-CRITERION-V (6) @}
	 * @return
	 */
	public function gimp_by_color_select_full(drawable:Drawable, color:Color, threshold:Int, operation:Int, antialias:Int, feather:Int, feather_radius_x:Float, feather_radius_y:Float, sample_merged:Int, select_transparent:Int, select_criterion:Int):Void;

	/**
	 * Deprecated: Use 'gimp-image-select-polygon' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    num_segs : Int -> Number of points (count 1 coordinate as two points) (num-segs >= 2)
	 *    segs : Array<Float> -> Array of points: @{ p1.x, p1.y, p2.x, p2.y, ..., pn.x, pn.y@}
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    antialias : Int -> Antialiasing (TRUE or FALSE)
	 *    feather : Int -> Feather option for selections (TRUE or FALSE)
	 *    feather_radius : Float -> Radius for feather operation (feather-radius >= 0)
	 * @return
	 */
	public function gimp_free_select(image:Image, num_segs:Int, segs:Array<Float>, operation:Int, antialias:Int, feather:Int, feather_radius:Float):Void;

	/**
	 * Set the sample threshold setting as an integer value.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 *    sample_threshold : Int -> The sample threshold setting (0 <= sample-threshold <= 255)
	 * @return
	 */
	public function gimp_context_set_sample_threshold_int(sample_threshold:Int):Void;

	/**
	 * Recolor the image using colors from the active palette
	 *   by Bill Skaggs
	 *   2004
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_palettemap(image:Image, drawable:Drawable):Void;

	/**
	 * Sets the left endpoint position of the specified segment
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    segment : Int -> The index of the segment within the gradient (segment >= 0)
	 *    pos : Float -> The position to set the guidepoint to (0 <= pos <= 1)
	 * @return
	 *    final-pos : Float -> The return position
	 */
	public function gimp_gradient_segment_set_left_pos(name:String, segment:Int, pos:Float):Float;

	/**
	 * Delete the segment range
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    start_segment : Int -> The index of the first segment to operate on (start-segment >= 0)
	 *    end_segment : Int -> The index of the last segment to operate on. If negative, the selection will extend to the end of the string.
	 * @return
	 */
	public function gimp_gradient_segment_range_delete(name:String, start_segment:Int, end_segment:Int):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-2d' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    source_x : Float -> X coordinate of the transformation center
	 *    source_y : Float -> Y coordinate of the transformation center
	 *    scale_x : Float -> Amount to scale in x direction
	 *    scale_y : Float -> Amount to scale in y direction
	 *    angle : Float -> The angle of rotation (radians)
	 *    dest_x : Float -> X coordinate of where the center goes
	 *    dest_y : Float -> Y coordinate of where the center goes
	 *    transform_direction : Int -> Direction of transformation @{ TRANSFORM-FORWARD (0), TRANSFORM-BACKWARD (1) @}
	 *    interpolation : Int -> Type of interpolation @{ INTERPOLATION-NONE (0), INTERPOLATION-LINEAR (1), INTERPOLATION-CUBIC (2), INTERPOLATION-LANCZOS (3) @}
	 *    supersample : Int -> This parameter is ignored, supersampling is performed based on the interpolation type (TRUE or FALSE)
	 *    recursion_level : Int -> Maximum recursion level used for supersampling (3 is a nice value) (recursion-level >= 1)
	 *    clip_result : Int -> How to clip results @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 * @return
	 *    drawable : Drawable -> The transformed drawable
	 */
	public function gimp_drawable_transform_2d(drawable:Drawable, source_x:Float, source_y:Float, scale_x:Float, scale_y:Float, angle:Float, dest_x:Float, dest_y:Float, transform_direction:Int, interpolation:Int, supersample:Int, recursion_level:Int, clip_result:Int):Drawable;

	/**
	 * Make transparency all-or-nothing
	 *   by Shuji Narazaki (narazaki@@InetQ.or.jp)
	 *   1997
	 * @param
	 *    image : Image -> Input image (not used)
	 *    drawable : Drawable -> Input drawable
	 *    threshold : Int -> Threshold
	 * @return
	 */
// 	public function plug_in_threshold_alpha(image:Image, drawable:Drawable, threshold:Int):Void;

	/**
	 * Registers a file load handler procedure.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    procedure_name : String -> The name of the procedure to be used for loading
	 *    extensions : String -> comma separated list of extensions this handler can load (i.e. \jpg,jpeg\)
	 *    prefixes : String -> comma separated list of prefixes this handler can load (i.e. \http:,ftp:\)
	 *    magics : String -> comma separated list of magic file information this handler can load (i.e. \0,string,GIF\)
	 * @return
	 */
	public function gimp_register_magic_load_handler(procedure_name:String, extensions:String, prefixes:String, magics:String):Void;

	/**
	 * Get the compositing color of the specified channel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    channel : Channel -> The channel
	 * @return
	 *    color : Color -> The channel compositing color
	 */
	public function gimp_channel_get_color(channel:Channel):Color;

	/**
	 * Retrieve the currently active pattern.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 *    name : String -> The name of the active pattern
	 */
	public function gimp_context_get_pattern():String;

	/**
	 * Merge the shadow buffer with the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    undo : Int -> Push merge to undo stack? (TRUE or FALSE)
	 * @return
	 */
	public function gimp_drawable_merge_shadow(drawable:Drawable, undo:Int):Void;

	/**
	 * Returns the textual identifier of the unit.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1999
	 * @param
	 *    unit_id : Int -> The unit's integer ID
	 * @return
	 *    identifier : String -> The unit's textual identifier
	 */
	public function gimp_unit_get_identifier(unit_id:Int):String;

	/**
	 * Add a beveled border to an image
	 *   by Andrew Donkin <ard@@cs.waikato.ac.nz>
	 *   1997/11/06
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Thickness
	 *    toggle : Int -> Work on copy
	 *    toggle : Int -> Keep bump layer
	 * @return
	 */
// 	public function script_fu_add_bevel(image:Image, drawable:Drawable, value:Float, toggle:Int, toggle:Int):Void;

	/**
	 * Produce a lense flare effect using gradients
	 *   by Eiichi Takamori
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    gflare_name : String -> The name of GFlare
	 *    xcenter : Int -> X coordinate of center of GFlare
	 *    ycenter : Int -> Y coordinate of center of GFlare
	 *    radius : Float -> Radius of GFlare (pixel)
	 *    rotation : Float -> Rotation of GFlare (degree)
	 *    hue : Float -> Hue rotation of GFlare (degree)
	 *    vangle : Float -> Vector angle for second flares (degree)
	 *    vlength : Float -> Vector length for second flares (percentage to Radius)
	 *    use_asupsample : Int -> Whether it uses or not adaptive supersampling while rendering (boolean)
	 *    asupsample_max_depth : Int -> Max depth for adaptive supersampling
	 *    asupsample_threshold : Float -> Threshold for adaptive supersampling
	 * @return
	 */
// 	public function plug_in_gflare(image:Image, drawable:Drawable, gflare_name:String, xcenter:Int, ycenter:Int, radius:Float, rotation:Float, hue:Float, vangle:Float, vlength:Float, use_asupsample:Int, asupsample_max_depth:Int, asupsample_threshold:Float):Void;

	/**
	 * Create an image using multiple gray images as color channels
	 *   by Peter Kirchgessner
	 *   1997
	 * @param
	 *    image1 : Image -> First input image
	 *    drawable : Drawable -> Input drawable (not used)
	 *    image2 : Image -> Second input image
	 *    image3 : Image -> Third input image
	 *    image4 : Image -> Fourth input image
	 *    compose_type : String -> What to compose: \RGB\, \RGBA\, \HSV\, \HSL\, \CMY\, \CMYK\, \LAB\, \YCbCr_ITU_R470\, \YCbCr_ITU_R709\, \YCbCr_ITU_R470_256\, \YCbCr_ITU_R709_256\
	 * @return
	 *    new-image : Image -> Output image
	 */
// 	public function plug_in_compose(image1:Image, drawable:Drawable, image2:Image, image3:Image, image4:Image, compose_type:String):Image;

	/**
	 * Set ink speed sensitivity.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 *    speed : Float -> ink speed sensitivity (0 <= speed <= 1)
	 * @return
	 */
	public function gimp_context_set_ink_speed_sensitivity(speed:Float):Void;

	/**
	 * Fill a layer with rays emanating outward from its centre using the foreground colour
	 *   by Shuji Narazaki <narazaki@@gimp.org>
	 *   1997,1998
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Number of lines
	 *    value : Float -> Sharpness (degrees)
	 *    value : Float -> Offset radius
	 *    value : Float -> Randomness
	 * @return
	 */
// 	public function script_fu_line_nova(image:Image, drawable:Drawable, value:Float, value:Float, value:Float, value:Float):Void;

	/**
	 * Create an animation by mapping the current image onto a spinning sphere
	 *   by Chris Gutteridge
	 *   16th April 1998
	 * @param
	 *    image : Image -> The Image
	 *    drawable : Drawable -> The Layer
	 *    value : Float -> Frames
	 *    toggle : Int -> Turn from left to right
	 *    toggle : Int -> Transparent background
	 *    value : Float -> Index to n colours (0 = remain RGB)
	 *    toggle : Int -> Work on copy
	 * @return
	 */
// 	public function script_fu_spinning_globe(image:Image, drawable:Drawable, value:Float, toggle:Int, toggle:Int, value:Float, toggle:Int):Void;

	/**
	 * View and edit metadata (EXIF, IPTC, XMP)
	 *   by Raphaël Quinet <raphael@@gimp.org>
	 *   2004-2005
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable (unused)
	 * @return
	 */
// 	public function plug_in_metadata_editor(image:Image, drawable:Drawable):Void;

	/**
	 * Get a thumbnail of an image.
	 *   by Andy Thomas
	 *   1999
	 * @param
	 *    image : Image -> The image
	 *    width : Int -> The requested thumbnail width (1 <= width <= 1024)
	 *    height : Int -> The requested thumbnail height (1 <= height <= 1024)
	 * @return
	 *    actual-width : Int -> The previews width
	 *    actual-height : Int -> The previews height
	 *    bpp : Int -> The previews bpp
	 *    thumbnail-data-count : Int -> The number of bytes in thumbnail data (thumbnail-data-count >= 0)
	 *    thumbnail-data : Array<Int> -> The thumbnail data
	 */
	public function gimp_image_thumbnail(image:Image, width:Int, height:Int):Dynamic;

	/**
	 * Create an image filled with previews of fonts matching a fontname filter
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    string : String -> _Text
	 *    toggle : Int -> Use font _name as text
	 *    toggle : Int -> _Labels
	 *    string : String -> _Filter (regexp)
	 *    value : Float -> Font _size (pixels)
	 *    value : Float -> _Border (pixels)
	 *    option : Int -> _Colour scheme
	 * @return
	 */
// 	public function script_fu_font_map(string:String, toggle:Int, toggle:Int, string:String, value:Float, value:Float, option:Int):Void;

	/**
	 * Get the show mask setting of the specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 * @return
	 *    show-mask : Int -> The layer's show mask setting (TRUE or FALSE)
	 */
	public function gimp_layer_get_show_mask(layer:Layer):Int;

	/**
	 * Loads a thumbnail from a JPEG image
	 *   by Mukund Sivaraman <muks@@mukund.org>, Sven Neumann <sven@@gimp.org>
	 *   November 15, 2004
	 * @param
	 *    filename : String -> The name of the file to load
	 *    thumb_size : Int -> Preferred thumbnail size
	 * @return
	 *    image : Image -> Thumbnail image
	 *    image-width : Int -> Width of full-sized image
	 *    image-height : Int -> Height of full-sized image
	 */
	public function file_jpeg_load_thumb(filename:String, thumb_size:Int):python.Tuple.Tuple3<Image,Int,Int>;

	/**
	 * Tests if palette can be edited
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The palette name
	 * @return
	 *    editable : Int -> TRUE if the palette can be edited (TRUE or FALSE)
	 */
	public function gimp_palette_is_editable(name:String):Int;

	/**
	 * Create a new layer filled with a weave effect to be used as an overlay or bump map
	 *   by Federico Mena Quintero
	 *   June 1997
	 * @param
	 *    image : Image -> Image to Weave
	 *    drawable : Drawable -> Drawable to Weave
	 *    value : Float -> Ribbon width
	 *    value : Float -> Ribbon spacing
	 *    value : Float -> Shadow darkness
	 *    value : Float -> Shadow depth
	 *    value : Float -> Thread length
	 *    value : Float -> Thread density
	 *    value : Float -> Thread intensity
	 * @return
	 */
// 	public function script_fu_weave(image:Image, drawable:Drawable, value:Float, value:Float, value:Float, value:Float, value:Float, value:Float, value:Float):Void;

	/**
	 * Refresh current gradients. This function always succeeds.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2002
	 * @param
	 * @return
	 */
	public function gimp_gradients_refresh():Void;

	/**
	 * Deprecated: Use 'gimp-brush-set-spacing' instead.
	 *   by 
	 *   
	 * @param
	 *    spacing : Int -> The brush spacing (0 <= spacing <= 1000)
	 * @return
	 */
	public function gimp_brushes_set_spacing(spacing:Int):Void;

	/**
	 * Deprecated: Use 'gimp-levels-stretch' instead.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 */
	public function gimp_levels_auto(drawable:Drawable):Void;

	/**
	 * Bookmark to the user manual
	 *   by Roman Joost <romanofski@@gimp.org>
	 *   2006
	 * @param
	 * @return
	 */
	public function gimp_help_using_simpleobjects():Void;

	/**
	 * Add the specified channel to the image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    channel : Channel -> The channel
	 *    parent : Channel -> The parent channel
	 *    position : Int -> The channel position
	 * @return
	 */
	public function gimp_image_insert_channel(image:Image, channel:Channel, parent:Channel, position:Int):Void;

	/**
	 * Generate a huge variety of abstract patterns
	 *   by Jörn Loviscach, Jens Ch. Restemeier
	 *   January 2001, 1.12
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_qbist(image:Image, drawable:Drawable):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-flip' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    x0 : Float -> horz. coord. of one end of axis
	 *    y0 : Float -> vert. coord. of one end of axis
	 *    x1 : Float -> horz. coord. of other end of axis
	 *    y1 : Float -> vert. coord. of other end of axis
	 *    transform_direction : Int -> Direction of transformation @{ TRANSFORM-FORWARD (0), TRANSFORM-BACKWARD (1) @}
	 *    interpolation : Int -> Type of interpolation @{ INTERPOLATION-NONE (0), INTERPOLATION-LINEAR (1), INTERPOLATION-CUBIC (2), INTERPOLATION-LANCZOS (3) @}
	 *    supersample : Int -> This parameter is ignored, supersampling is performed based on the interpolation type (TRUE or FALSE)
	 *    recursion_level : Int -> Maximum recursion level used for supersampling (3 is a nice value) (recursion-level >= 1)
	 *    clip_result : Int -> Whether to clip results (TRUE or FALSE)
	 * @return
	 *    drawable : Drawable -> The flipped drawable
	 */
	public function gimp_drawable_transform_flip(drawable:Drawable, x0:Float, y0:Float, x1:Float, y1:Float, transform_direction:Int, interpolation:Int, supersample:Int, recursion_level:Int, clip_result:Int):Drawable;

	/**
	 * Bookmark to the user manual
	 *   by Roman Joost <romanofski@@gimp.org>
	 *   2006
	 * @param
	 * @return
	 */
	public function gimp_help_using_selections():Void;

	/**
	 * Make image sharper (less powerful than Unsharp Mask)
	 *   by Michael Sweet <mike@@easysw.com>
	 *   1.4.2 - 3 June 1998
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    percent : Int -> Percent sharpening (default = 10)
	 * @return
	 */
// 	public function plug_in_sharpen(image:Image, drawable:Drawable, percent:Int):Void;

	/**
	 * Get the feather radius setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 * @return
	 *    feather-radius-x : Float -> The horizontal feather radius (0 <= feather-radius-x <= 1000)
	 *    feather-radius-y : Float -> The vertical feather radius (0 <= feather-radius-y <= 1000)
	 */
	public function gimp_context_get_feather_radius():python.Tuple.Tuple2<Float,Float>;

	/**
	 * Convolve (Blur, Sharpen) using the current brush.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    pressure : Float -> The pressure (0 <= pressure <= 100)
	 *    convolve_type : Int -> Convolve type @{ BLUR-CONVOLVE (0), SHARPEN-CONVOLVE (1) @}
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_convolve(drawable:Drawable, pressure:Float, convolve_type:Int, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * Decode an EXIF block
	 *   by Raphaël Quinet <raphael@@gimp.org>
	 *   2005
	 * @param
	 *    image : Image -> Input image
	 *    exif_size : Int -> size of the EXIF block
	 *    exif : Array<Int> -> EXIF block
	 * @return
	 */
// 	public function plug_in_metadata_decode_exif(image:Image, exif_size:Int, exif:Array<Int>):Void;

	/**
	 * Control how font outlines are hinted in a text layer.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    style : Int -> The new hint style @{ TEXT-HINT-STYLE-NONE (0), TEXT-HINT-STYLE-SLIGHT (1), TEXT-HINT-STYLE-MEDIUM (2), TEXT-HINT-STYLE-FULL (3) @}
	 * @return
	 */
	public function gimp_text_layer_set_hint_style(layer:Layer, style:Int):Void;

	/**
	 * Set ink blob size in pixels.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 *    size : Float -> ink blob size in pixels (0 <= size <= 200)
	 * @return
	 */
	public function gimp_context_set_ink_size(size:Float):Void;

	/**
	 * Get position of a guide on an image.
	 *   by Adam D. Moss
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    guide : Int -> The guide
	 * @return
	 *    position : Int -> The guide's position relative to top or left of image
	 */
	public function gimp_image_get_guide_position(image:Image, guide:Int):Int;

	/**
	 * Loads GIMP brushes
	 *   by Tim Newsome, Jens Lautenbacher, Sven Neumann
	 *   1997-2005
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_gbr_load(filename:String, raw_filename:String):Image;

	/**
	 * Returns the number of units.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1999
	 * @param
	 * @return
	 *    num-units : Int -> The number of units
	 */
	public function gimp_unit_get_number_of_units():Int;

	/**
	 * Import XMP from a file into the current image
	 *   by Raphaël Quinet <raphael@@gimp.org>
	 *   2005
	 * @param
	 *    image : Image -> Input image
	 *    filename : String -> The name of the XMP file to import
	 * @return
	 */
// 	public function plug_in_metadata_import(image:Image, filename:String):Void;

	/**
	 * GIMP Table Magic
	 *   by Daniel Dunbar
	 *   1998
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 * @return
	 */
	public function file_gtm_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Enable the image's undo stack.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    enabled : Int -> TRUE if the image undo has been enabled (TRUE or FALSE)
	 */
	public function gimp_image_undo_enable(image:Image):Int;

	/**
	 * Deletes a guide from an image.
	 *   by Adam D. Moss
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    guide : Int -> The ID of the guide to be removed
	 * @return
	 */
	public function gimp_image_delete_guide(image:Image, guide:Int):Void;

	/**
	 * Add a parasite to an item.
	 *   by Jay Cox
	 *   1998
	 * @param
	 *    item : Item -> The item
	 *    parasite : Parasite -> The parasite to attach to the item
	 * @return
	 */
	public function gimp_item_attach_parasite(item:Item, parasite:Parasite):Void;

	/**
	 * Returns the number of digits of the unit.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1999
	 * @param
	 *    unit_id : Int -> The unit's integer ID
	 * @return
	 *    digits : Int -> The unit's number of digits
	 */
	public function gimp_unit_get_digits(unit_id:Int):Int;

	/**
	 * Get the default image comment as specified in the Preferences.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 * @return
	 *    comment : String -> Default image comment
	 */
	public function gimp_get_default_comment():String;

	/**
	 * Deprecated: Use 'gimp-edit-stroke-vectors' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image which contains the path to stroke
	 * @return
	 */
	public function gimp_path_stroke_current(image:Image):Void;

	/**
	 * Set the justification of the text in a text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    justify : Int -> The justification for your text. @{ TEXT-JUSTIFY-LEFT (0), TEXT-JUSTIFY-RIGHT (1), TEXT-JUSTIFY-CENTER (2), TEXT-JUSTIFY-FILL (3) @}
	 * @return
	 */
	public function gimp_text_layer_set_justification(layer:Layer, justify:Int):Void;

	/**
	 * Splits each segment in the segment range at midpoint
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    start_segment : Int -> The index of the first segment to operate on (start-segment >= 0)
	 *    end_segment : Int -> The index of the last segment to operate on. If negative, the selection will extend to the end of the string.
	 * @return
	 */
	public function gimp_gradient_segment_range_split_midpoint(name:String, start_segment:Int, end_segment:Int):Void;

	/**
	 * Simulate an antique engraving
	 *   by Spencer Kimball & Peter Mattis, Eiichi Takamori, Torsten Martinsen
	 *   1995,1996,1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    height : Int -> Resolution in pixels
	 *    limit : Int -> Limit line width @{ TRUE, FALSE @}
	 * @return
	 */
// 	public function plug_in_engrave(image:Image, drawable:Drawable, height:Int, limit:Int):Void;

	/**
	 * Loads files in the SVG file format
	 *   by Dom Lachowicz, Sven Neumann
	 *   2.5.0
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 *    resolution : Float -> Resolution to use for rendering the SVG (defaults to 90 dpi)
	 *    width : Int -> Width (in pixels) to load the SVG in. (0 for original width, a negative width to specify a maximum width)
	 *    height : Int -> Height (in pixels) to load the SVG in. (0 for original height, a negative width to specify a maximum height)
	 *    paths : Int -> Whether to not import paths (0), import paths individually (1) or merge all imported paths (2)
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_svg_load(filename:String, raw_filename:String, resolution:Float, width:Int, height:Int, paths:Int):Image;

	/**
	 * Get the spacing between lines of text.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer.
	 * @return
	 *    line-spacing : Float -> The line-spacing value.
	 */
	public function gimp_text_layer_get_line_spacing(layer:Layer):Float;

	/**
	 * Create a bullet graphic with an eerie glow for web pages
	 *   by Adrian Likins
	 *   1997
	 * @param
	 *    value : Float -> Radius
	 *    color : Color -> Glow colour
	 *    color : Color -> Background colour
	 *    toggle : Int -> Flatten image
	 * @return
	 */
// 	public function script_fu_alien_glow_bullet(value:Float, color:Color, color:Color, toggle:Int):Void;

	/**
	 * Create a logo with text in the style of 'cow spots'
	 *   by Brian McFee <keebler@@wco.com>
	 *   April 1998
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    value : Float -> Spots density X
	 *    value : Float -> Spots density Y
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_bovinated_logo(string:String, value:Float, font:String, value:Float, value:Float, color:Color):Void;

	/**
	 * Modify image to reduce size when saved as GIF animation
	 *   by Adam D. Moss <adam@@gimp.org>
	 *   1997-2003
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable (unused)
	 * @return
	 *    result : Image -> Resulting image
	 */
// 	public function plug_in_animationoptimize(image:Image, drawable:Drawable):Image;

	/**
	 * Change the coloring type of a segments range
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    start_segment : Int -> The index of the first segment to operate on (start-segment >= 0)
	 *    end_segment : Int -> The index of the last segment to operate on. If negative, the selection will extend to the end of the string.
	 *    coloring_type : Int -> The coloring type @{ GRADIENT-SEGMENT-RGB (0), GRADIENT-SEGMENT-HSV-CCW (1), GRADIENT-SEGMENT-HSV-CW (2) @}
	 * @return
	 */
	public function gimp_gradient_segment_range_set_coloring_type(name:String, start_segment:Int, end_segment:Int, coloring_type:Int):Void;

	/**
	 * Find the value of the selection at the specified coordinates.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    x : Int -> x coordinate of value
	 *    y : Int -> y coordinate of value
	 * @return
	 *    value : Int -> Value of the selection (0 <= value <= 255)
	 */
	public function gimp_selection_value(image:Image, x:Int, y:Int):Int;

	/**
	 * Set the font of a text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    font : String -> The new font to use
	 * @return
	 */
	public function gimp_text_layer_set_font(layer:Layer, font:String):Void;

	/**
	 * Set the hardness of a generated brush.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 *    hardness_in : Float -> The desired brush hardness
	 * @return
	 *    hardness-out : Float -> The brush hardness actually assigned
	 */
	public function gimp_brush_set_hardness(name:String, hardness_in:Float):Float;

	/**
	 * Create abstract Coupled-Map Lattice patterns
	 *   by Shuji Narazaki (narazaki@@InetQ.or.jp); http://www.inetq.or.jp/~narazaki/TheGIMP/
	 *   1997
	 * @param
	 *    ru__mode : Int -> The run mode @{ RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) @}
	 *    image : Image -> Input image (not used)
	 *    drawable : Drawable -> Input drawable
	 *    parameter_filename : String -> The name of parameter file. CML_explorer makes an image with its settings.
	 * @return
	 */
// 	public function plug_in_cml_explorer(ru__mode:Int, image:Image, drawable:Drawable, parameter_filename:String):Void;

	/**
	 * Transform the specified item in 2d.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    item : Item -> The affected item
	 *    coeff_0_0 : Float -> coefficient (0,0) of the transformation matrix
	 *    coeff_0_1 : Float -> coefficient (0,1) of the transformation matrix
	 *    coeff_0_2 : Float -> coefficient (0,2) of the transformation matrix
	 *    coeff_1_0 : Float -> coefficient (1,0) of the transformation matrix
	 *    coeff_1_1 : Float -> coefficient (1,1) of the transformation matrix
	 *    coeff_1_2 : Float -> coefficient (1,2) of the transformation matrix
	 *    coeff_2_0 : Float -> coefficient (2,0) of the transformation matrix
	 *    coeff_2_1 : Float -> coefficient (2,1) of the transformation matrix
	 *    coeff_2_2 : Float -> coefficient (2,2) of the transformation matrix
	 * @return
	 *    item : Item -> The transformed item
	 */
	public function gimp_item_transform_matrix(item:Item, coeff_0_0:Float, coeff_0_1:Float, coeff_0_2:Float, coeff_1_0:Float, coeff_1_1:Float, coeff_1_2:Float, coeff_2_0:Float, coeff_2_1:Float, coeff_2_2:Float):Item;

	/**
	 * Loads files in SGI image file format
	 *   by Michael Sweet <mike@@easysw.com>
	 *   1.1.1 - 17 May 1998
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_sgi_load(filename:String, raw_filename:String):Image;

	/**
	 * Set the rotation angle of a generated brush.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 *    angle_in : Float -> The desired brush rotation angle
	 * @return
	 *    angle-out : Float -> The brush rotation angle actually assigned
	 */
	public function gimp_brush_set_angle(name:String, angle_in:Float):Float;

	/**
	 * Returns whether the drawable is an RGB type.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 *    is-rgb : Int -> TRUE if the drawable is an RGB type (TRUE or FALSE)
	 */
	public function gimp_drawable_is_rgb(drawable:Drawable):Int;

	/**
	 * Remove the specified layer mask from the layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer from which to remove mask
	 *    mode : Int -> Removal mode @{ MASK-APPLY (0), MASK-DISCARD (1) @}
	 * @return
	 */
	public function gimp_layer_remove_mask(layer:Layer, mode:Int):Void;

	/**
	 * Finish a group undo.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    image : Image -> The ID of the image in which to close an undo group
	 * @return
	 */
	public function gimp_image_undo_group_end(image:Image):Void;

	/**
	 * Set the combination mode of the specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 *    mode : Int -> The new layer combination mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 * @return
	 */
	public function gimp_layer_set_mode(layer:Layer, mode:Int):Void;

	/**
	 * Sets the style unit of an image's grid.
	 *   by Sylvain Foret
	 *   2005
	 * @param
	 *    image : Image -> The image
	 *    style : Int -> The image's grid style @{ GRID-DOTS (0), GRID-INTERSECTIONS (1), GRID-ON-OFF-DASH (2), GRID-DOUBLE-DASH (3), GRID-SOLID (4) @}
	 * @return
	 */
	public function gimp_image_grid_set_style(image:Image, style:Int):Void;

	/**
	 * Returns the specified image's selection.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    selection : Selection -> The selection channel
	 */
	public function gimp_image_get_selection(image:Image):Selection;

	/**
	 * Loads file saved in the .xcf file format
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    dummy_param : Int -> Dummy parameter
	 *    filename : String -> The name of the file to load, in the on-disk character set and encoding
	 *    raw_filename : String -> The basename of the file, in UTF-8
	 * @return
	 *    image : Image -> Output image
	 */
	public function gimp_xcf_load(dummy_param:Int, filename:String, raw_filename:String):Image;

	/**
	 * Set the specified brush as the active brush.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The name of the brush
	 * @return
	 */
	public function gimp_context_set_brush(name:String):Void;

	/**
	 * Resize the image to fit all layers.
	 *   by Simon Budig
	 *   2004
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_image_resize_to_layers(image:Image):Void;

	/**
	 * Retrieve the values of an XMP property
	 *   by Raphaël Quinet <raphael@@gimp.org>
	 *   2005
	 * @param
	 *    image : Image -> Input image
	 *    schema : String -> XMP schema prefix or URI
	 *    property : String -> XMP property name
	 * @return
	 *    type : Int -> XMP property type
	 *    num-vals : Int -> number of values
	 *    vals : Array<String> -> XMP property values
	 */
// 	public function plug_in_metadata_get(image:Image, schema:String, property:String):python.Tuple.Tuple3<Int,Int,Array<String>>;

	/**
	 * Retrieve the currently active paint method.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 * @return
	 *    name : String -> The name of the active paint method
	 */
	public function gimp_context_get_paint_method():String;

	/**
	 * Provides a text console mode for script-fu development
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 * @return
	 */
// 	public function plug_in_script_fu_text_console():Void;

	/**
	 * Create a logo with text raised above or carved in to the specified background image
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    filename : String -> Background Image
	 *    toggle : Int -> Carve raised text
	 *    value : Float -> Padding around text
	 * @return
	 */
// 	public function script_fu_carved_logo(string:String, value:Float, font:String, filename:String, toggle:Int, value:Float):Void;

	/**
	 * Set the lock alpha channel setting of the specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 *    lock_alpha : Int -> The new layer's lock alpha channel setting (TRUE or FALSE)
	 * @return
	 */
	public function gimp_layer_set_lock_alpha(layer:Layer, lock_alpha:Int):Void;

	/**
	 * Save each layer to a file.
	 *   by Saul Goode
	 *   11/16/2008
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    string : String -> Name Template (~ replaced by layer position)
	 *    toggle : Int -> Rename (ex: 'frame__0001')
	 * @return
	 */
	public function sg_save_all_layers(image:Image, drawable:Drawable, string:String, toggle:Int):Void;

	/**
	 * saves files compressed with bzip2
	 *   by Daniel Risacher
	 *   1995-1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name entered
	 * @return
	 */
	public function file_bz2_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Get the radius of a generated brush.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 * @return
	 *    radius : Float -> The radius of the brush in pixels
	 */
	public function gimp_brush_get_radius(name:String):Float;

	/**
	 * Perform a possibly non-affine transformation on the specified item.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    item : Item -> The affected item
	 *    x0 : Float -> The new x coordinate of upper-left corner of original bounding box
	 *    y0 : Float -> The new y coordinate of upper-left corner of original bounding box
	 *    x1 : Float -> The new x coordinate of upper-right corner of original bounding box
	 *    y1 : Float -> The new y coordinate of upper-right corner of original bounding box
	 *    x2 : Float -> The new x coordinate of lower-left corner of original bounding box
	 *    y2 : Float -> The new y coordinate of lower-left corner of original bounding box
	 *    x3 : Float -> The new x coordinate of lower-right corner of original bounding box
	 *    y3 : Float -> The new y coordinate of lower-right corner of original bounding box
	 * @return
	 *    item : Item -> The newly mapped item
	 */
	public function gimp_item_transform_perspective(item:Item, x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Item;

	/**
	 * Add a perspective shadow to the selected region (or alpha)
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2000/11/08
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Angle
	 *    value : Float -> Relative distance of horizon
	 *    value : Float -> Relative length of shadow
	 *    value : Float -> Blur radius
	 *    color : Color -> Colour
	 *    value : Float -> Opacity
	 *    enum : Int -> Interpolation
	 *    toggle : Int -> Allow resizing
	 * @return
	 */
// 	public function script_fu_perspective_shadow(image:Image, drawable:Drawable, value:Float, value:Float, value:Float, value:Float, color:Color, value:Float, enum:Int, toggle:Int):Void;

	/**
	 * Returns the imported URI for the specified image.
	 *   by Eric Grivel <gimp@@lumenssolutions.com>
	 *   2011
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    uri : String -> The imported URI
	 */
	public function gimp_image_get_imported_uri(image:Image):String;

	/**
	 * Write all the colours in a palette to a text file, one hexadecimal value per line (no names)
	 *   by Barak Itkin <lightningismyname@@gmail.com>
	 *   May 15th, 2009
	 * @param
	 *    dirname : String -> Folder for the output file
	 *    string : String -> The name of the file to create (if a file with this name already exist, it will be replaced)
	 * @return
	 */
	public function gimp_palette_export_text(dirname:String, string:String):Void;

	/**
	 * Find a vectors with a given tattoo in an image.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    image : Image -> The image
	 *    tattoo : Int -> The tattoo of the vectors to find
	 * @return
	 *    vectors : Vectors -> The vectors with the specified tattoo
	 */
	public function gimp_image_get_vectors_by_tattoo(image:Image, tattoo:Int):Vectors;

	/**
	 * Return the height of the image
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    height : Int -> The image's height
	 */
	public function gimp_image_height(image:Image):Int;

	/**
	 * Thaw the image's undo stack.
	 *   by Adam D. Moss
	 *   1999
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    thawed : Int -> TRUE if the image undo has been thawed (TRUE or FALSE)
	 */
	public function gimp_image_undo_thaw(image:Image):Int;

	/**
	 * Get the markup from a text layer as string.
	 *   by Barak Itkin <lightningismyname@@gmail.com>
	 *   2010
	 * @param
	 *    layer : Layer -> The text layer
	 * @return
	 *    markup : String -> The markup which represents the style of the specified text layer.
	 */
	public function gimp_text_layer_get_markup(layer:Layer):String;

	/**
	 * Returns TRUE if the image is valid.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2007
	 * @param
	 *    image : Image -> The image to check
	 * @return
	 *    valid : Int -> Whether the image ID is valid (TRUE or FALSE)
	 */
	public function gimp_image_is_valid(image:Image):Int;

	/**
	 * Convert specified image to grayscale (256 intensity levels)
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_image_convert_grayscale(image:Image):Void;

	/**
	 * Gets the specified palette entry from the specified palette.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The palette name
	 *    entry_num : Int -> The entry to retrieve
	 * @return
	 *    color : Color -> The color requested
	 */
	public function gimp_palette_entry_get_color(name:String, entry_num:Int):Color;

	/**
	 * Simulate movement using directional blur
	 *   by Torsten Martinsen, Federico Mena Quintero, Daniel Skarda, Joerg Gittinger
	 *   May 2007, 1.3
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    type : Int -> Type of motion blur @{ LINEAR (0), RADIAL (1), ZOOM (2) @}
	 *    length : Int -> Length
	 *    angle : Int -> Angle
	 *    center_x : Float -> Center X (optional)
	 *    center_y : Float -> Center Y (optional)
	 * @return
	 */
// 	public function plug_in_mblur_inward(image:Image, drawable:Drawable, type:Int, length:Int, angle:Int, center_x:Float, center_y:Float):Void;

	/**
	 * Bookmark to the user manual
	 *   by Roman Joost <romanofski@@gimp.org>
	 *   2006
	 * @param
	 * @return
	 */
	public function gimp_help_concepts_usage():Void;

	/**
	 * Add 'cow spots' to the selected region (or alpha)
	 *   by Brian McFee <keebler@@wco.com>
	 *   April 1998
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Spots density X
	 *    value : Float -> Spots density Y
	 *    color : Color -> Background Colour
	 * @return
	 */
// 	public function script_fu_bovinated_logo_alpha(image:Image, drawable:Drawable, value:Float, value:Float, color:Color):Void;

	/**
	 * Corrects lens distortion
	 *   by David Hodson, Aurimas Juška
	 *   Version 1.0.10
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    offset_x : Float -> Effect centre offset in X
	 *    offset_y : Float -> Effect centre offset in Y
	 *    main_adjust : Float -> Amount of second-order distortion
	 *    edge_adjust : Float -> Amount of fourth-order distortion
	 *    rescale : Float -> Rescale overall image size
	 *    brighten : Float -> Adjust brightness in corners
	 * @return
	 */
// 	public function plug_in_lens_distortion(image:Image, drawable:Drawable, offset_x:Float, offset_y:Float, main_adjust:Float, edge_adjust:Float, rescale:Float, brighten:Float):Void;

	/**
	 * load file of the FITS file format
	 *   by Peter Kirchgessner
	 *   1997
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_fits_load(filename:String, raw_filename:String):Image;

	/**
	 * Merge the layer passed and the first visible layer below.
	 *   by Larry Ewing
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    merge_layer : Layer -> The layer to merge down from
	 *    merge_type : Int -> The type of merge @{ EXPAND-AS-NECESSARY (0), CLIP-TO-IMAGE (1), CLIP-TO-BOTTOM-LAYER (2) @}
	 * @return
	 *    layer : Layer -> The resulting layer
	 */
	public function gimp_image_merge_down(image:Image, merge_layer:Layer, merge_type:Int):Layer;

	/**
	 * Add realistic looking coffee stains to the image
	 *   by Chris Gutteridge
	 *   25th April 1998
	 * @param
	 *    image : Image -> The image
	 *    drawable : Drawable -> The layer
	 *    value : Float -> Stains
	 *    toggle : Int -> Darken only
	 * @return
	 */
// 	public function script_fu_coffee_stain(image:Image, drawable:Drawable, value:Float, toggle:Int):Void;

	/**
	 * Adds a stroke of a given type to the vectors object.
	 *   by Simon Budig
	 *   2006
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    type : Int -> type of the stroke (always GIMP_VECTORS_STROKE_TYPE_BEZIER for now). @{ VECTORS-STROKE-TYPE-BEZIER (0) @}
	 *    num_points : Int -> The number of elements in the array, i.e. the number of controlpoints in the stroke * 2 (x- and y-coordinate). (num-points >= 0)
	 *    controlpoints : Array<Float> -> List of the x- and y-coordinates of the control points.
	 *    closed : Int -> Whether the stroke is to be closed or not. (TRUE or FALSE)
	 * @return
	 *    stroke-id : Int -> The stroke ID of the newly created stroke.
	 */
	public function gimp_vectors_stroke_new_from_points(vectors:Vectors, type:Int, num_points:Int, controlpoints:Array<Float>, closed:Int):Int;

	/**
	 * Registers a file load handler procedure.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    procedure_name : String -> The name of the procedure to be used for loading
	 *    extensions : String -> comma separated list of extensions this handler can load (i.e. \jpg,jpeg\)
	 *    prefixes : String -> comma separated list of prefixes this handler can load (i.e. \http:,ftp:\)
	 * @return
	 */
	public function gimp_register_load_handler(procedure_name:String, extensions:String, prefixes:String):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-perspective' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    x0 : Float -> The new x coordinate of upper-left corner of original bounding box
	 *    y0 : Float -> The new y coordinate of upper-left corner of original bounding box
	 *    x1 : Float -> The new x coordinate of upper-right corner of original bounding box
	 *    y1 : Float -> The new y coordinate of upper-right corner of original bounding box
	 *    x2 : Float -> The new x coordinate of lower-left corner of original bounding box
	 *    y2 : Float -> The new y coordinate of lower-left corner of original bounding box
	 *    x3 : Float -> The new x coordinate of lower-right corner of original bounding box
	 *    y3 : Float -> The new y coordinate of lower-right corner of original bounding box
	 *    transform_direction : Int -> Direction of transformation @{ TRANSFORM-FORWARD (0), TRANSFORM-BACKWARD (1) @}
	 *    interpolation : Int -> Type of interpolation @{ INTERPOLATION-NONE (0), INTERPOLATION-LINEAR (1), INTERPOLATION-CUBIC (2), INTERPOLATION-LANCZOS (3) @}
	 *    supersample : Int -> This parameter is ignored, supersampling is performed based on the interpolation type (TRUE or FALSE)
	 *    recursion_level : Int -> Maximum recursion level used for supersampling (3 is a nice value) (recursion-level >= 1)
	 *    clip_result : Int -> How to clip results @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 * @return
	 *    drawable : Drawable -> The newly mapped drawable
	 */
	public function gimp_drawable_transform_perspective(drawable:Drawable, x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, transform_direction:Int, interpolation:Int, supersample:Int, recursion_level:Int, clip_result:Int):Drawable;

	/**
	 * Get the base direction used for rendering the text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer.
	 * @return
	 *    direction : Int -> The based direction used for the text layer. @{ TEXT-DIRECTION-LTR (0), TEXT-DIRECTION-RTL (1) @}
	 */
	public function gimp_text_layer_get_base_direction(layer:Layer):Int;

	/**
	 * Add a border around an image
	 *   by Andy Thomas <alt@@picnic.demon.co.uk>
	 *   6/10/97
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    value : Float -> Border X size
	 *    value : Float -> Border Y size
	 *    color : Color -> Border colour
	 *    value : Float -> Delta value on colour
	 * @return
	 */
// 	public function script_fu_addborder(image:Image, drawable:Drawable, value:Float, value:Float, color:Color, value:Float):Void;

	/**
	 * Map the image to an object (plane, sphere, box or cylinder)
	 *   by Tom Bech & Federico Mena Quintero
	 *   Version 1.2.0, July 16 1998
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    maptype : Int -> Type of mapping (0=plane,1=sphere,2=box,3=cylinder)
	 *    viewpoint_x : Float -> Position of viewpoint (x,y,z)
	 *    viewpoint_y : Float -> Position of viewpoint (x,y,z)
	 *    viewpoint_z : Float -> Position of viewpoint (x,y,z)
	 *    position_x : Float -> Object position (x,y,z)
	 *    position_y : Float -> Object position (x,y,z)
	 *    position_z : Float -> Object position (x,y,z)
	 *    firstaxis_x : Float -> First axis of object [x,y,z]
	 *    firstaxis_y : Float -> First axis of object [x,y,z]
	 *    firstaxis_z : Float -> First axis of object [x,y,z]
	 *    secondaxis_x : Float -> Second axis of object [x,y,z]
	 *    secondaxis_y : Float -> Second axis of object [x,y,z]
	 *    secondaxis_z : Float -> Second axis of object [x,y,z]
	 *    rotationangle_x : Float -> Rotation about X axis in degrees
	 *    rotationangle_y : Float -> Rotation about Y axis in degrees
	 *    rotationangle_z : Float -> Rotation about Z axis in degrees
	 *    lighttype : Int -> Type of lightsource (0=point,1=directional,2=none)
	 *    lightcolor : Color -> Lightsource color (r,g,b)
	 *    lightposition_x : Float -> Lightsource position (x,y,z)
	 *    lightposition_y : Float -> Lightsource position (x,y,z)
	 *    lightposition_z : Float -> Lightsource position (x,y,z)
	 *    lightdirection_x : Float -> Lightsource direction [x,y,z]
	 *    lightdirection_y : Float -> Lightsource direction [x,y,z]
	 *    lightdirection_z : Float -> Lightsource direction [x,y,z]
	 *    ambient_intensity : Float -> Material ambient intensity (0..1)
	 *    diffuse_intensity : Float -> Material diffuse intensity (0..1)
	 *    diffuse_reflectivity : Float -> Material diffuse reflectivity (0..1)
	 *    specular_reflectivity : Float -> Material specular reflectivity (0..1)
	 *    highlight : Float -> Material highlight (0..->), note: it's expotential
	 *    antialiasing : Int -> Apply antialiasing (TRUE/FALSE)
	 *    tiled : Int -> Tile source image (TRUE/FALSE)
	 *    newimage : Int -> Create a new image (TRUE/FALSE)
	 *    transparentbackground : Int -> Make background transparent (TRUE/FALSE)
	 *    radius : Float -> Sphere/cylinder radius (only used when maptype=1 or 3)
	 *    x_scale : Float -> Box x size (0..->)
	 *    y_scale : Float -> Box y size (0..->)
	 *    z_scale : Float -> Box z size (0..->)
	 *    cylinder_length : Float -> Cylinder length (0..->)
	 *    box_front_drawable : Drawable -> Box front face (set these to -1 if not used)
	 *    box_back_drawable : Drawable -> Box back face
	 *    box_top_drawable : Drawable -> Box top face
	 *    box_bottom_drawable : Drawable -> Box bottom face
	 *    box_left_drawable : Drawable -> Box left face
	 *    box_right_drawable : Drawable -> Box right face
	 *    cyl_top_drawable : Drawable -> Cylinder top face (set these to -1 if not used)
	 *    cyl_bottom_drawable : Drawable -> Cylinder bottom face
	 * @return
	 */
// 	public function plug_in_map_object(image:Image, drawable:Drawable, maptype:Int, viewpoint_x:Float, viewpoint_y:Float, viewpoint_z:Float, position_x:Float, position_y:Float, position_z:Float, firstaxis_x:Float, firstaxis_y:Float, firstaxis_z:Float, secondaxis_x:Float, secondaxis_y:Float, secondaxis_z:Float, rotationangle_x:Float, rotationangle_y:Float, rotationangle_z:Float, lighttype:Int, lightcolor:Color, lightposition_x:Float, lightposition_y:Float, lightposition_z:Float, lightdirection_x:Float, lightdirection_y:Float, lightdirection_z:Float, ambient_intensity:Float, diffuse_intensity:Float, diffuse_reflectivity:Float, specular_reflectivity:Float, highlight:Float, antialiasing:Int, tiled:Int, newimage:Int, transparentbackground:Int, radius:Float, x_scale:Float, y_scale:Float, z_scale:Float, cylinder_length:Float, box_front_drawable:Drawable, box_back_drawable:Drawable, box_top_drawable:Drawable, box_bottom_drawable:Drawable, box_left_drawable:Drawable, box_right_drawable:Drawable, cyl_top_drawable:Drawable, cyl_bottom_drawable:Drawable):Void;

	/**
	 * Get the shape of a generated brush.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 * @return
	 *    shape : Int -> The brush shape @{ BRUSH-GENERATED-CIRCLE (0), BRUSH-GENERATED-SQUARE (1), BRUSH-GENERATED-DIAMOND (2) @}
	 */
	public function gimp_brush_get_shape(name:String):Int;

	/**
	 * Set ink blob type.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 *    type : Int -> Ink blob type @{ INK-BLOB-TYPE-CIRCLE (0), INK-BLOB-TYPE-SQUARE (1), INK-BLOB-TYPE-DIAMOND (2) @}
	 * @return
	 */
	public function gimp_context_set_ink_blob_type(type:Int):Void;

	/**
	 * 
	 *   by Sven Neumann <sven@@gimp.org>, Michael Natterer <mitch@@gimp.org>, Henrik Brix Andersen <brix@@gimp.org>
	 *   1999-2008
	 * @param
	 *    num_domain_names : Int -> 
	 *    domain_names : Array<String> -> 
	 *    num_domain_uris : Int -> 
	 *    domain_uris : Array<String> -> 
	 * @return
	 */
	public function extension_gimp_help(num_domain_names:Int, domain_names:Array<String>, num_domain_uris:Int, domain_uris:Array<String>):Void;

	/**
	 * Lower the specified item in its level in its item tree
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to lower
	 * @return
	 */
	public function gimp_image_lower_item(image:Image, item:Item):Void;

	/**
	 * Create cosmic recursive fractal flames
	 *   by Scott Draves
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_flame(image:Image, drawable:Drawable):Void;

	/**
	 * Add a canvas texture to the image
	 *   by Karl-Johan Andersson
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    direction : Int -> Light direction (0 - 3)
	 *    depth : Int -> Texture depth (1 - 50)
	 * @return
	 */
// 	public function plug_in_apply_canvas(image:Image, drawable:Drawable, direction:Int, depth:Int):Void;

	/**
	 * Returns the list of layers contained in the specified image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    num-layers : Int -> The number of layers contained in the image (num-layers >= 0)
	 *    layer-ids : Array<Int> -> The list of layers contained in the image
	 */
	public function gimp_image_get_layers(image:Image):python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * Equalize the contents of the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    mask_only : Int -> Equalization option (TRUE or FALSE)
	 * @return
	 */
	public function gimp_equalize(drawable:Drawable, mask_only:Int):Void;

	/**
	 * Add a layer of fog
	 *   by James Henstridge
	 *   1999,2007
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    name : String -> Layer name
	 *    colour : Color -> Fog color
	 *    turbulence : Float -> Turbulence
	 *    opacity : Float -> Opacity
	 * @return
	 */
	public function python_fu_foggify(image:Image, drawable:Drawable, name:String, colour:Color, turbulence:Float, opacity:Float):Void;

	/**
	 * Deprecated: There is no replacement for this procedure.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_drawable_set_image(drawable:Drawable, image:Image):Void;

	/**
	 * Saves files in ZSoft PCX file format
	 *   by Francisco Bustamante & Nick Lamb
	 *   January 1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name entered
	 * @return
	 */
	public function file_pcx_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Get a handle to the native window for an image display.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2005
	 * @param
	 *    display : Display -> The display to get the window handle from
	 * @return
	 *    window : Int -> The native window handle or 0
	 */
	public function gimp_display_get_window_handle(display:Display):Int;

	/**
	 * Get the text justification information of the text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer.
	 * @return
	 *    justify : Int -> The justification used in the text layer. @{ TEXT-JUSTIFY-LEFT (0), TEXT-JUSTIFY-RIGHT (1), TEXT-JUSTIFY-CENTER (2), TEXT-JUSTIFY-FILL (3) @}
	 */
	public function gimp_text_layer_get_justification(layer:Layer):Int;

	/**
	 * Get the default unit (taken from the user's locale).
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 * @return
	 *    unit-id : Int -> Default unit
	 */
	public function gimp_get_default_unit():Int;

	/**
	 * Set the feather radius setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    feather_radius_x : Float -> The horizontal feather radius (0 <= feather-radius-x <= 1000)
	 *    feather_radius_y : Float -> The vertical feather radius (0 <= feather-radius-y <= 1000)
	 * @return
	 */
	public function gimp_context_set_feather_radius(feather_radius_x:Float, feather_radius_y:Float):Void;

	/**
	 * Add a 'Predator' effect to the selected region (or alpha)
	 *   by Adrian Likins <adrian@@gimp.org>
	 *   10/12/97
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Edge amount
	 *    toggle : Int -> Pixelize
	 *    value : Float -> Pixel amount
	 *    toggle : Int -> Keep selection
	 *    toggle : Int -> Separate layer
	 * @return
	 */
// 	public function script_fu_predator(image:Image, drawable:Drawable, value:Float, toggle:Int, value:Float, toggle:Int, toggle:Int):Void;

	/**
	 * Deprecated: Use 'gimp-image-select-rectangle' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    x : Float -> x coordinate of upper-left corner of rectangle
	 *    y : Float -> y coordinate of upper-left corner of rectangle
	 *    width : Float -> The width of the rectangle (width >= 0)
	 *    height : Float -> The height of the rectangle (height >= 0)
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    feather : Int -> Feather option for selections (TRUE or FALSE)
	 *    feather_radius : Float -> Radius for feather operation (feather-radius >= 0)
	 * @return
	 */
	public function gimp_rect_select(image:Image, x:Float, y:Float, width:Float, height:Float, operation:Int, feather:Int, feather_radius:Float):Void;

	/**
	 * Flush all internal changes to the user interface
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 * @return
	 */
	public function gimp_displays_flush():Void;

	/**
	 * Apply a generic 5x5 convolution matrix
	 *   by Lauri Alanko
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    argc_matrix : Int -> The number of elements in the following array. Should be always 25.
	 *    matrix : Array<Float> -> The 5x5 convolution matrix
	 *    alpha_alg : Int -> Enable weighting by alpha channel
	 *    divisor : Float -> Divisor
	 *    offset : Float -> Offset
	 *    argc_channels : Int -> The number of elements in following array. Should be always 5.
	 *    channels : Array<Int> -> Mask of the channels to be filtered
	 *    bmode : Int -> Mode for treating image borders @{ EXTEND (0), WRAP (1), CLEAR (2) @}
	 * @return
	 */
// 	public function plug_in_convmatrix(image:Image, drawable:Drawable, argc_matrix:Int, matrix:Array<Float>, alpha_alg:Int, divisor:Float, offset:Float, argc_channels:Int, channels:Array<Int>, bmode:Int):Void;

	/**
	 * Posterize the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    levels : Int -> Levels of posterization (2 <= levels <= 255)
	 * @return
	 */
	public function gimp_posterize(drawable:Drawable, levels:Int):Void;

	/**
	 * Reset context settings to their default values.
	 *   by Kevin Cozens <kcozens@@svn.gnome.org>
	 *   2011
	 * @param
	 * @return
	 */
	public function gimp_context_set_defaults():Void;

	/**
	 * saves files in the tiff file format
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996,2000-2003
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    compression : Int -> Compression type: @{ NONE (0), LZW (1), PACKBITS (2), DEFLATE (3), JPEG (4), CCITT G3 Fax (5), CCITT G4 Fax (6) @}
	 * @return
	 */
	public function file_tiff_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, compression:Int):Void;

	/**
	 * Cancels a running progress.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    progress_callback : String -> The name of the callback registered for this progress
	 * @return
	 */
	public function gimp_progress_cancel(progress_callback:String):Void;

	/**
	 * Fill the selected region (or alpha) with traces like those on a circuit board
	 *   by Adrian Likins <adrian@@gimp.org>
	 *   10/17/97
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Oilify mask size
	 *    value : Float -> Circuit seed
	 *    toggle : Int -> No background (only for separate layer)
	 *    toggle : Int -> Keep selection
	 *    toggle : Int -> Separate layer
	 * @return
	 */
// 	public function script_fu_circuit(image:Image, drawable:Drawable, value:Float, value:Float, toggle:Int, toggle:Int, toggle:Int):Void;

	/**
	 * Remove optimization to make editing easier
	 *   by Adam D. Moss <adam@@gimp.org>
	 *   1997-2001
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable (unused)
	 * @return
	 *    result : Image -> Resulting image
	 */
// 	public function plug_in_animationunoptimize(image:Image, drawable:Drawable):Image;

	/**
	 * Stretch contrast to cover the maximum possible range
	 *   by Federico Mena Quintero
	 *   1996
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_c_astretch(image:Image, drawable:Drawable):Void;

	/**
	 * Attach the specified layer as floating to the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer (is attached as floating selection)
	 *    drawable : Drawable -> The drawable (where to attach the floating selection)
	 * @return
	 */
	public function gimp_floating_sel_attach(layer:Layer, drawable:Drawable):Void;

	/**
	 * Paste the clipboard contents into a new pattern
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005-09-25
	 * @param
	 *    string : String -> Pattern name
	 *    string : String -> File name
	 * @return
	 */
// 	public function script_fu_paste_as_pattern(string:String, string:String):Void;

	/**
	 * Get the composite method of the specified channel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    channel : Channel -> The channel
	 * @return
	 *    show-masked : Int -> The channel composite method (TRUE or FALSE)
	 */
	public function gimp_channel_get_show_masked(channel:Channel):Int;

	/**
	 * The most widely useful method for sharpening an image
	 *   by Winston Chang <winstonc@@cs.wisc.edu>
	 *   1999-2009
	 * @param
	 *    image : Image -> (unused)
	 *    drawable : Drawable -> Drawable to draw on
	 *    radius : Float -> Radius of gaussian blur (in pixels > 1.0)
	 *    amount : Float -> Strength of effect
	 *    threshold : Int -> Threshold (0-255)
	 * @return
	 */
// 	public function plug_in_unsharp_mask(image:Image, drawable:Drawable, radius:Float, amount:Float, threshold:Int):Void;

	/**
	 * Get ink blob type.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 * @return
	 *    type : Int -> Ink blob type @{ INK-BLOB-TYPE-CIRCLE (0), INK-BLOB-TYPE-SQUARE (1), INK-BLOB-TYPE-DIAMOND (2) @}
	 */
	public function gimp_context_get_ink_blob_type():Int;

	/**
	 * Registers a textdomain for localisation.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2000
	 * @param
	 *    domain_name : String -> The name of the textdomain (must be unique)
	 *    domain_path : String -> The absolute path to the compiled message catalog (may be NULL)
	 * @return
	 */
	public function gimp_plugin_domain_register(domain_name:String, domain_path:String):Void;

	/**
	 * Scale the layer using the default interpolation method.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 *    new_width : Int -> New layer width (1 <= new-width <= 262144)
	 *    new_height : Int -> New layer height (1 <= new-height <= 262144)
	 *    local_origin : Int -> Use a local origin (as opposed to the image origin) (TRUE or FALSE)
	 * @return
	 */
	public function gimp_layer_scale(layer:Layer, new_width:Int, new_height:Int, local_origin:Int):Void;

	/**
	 * Evaluate Python code
	 *   by Manish Singh
	 *   2006
	 * @param
	 *    code : String -> The code to evaluate
	 * @return
	 */
	public function python_fu_eval(code:String):Void;

	/**
	 * Get the list of modules which should not be loaded.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 * @return
	 *    load-inhibit : String -> The list of modules
	 */
	public function gimp_get_module_load_inhibit():String;

	/**
	 * Replace partial transparency with the current background color
	 *   by Adam D. Moss (adam@@foxbox.org)
	 *   27th January 1998
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_semiflatten(image:Image, drawable:Drawable):Void;

	/**
	 * Create a plain text logo with a gradient effect, a drop shadow and a background
	 *   by Spencer Kimball
	 *   1996
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Background colour
	 *    color : Color -> Text colour
	 * @return
	 */
// 	public function script_fu_basic1_logo(string:String, value:Float, font:String, color:Color, color:Color):Void;

	/**
	 * Installs a progress callback for the current plug-in.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    progress_callback : String -> The callback PDB proc to call
	 * @return
	 */
	public function gimp_progress_install(progress_callback:String):Void;

	/**
	 * Loads files in the XWD (X Window Dump) format
	 *   by Peter Kirchgessner
	 *   1996
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_xwd_load(filename:String, raw_filename:String):Image;

	/**
	 * This procedure is deprecated! Use 'script-fu-selection-rounded-rectangle' instead.
	 *   by Sven Neumann
	 *   1998/02/06
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Relative radius
	 * @return
	 */
// 	public function script_fu_selection_round(image:Image, drawable:Drawable, value:Float):Void;

	/**
	 * Get ink blob aspect ratio.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 * @return
	 *    aspect : Float -> ink blob aspect ratio (1 <= aspect <= 10)
	 */
	public function gimp_context_get_ink_blob_aspect_ratio():Float;

	/**
	 * Loads Gimp's .PAT pattern files
	 *   by Tim Newsome
	 *   1997
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_pat_load(filename:String, raw_filename:String):Image;

	/**
	 * Add blended backgrounds, highlights and shadows to the selected region (or alpha)
	 *   by Spencer Kimball
	 *   1996
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Offset (pixels)
	 *    color : Color -> Background colour
	 *    option : Int -> Blend mode
	 *    color : Color -> Start blend
	 *    color : Color -> End blend
	 *    gradient : String -> Gradient
	 *    toggle : Int -> Gradient reverse
	 * @return
	 */
// 	public function script_fu_blended_logo_alpha(image:Image, drawable:Drawable, value:Float, color:Color, option:Int, color:Color, color:Color, gradient:String, toggle:Int):Void;

	/**
	 * Copy a vectors object.
	 *   by Barak Itkin <lightningismyname@@gmail.com>
	 *   2008
	 * @param
	 *    vectors : Vectors -> The vectors object to copy
	 * @return
	 *    vectors-copy : Vectors -> The newly copied vectors object
	 */
	public function gimp_vectors_copy(vectors:Vectors):Vectors;

	/**
	 * Deprecated: Use 'gimp-vectors-stroke-new-from-points' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image to set the paths in
	 *    name : String -> The name of the path to create. If it exists then a unique name will be created - query the list of paths if you want to make sure that the name of the path you create is unique. This will be set as the current path.
	 *    ptype : Int -> The type of the path. Currently only one type (1 = Bezier) is supported.
	 *    num_path_points : Int -> The number of elements in the array, i.e. the number of points in the path * 3. Each point is made up of (x, y, type) of floats. Currently only the creation of bezier curves is allowed. The type parameter must be set to (1) to indicate a BEZIER type curve. Note that for BEZIER curves, points must be given in the following order: ACCACCAC... If the path is not closed the last control point is missed off. Points consist of three control points (control/anchor/control) so for a curve that is not closed there must be at least two points passed (2 x,y pairs). If (num_path_points/3) % 3 = 0 then the path is assumed to be closed and the points are ACCACCACCACC. (num-path-points >= 0)
	 *    points_pairs : Array<Float> -> The points in the path represented as 3 floats. The first is the x pos, next is the y pos, last is the type of the pnt. The type field is dependant on the path type. For beziers (type 1 paths) the type can either be (1.0 = BEZIER_ANCHOR, 2.0 = BEZIER_CONTROL, 3.0= BEZIER_MOVE). Note all points are returned in pixel resolution.
	 * @return
	 */
	public function gimp_path_set_points(image:Image, name:String, ptype:Int, num_path_points:Int, points_pairs:Array<Float>):Void;

	/**
	 * Get a thumbnail of a sub-area of a drawable drawable.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    src_x : Int -> The x coordinate of the area (src-x >= 0)
	 *    src_y : Int -> The y coordinate of the area (src-y >= 0)
	 *    src_width : Int -> The width of the area (src-width >= 1)
	 *    src_height : Int -> The height of the area (src-height >= 1)
	 *    dest_width : Int -> The thumbnail width (1 <= dest-width <= 1024)
	 *    dest_height : Int -> The thumbnail height (1 <= dest-height <= 1024)
	 * @return
	 *    width : Int -> The previews width
	 *    height : Int -> The previews height
	 *    bpp : Int -> The previews bpp
	 *    thumbnail-data-count : Int -> The number of bytes in thumbnail data (thumbnail-data-count >= 0)
	 *    thumbnail-data : Array<Int> -> The thumbnail data
	 */
	public function gimp_drawable_sub_thumbnail(drawable:Drawable, src_x:Int, src_y:Int, src_width:Int, src_height:Int, dest_width:Int, dest_height:Int):Dynamic;

	/**
	 * Deprecated: Use 'gimp-text-fontname' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    drawable : Drawable -> The affected drawable: (-1 for a new text layer)
	 *    x : Float -> The x coordinate for the left of the text bounding box
	 *    y : Float -> The y coordinate for the top of the text bounding box
	 *    text : String -> The text to generate (in UTF-8 encoding)
	 *    border : Int -> The size of the border (border >= -1)
	 *    antialias : Int -> Antialiasing (TRUE or FALSE)
	 *    size : Float -> The size of text in either pixels or points (size >= 0)
	 *    size_type : Int -> The units of specified size @{ PIXELS (0), POINTS (1) @}
	 *    foundry : String -> The font foundry
	 *    family : String -> The font family
	 *    weight : String -> The font weight
	 *    slant : String -> The font slant
	 *    set_width : String -> The font set-width
	 *    spacing : String -> The font spacing
	 *    registry : String -> The font registry
	 *    encoding : String -> The font encoding
	 * @return
	 *    text-layer : Layer -> The new text layer or -1 if no layer was created.
	 */
	public function gimp_text(image:Image, drawable:Drawable, x:Float, y:Float, text:String, border:Int, antialias:Int, size:Float, size_type:Int, foundry:String, family:String, weight:String, slant:String, set_width:String, spacing:String, registry:String, encoding:String):Layer;

	/**
	 * Initializes the progress bar for the current plug-in.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    message : String -> Message to use in the progress dialog
	 *    gdisplay : Display -> GimpDisplay to update progressbar in, or -1 for a seperate window
	 * @return
	 */
	public function gimp_progress_init(message:String, gdisplay:Display):Void;

	/**
	 * Remove vertical stripe artifacts from the image
	 *   by Marc Lehmann <pcg@@goof.com>
	 *   0.2
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    avg_width : Int -> Averaging filter width (default = 36)
	 * @return
	 */
// 	public function plug_in_destripe(image:Image, drawable:Drawable, avg_width:Int):Void;

	/**
	 * Add a guide at the position specified as a percentage of the image size
	 *   by Alan Horkan
	 *   April 2004
	 * @param
	 *    image : Image -> Input Image
	 *    drawable : Drawable -> Input Drawable
	 *    option : Int -> Direction
	 *    value : Float -> Position (in %)
	 * @return
	 */
// 	public function script_fu_guide_new_percent(image:Image, drawable:Drawable, option:Int, value:Float):Void;

	/**
	 * Returns whether the item is a channel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    channel : Int -> TRUE if the item is a channel, FALSE otherwise (TRUE or FALSE)
	 */
	public function gimp_item_is_channel(item:Item):Int;

	/**
	 * Invokes the Gimp pattern selection.
	 *   by Andy Thomas
	 *   1998
	 * @param
	 *    pattern_callback : String -> The callback PDB proc to call when pattern selection is made
	 *    popup_title : String -> Title of the pattern selection dialog
	 *    initial_pattern : String -> The name of the pattern to set as the first selected
	 * @return
	 */
	public function gimp_patterns_popup(pattern_callback:String, popup_title:String, initial_pattern:String):Void;

	/**
	 * Saves images in the MNG file format
	 *   by Mukund Sivaraman <muks@@mukund.org>
	 *   November 19, 2002
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    interlace : Int -> Use interlacing
	 *    compression : Int -> PNG deflate compression level (0 - 9)
	 *    quality : Float -> JPEG quality factor (0.00 - 1.00)
	 *    smoothing : Float -> JPEG smoothing factor (0.00 - 1.00)
	 *    loop : Int -> (ANIMATED MNG) Loop infinitely
	 *    default_delay : Int -> (ANIMATED MNG) Default delay between frames in milliseconds
	 *    default_chunks : Int -> (ANIMATED MNG) Default chunks type (0 = PNG + Delta PNG; 1 = JNG + Delta PNG; 2 = All PNG; 3 = All JNG)
	 *    default_dispose : Int -> (ANIMATED MNG) Default dispose type (0 = combine; 1 = replace)
	 *    bkgd : Int -> Write bKGD (background color) chunk
	 *    gama : Int -> Write gAMA (gamma) chunk
	 *    phys : Int -> Write pHYs (image resolution) chunk
	 *    time : Int -> Write tIME (creation time) chunk
	 * @return
	 */
	public function file_mng_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, interlace:Int, compression:Int, quality:Float, smoothing:Float, loop:Int, default_delay:Int, default_chunks:Int, default_dispose:Int, bkgd:Int, gama:Int, phys:Int, time:Int):Void;

	/**
	 * Returns whether the drawable is an indexed type.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 *    is-indexed : Int -> TRUE if the drawable is an indexed type (TRUE or FALSE)
	 */
	public function gimp_drawable_is_indexed(drawable:Drawable):Int;

	/**
	 * Retrieve the currently active paint dynamics.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 * @return
	 *    name : String -> The name of the active paint dynamics
	 */
	public function gimp_context_get_dynamics():String;

	/**
	 * Check if the image's undo stack is enabled.
	 *   by Raphaël Quinet <raphael@@gimp.org>
	 *   1999
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    enabled : Int -> TRUE if undo is enabled for this image (TRUE or FALSE)
	 */
	public function gimp_image_undo_is_enabled(image:Image):Int;

	/**
	 * Deprecated: Use 'gimp-vectors-import-from-file' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    filename : String -> The name of the SVG file to import.
	 *    merge : Int -> Merge paths into a single vectors object. (TRUE or FALSE)
	 *    scale : Int -> Scale the SVG to image dimensions. (TRUE or FALSE)
	 * @return
	 */
	public function gimp_path_import(image:Image, filename:String, merge:Int, scale:Int):Void;

	/**
	 * Smudge image with varying pressure.
	 *   by Andy Thomas
	 *   1999
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_smudge_default(drawable:Drawable, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * Loads a small preview from a WMF image
	 *   by Dom Lachowicz <cinamod@@hotmail.com>
	 *   (c) 2003 - Version 0.3.0
	 * @param
	 *    filename : String -> The name of the file to load
	 *    thumb_size : Int -> Preferred thumbnail size
	 * @return
	 *    image : Image -> Thumbnail image
	 *    image-width : Int -> Width of full-sized image
	 *    image-height : Int -> Height of full-sized image
	 */
	public function file_wmf_load_thumb(filename:String, thumb_size:Int):python.Tuple.Tuple3<Image,Int,Int>;

	/**
	 * Get the aspect ratio of a generated brush.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 * @return
	 *    aspect-ratio : Float -> The aspect ratio of the brush.
	 */
	public function gimp_brush_get_aspect_ratio(name:String):Float;

	/**
	 * Pulses the progress bar for the current plug-in.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2005
	 * @param
	 * @return
	 */
	public function gimp_progress_pulse():Void;

	/**
	 * Set the transform supersampling recursion.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    transform_recursion : Int -> The transform recursion level (transform-recursion >= 1)
	 * @return
	 */
	public function gimp_context_set_transform_recursion(transform_recursion:Int):Void;

	/**
	 * Adds random noise to image channels
	 *   by Torsten Martinsen
	 *   May 2000
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    independent : Int -> Noise in channels independent
	 *    noise_1 : Float -> Noise in the first channel (red, gray)
	 *    noise_2 : Float -> Noise in the second channel (green, gray_alpha)
	 *    noise_3 : Float -> Noise in the third channel (blue)
	 *    noise_4 : Float -> Noise in the fourth channel (alpha)
	 * @return
	 */
// 	public function plug_in_noisify(image:Image, drawable:Drawable, independent:Int, noise_1:Float, noise_2:Float, noise_3:Float, noise_4:Float):Void;

	/**
	 * Get extents of the bounding box for the specified text.
	 *   by Martin Edlman & Sven Neumann
	 *   1998- 2001
	 * @param
	 *    text : String -> The text to generate (in UTF-8 encoding)
	 *    size : Float -> The size of text in either pixels or points (size >= 0)
	 *    size_type : Int -> The units of specified size @{ PIXELS (0), POINTS (1) @}
	 *    fontname : String -> The name of the font
	 * @return
	 *    width : Int -> The width of the specified font
	 *    height : Int -> The height of the specified font
	 *    ascent : Int -> The ascent of the specified font
	 *    descent : Int -> The descent of the specified font
	 */
	public function gimp_text_get_extents_fontname(text:String, size:Float, size_type:Int, fontname:String):python.Tuple.Tuple4<Int,Int,Int,Int>;

	/**
	 * Set the base direction in the text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    direction : Int -> The base direction of the text. @{ TEXT-DIRECTION-LTR (0), TEXT-DIRECTION-RTL (1) @}
	 * @return
	 */
	public function gimp_text_layer_set_base_direction(layer:Layer, direction:Int):Void;

	/**
	 * Export XMP from the current image to a file
	 *   by Raphaël Quinet <raphael@@gimp.org>
	 *   2005
	 * @param
	 *    image : Image -> Input image
	 *    filename : String -> The name of the file to save the XMP packet in
	 *    overwrite : Int -> Overwrite existing file: @{ FALSE (0), TRUE (1) @}
	 * @return
	 */
// 	public function plug_in_metadata_export(image:Image, filename:String, overwrite:Int):Void;

	/**
	 * Retrieve the list of loaded fonts.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2003
	 * @param
	 *    filter : String -> An optional regular expression used to filter the list
	 * @return
	 *    num-fonts : Int -> The number of available fonts (num-fonts >= 0)
	 *    font-list : Array<String> -> The list of font names
	 */
	public function gimp_fonts_get_list(filter:String):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Tests if brush is generated
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 * @return
	 *    generated : Int -> TRUE if the brush is generated (TRUE or FALSE)
	 */
	public function gimp_brush_is_generated(name:String):Int;

	/**
	 * Sample the specified in uniform parts.
	 *   by Federico Mena Quintero
	 *   1997
	 * @param
	 *    name : String -> The gradient name
	 *    num_samples : Int -> The number of samples to take (num-samples >= 2)
	 *    reverse : Int -> Use the reverse gradient (TRUE or FALSE)
	 * @return
	 *    num-color-samples : Int -> Length of the color_samples array (4 * num_samples) (num-color-samples >= 0)
	 *    color-samples : Array<Float> -> Color samples: @{ R1, G1, B1, A1, ..., Rn, Gn, Bn, An @}
	 */
	public function gimp_gradient_get_uniform_samples(name:String, num_samples:Int, reverse:Int):python.Tuple.Tuple2<Int,Array<Float>>;

	/**
	 * Simulate the glowing boundary of a neon light
	 *   by Spencer Kimball
	 *   2002
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    radius : Float -> Radius of neon effect (in pixels)
	 *    amount : Float -> Effect enhancement variable (0.0 - 1.0)
	 * @return
	 */
// 	public function plug_in_neon(image:Image, drawable:Drawable, radius:Float, amount:Float):Void;

	/**
	 * Preview a GIMP layer-based animation
	 *   by Adam D. Moss <adam@@gimp.org>
	 *   1997, 1998...
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable (unused)
	 * @return
	 */
// 	public function plug_in_animationplay(image:Image, drawable:Drawable):Void;

	/**
	 * Deprecated: Use 'gimp-vectors-set-tattoo' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    name : String -> the name of the path whose tattoo should be set
	 *    tattovalue : Int -> The tattoo associated with the name path. Only values returned from 'path_get_tattoo' should be used here
	 * @return
	 */
	public function gimp_path_set_tattoo(image:Image, name:String, tattovalue:Int):Void;

	/**
	 * Deprecated: Use 'gimp-image-insert-channel' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    channel : Channel -> The channel
	 *    position : Int -> The channel position
	 * @return
	 */
	public function gimp_image_add_channel(image:Image, channel:Channel, position:Int):Void;

	/**
	 * Create an image filled with a swirly pattern
	 *   by Federico Mena Quintero
	 *   June 1997
	 * @param
	 *    value : Float -> Quarter size
	 *    value : Float -> Whirl angle
	 *    value : Float -> Number of times to whirl
	 * @return
	 */
// 	public function script_fu_swirly_pattern(value:Float, value:Float, value:Float):Void;

	/**
	 * Set the tattoo of the specified item.
	 *   by Jay Cox
	 *   1998
	 * @param
	 *    item : Item -> The item
	 *    tattoo : Int -> The new item tattoo
	 * @return
	 */
	public function gimp_item_set_tattoo(item:Item, tattoo:Int):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-matrix' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    coeff_0_0 : Float -> coefficient (0,0) of the transformation matrix
	 *    coeff_0_1 : Float -> coefficient (0,1) of the transformation matrix
	 *    coeff_0_2 : Float -> coefficient (0,2) of the transformation matrix
	 *    coeff_1_0 : Float -> coefficient (1,0) of the transformation matrix
	 *    coeff_1_1 : Float -> coefficient (1,1) of the transformation matrix
	 *    coeff_1_2 : Float -> coefficient (1,2) of the transformation matrix
	 *    coeff_2_0 : Float -> coefficient (2,0) of the transformation matrix
	 *    coeff_2_1 : Float -> coefficient (2,1) of the transformation matrix
	 *    coeff_2_2 : Float -> coefficient (2,2) of the transformation matrix
	 *    interpolate : Int -> Whether to use interpolation and supersampling (TRUE or FALSE)
	 *    clip_result : Int -> How to clip results @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 * @return
	 *    drawable : Drawable -> The transformed drawable
	 */
	public function gimp_drawable_transform_matrix_default(drawable:Drawable, coeff_0_0:Float, coeff_0_1:Float, coeff_0_2:Float, coeff_1_0:Float, coeff_1_1:Float, coeff_1_2:Float, coeff_2_0:Float, coeff_2_1:Float, coeff_2_2:Float, interpolate:Int, clip_result:Int):Drawable;

	/**
	 * Return the floating selection of the image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    floating-sel : Layer -> The image's floating selection
	 */
	public function gimp_image_get_floating_sel(image:Image):Layer;

	/**
	 * Performs various artistic operations
	 *   by Vidar Madsen <vidar@@prosalg.no>
	 *   v1.0, November 2003
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    preset : String -> Preset Name
	 * @return
	 */
// 	public function plug_in_gimpressionist(image:Image, drawable:Drawable, preset:String):Void;

	/**
	 * Invert the selection mask.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_selection_invert(image:Image):Void;

	/**
	 * Create a logo using a Trace Of Particles effect
	 *   by Shuji Narazaki (narazaki@@InetQ.or.jp)
	 *   1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    value : Float -> Hit rate
	 *    value : Float -> Edge width
	 *    toggle : Int -> Edge only
	 *    color : Color -> Base colour
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_t_o_p_logo(string:String, value:Float, font:String, value:Float, value:Float, toggle:Int, color:Color, color:Color):Void;

	/**
	 * Converts a selection to a path
	 *   by Andy Thomas
	 *   1999
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable (unused)
	 * @return
	 */
// 	public function plug_in_sel2path(image:Image, drawable:Drawable):Void;

	/**
	 * Loads an image file as a layer for an existing image.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2005
	 * @param
	 *    image : Image -> Destination image
	 *    filename : String -> The name of the file to load
	 * @return
	 *    layer : Layer -> The layer created when loading the image file
	 */
	public function gimp_file_load_layer(image:Image, filename:String):Layer;

	/**
	 * Creates a new brush
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The requested name of the new brush
	 * @return
	 *    actual-name : String -> The actual new brush name
	 */
	public function gimp_brush_new(name:String):String;

	/**
	 * Set the specified paint method as the active paint method.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 *    name : String -> The name of the paint method
	 * @return
	 */
	public function gimp_context_set_paint_method(name:String):Void;

	/**
	 * Capture an image from a TWAIN datasource
	 *   by Craig Setera (setera@@home.com)
	 *   v0.6 (07/22/2004)
	 * @param
	 * @return
	 *    image-count : Int -> Number of acquired images
	 *    image-ids : Array<Int> -> Array of acquired image identifiers
	 */
	public function twain_acquire():python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * Create a logo by rendering the specified text along the perimeter of a circle
	 *   by Shuji Narazaki <narazaki@@gimp.org>
	 *   1997-1998
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Radius
	 *    value : Float -> Start angle
	 *    value : Float -> Fill angle
	 *    value : Float -> Font size (pixels)
	 *    toggle : Int -> Antialias
	 *    font : String -> Font
	 * @return
	 */
// 	public function script_fu_text_circle(string:String, value:Float, value:Float, value:Float, value:Float, toggle:Int, font:String):Void;

	/**
	 * Create a logo with psychedelic outlines around the text
	 *   by Raphael Quinet (quinet@@gamers.org)
	 *   1999-2000
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Glow colour
	 *    color : Color -> Background colour
	 *    value : Float -> Width of bands
	 *    value : Float -> Width of gaps
	 *    value : Float -> Number of bands
	 *    toggle : Int -> Fade away
	 * @return
	 */
// 	public function script_fu_alien_neon_logo(string:String, value:Float, font:String, color:Color, color:Color, value:Float, value:Float, value:Float, toggle:Int):Void;

	/**
	 * Retrieves the specified buffer's height.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 *    buffer_name : String -> The buffer name
	 * @return
	 *    height : Int -> The buffer height
	 */
	public function gimp_buffer_get_height(buffer_name:String):Int;

	/**
	 * Saves files in KISS CEL file format
	 *   by Nick Lamb
	 *   May 1998
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> Filename to save image to
	 *    raw_filename : String -> Name entered
	 *    palette_filename : String -> Filename to save palette to
	 * @return
	 */
	public function file_cel_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, palette_filename:String):Void;

	/**
	 * Converts a selection to a path (with advanced user menu)
	 *   by Andy Thomas
	 *   1999
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable (unused)
	 *    align_threshold : Float -> align_threshold
	 *    corner_always_threshold : Float -> corner_always_threshold
	 *    corner_surround : Int -> corner_surround
	 *    corner_threshold : Float -> corner_threshold
	 *    error_threshold : Float -> error_threshold
	 *    filter_alternative_surround : Int -> filter_alternative_surround
	 *    filter_epsilon : Float -> filter_epsilon
	 *    filter_iteration_count : Int -> filter_iteration_count
	 *    filter_percent : Float -> filter_percent
	 *    filter_secondary_surround : Int -> filter_secondary_surround
	 *    filter_surround : Int -> filter_surround
	 *    keep_knees : Int -> @{1-Yes, 0-No@}
	 *    line_reversion_threshold : Float -> line_reversion_threshold
	 *    line_threshold : Float -> line_threshold
	 *    reparameterize_improvement : Float -> reparameterize_improvement
	 *    reparameterize_threshold : Float -> reparameterize_threshold
	 *    subdivide_search : Float -> subdivide_search
	 *    subdivide_surround : Int -> subdivide_surround
	 *    subdivide_threshold : Float -> subdivide_threshold
	 *    tangent_surround : Int -> tangent_surround
	 * @return
	 */
// 	public function plug_in_sel2path_advanced(image:Image, drawable:Drawable, align_threshold:Float, corner_always_threshold:Float, corner_surround:Int, corner_threshold:Float, error_threshold:Float, filter_alternative_surround:Int, filter_epsilon:Float, filter_iteration_count:Int, filter_percent:Float, filter_secondary_surround:Int, filter_surround:Int, keep_knees:Int, line_reversion_threshold:Float, line_threshold:Float, reparameterize_improvement:Float, reparameterize_threshold:Float, subdivide_search:Float, subdivide_surround:Int, subdivide_threshold:Float, tangent_surround:Int):Void;

	/**
	 * Open an URL in the user specified web browser
	 *   by Henrik Brix Andersen <brix@@gimp.org>
	 *   2003/09/16
	 * @param
	 *    url : String -> URL to open
	 * @return
	 */
// 	public function plug_in_web_browser(url:String):Void;

	/**
	 * Modifies intensity levels in the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    channel : Int -> The channel to modify @{ HISTOGRAM-VALUE (0), HISTOGRAM-RED (1), HISTOGRAM-GREEN (2), HISTOGRAM-BLUE (3), HISTOGRAM-ALPHA (4), HISTOGRAM-RGB (5) @}
	 *    low_input : Int -> Intensity of lowest input (0 <= low-input <= 255)
	 *    high_input : Int -> Intensity of highest input (0 <= high-input <= 255)
	 *    gamma : Float -> Gamma correction factor (0.1 <= gamma <= 10)
	 *    low_output : Int -> Intensity of lowest output (0 <= low-output <= 255)
	 *    high_output : Int -> Intensity of highest output (0 <= high-output <= 255)
	 * @return
	 */
	public function gimp_levels(drawable:Drawable, channel:Int, low_input:Int, high_input:Int, gamma:Float, low_output:Int, high_output:Int):Void;

	/**
	 * Deprecated: Use 'gimp-context-get-brush' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 *    name : String -> The brush name
	 *    width : Int -> The brush width
	 *    height : Int -> The brush height
	 *    spacing : Int -> The brush spacing (0 <= spacing <= 1000)
	 */
	public function gimp_brushes_get_brush():python.Tuple.Tuple4<String,Int,Int,Int>;

	/**
	 * Retrieves a list of all of the available palettes
	 *   by Nathan Summers <rock@@gimp.org>
	 *   2001
	 * @param
	 *    filter : String -> An optional regular expression used to filter the list
	 * @return
	 *    num-palettes : Int -> The number of palettes in the list (num-palettes >= 0)
	 *    palette-list : Array<String> -> The list of palette names
	 */
	public function gimp_palettes_get_list(filter:String):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Threshold the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    low_threshold : Int -> The low threshold value (0 <= low-threshold <= 255)
	 *    high_threshold : Int -> The high threshold value (0 <= high-threshold <= 255)
	 * @return
	 */
	public function gimp_threshold(drawable:Drawable, low_threshold:Int, high_threshold:Int):Void;

	/**
	 * Sets the value of the pixel at the specified coordinates.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    x_coord : Int -> The x coordinate (x-coord >= 0)
	 *    y_coord : Int -> The y coordinate (y-coord >= 0)
	 *    num_channels : Int -> The number of channels for the pixel (num-channels >= 0)
	 *    pixel : Array<Int> -> The pixel value
	 * @return
	 */
	public function gimp_drawable_set_pixel(drawable:Drawable, x_coord:Int, y_coord:Int, num_channels:Int, pixel:Array<Int>):Void;

	/**
	 * save file in the SunRaster file format
	 *   by Peter Kirchgessner
	 *   1996
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    rle : Int -> Specify non-zero for rle output, zero for standard output
	 * @return
	 */
	public function file_sunras_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, rle:Int):Void;

	/**
	 * Cuts an image along its guides, creates images and a HTML table snippet
	 *   by and give you the html to reassemble the resulting images. If you
	 *   will use the lower three visible layers on the image for normal,
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    save_path : String -> Path for HTML export
	 *    html_filename : String -> Filename for export
	 *    image_basename : String -> Image name prefix
	 *    image_extension : String -> Image format
	 *    separate_image_dir : Int -> Separate image folder
	 *    relative_image_path : String -> Folder for image export
	 *    cellspacing : Int -> Space between table elements
	 *    animate : Int -> Javascript for onmouseover and clicked
	 *    skip_caps : Int -> Skip animation for table caps
	 * @return
	 */
	public function python_fu_slice(image:Image, drawable:Drawable, save_path:String, html_filename:String, image_basename:String, image_extension:String, separate_image_dir:Int, relative_image_path:String, cellspacing:Int, animate:Int, skip_caps:Int):Void;

	/**
	 * Simulate movement using directional blur
	 *   by Torsten Martinsen, Federico Mena Quintero, Daniel Skarda, Joerg Gittinger
	 *   May 2007, 1.3
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    type : Int -> Type of motion blur @{ LINEAR (0), RADIAL (1), ZOOM (2) @}
	 *    length : Int -> Length
	 *    angle : Int -> Angle
	 *    center_x : Float -> Center X (optional)
	 *    center_y : Float -> Center Y (optional)
	 * @return
	 */
// 	public function plug_in_mblur(image:Image, drawable:Drawable, type:Int, length:Int, angle:Int, center_x:Float, center_y:Float):Void;

	/**
	 * Get the text from a text layer as string.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 * @return
	 *    text : String -> The text from the specified text layer.
	 */
	public function gimp_text_layer_get_text(layer:Layer):String;

	/**
	 * Returns the item's list of children.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    num-children : Int -> The item's number of children (num-children >= 0)
	 *    child-ids : Array<Int> -> The item's list of children
	 */
	public function gimp_item_get_children(item:Item):python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * Interactive console for Script-Fu development
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 * @return
	 */
// 	public function plug_in_script_fu_console():Void;

	/**
	 * Get the paint mode.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 *    paint-mode : Int -> The paint mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 */
	public function gimp_context_get_paint_mode():Int;

	/**
	 * Sets the specified gradient as the active gradient.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The name of the gradient
	 * @return
	 */
	public function gimp_context_set_gradient(name:String):Void;

	/**
	 * Returns size of data associated with the specified identifier.
	 *   by Nick Lamb
	 *   1998
	 * @param
	 *    identifier : String -> The identifier associated with data
	 * @return
	 *    bytes : Int -> The number of bytes in the data (bytes >= 1)
	 */
	public function gimp_procedural_db_get_data_size(identifier:String):Int;

	/**
	 * Deprecated: Use 'gimp-layer-add-mask' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    layer : Layer -> The layer to receive the mask
	 *    mask : Channel -> The mask to add to the layer
	 * @return
	 */
	public function gimp_image_add_layer_mask(image:Image, layer:Layer, mask:Channel):Void;

	/**
	 * Modifies the intensity curve(s) for specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    channel : Int -> The channel to modify @{ HISTOGRAM-VALUE (0), HISTOGRAM-RED (1), HISTOGRAM-GREEN (2), HISTOGRAM-BLUE (3), HISTOGRAM-ALPHA (4), HISTOGRAM-RGB (5) @}
	 *    num_points : Int -> The number of values in the control point array (4 <= num-points <= 34)
	 *    control_pts : Array<Int> -> The spline control points: @{ cp1.x, cp1.y, cp2.x, cp2.y, ... @}
	 * @return
	 */
	public function gimp_curves_spline(drawable:Drawable, channel:Int, num_points:Int, control_pts:Array<Int>):Void;

	/**
	 * Returns the specified image's active channel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    active-channel : Channel -> The active channel
	 */
	public function gimp_image_get_active_channel(image:Image):Channel;

	/**
	 * Make a new image from the current layer by applying the unsharp mask method
	 *   by Shuji Narazaki <narazaki@@gimp.org>
	 *   1997,1998
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable to apply
	 *    value : Float -> Mask size
	 *    value : Float -> Mask opacity
	 * @return
	 */
// 	public function script_fu_unsharp_mask(image:Image, drawable:Drawable, value:Float, value:Float):Void;

	/**
	 * Feather the image's selection
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    radius : Float -> Radius of feather (in pixels) (radius >= 0)
	 * @return
	 */
	public function gimp_selection_feather(image:Image, radius:Float):Void;

	/**
	 * Render the drawable as a grayscale image seen through a colored glass.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    hue : Float -> Hue in degrees (0 <= hue <= 360)
	 *    saturation : Float -> Saturation in percent (0 <= saturation <= 100)
	 *    lightness : Float -> Lightness in percent (-100 <= lightness <= 100)
	 * @return
	 */
	public function gimp_colorize(drawable:Drawable, hue:Float, saturation:Float, lightness:Float):Void;

	/**
	 * Reduce file size where combining layers is possible
	 *   by Adam D. Moss <adam@@gimp.org>
	 *   1997-2001
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable (unused)
	 * @return
	 *    result : Image -> Resulting image
	 */
// 	public function plug_in_animationoptimize_diff(image:Image, drawable:Drawable):Image;

	/**
	 * Create a beveled pattern heading for webpages
	 *   by Federico Mena Quintero
	 *   July 1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    pattern : String -> Pattern
	 *    toggle : Int -> Transparent background
	 * @return
	 */
// 	public function script_fu_beveled_pattern_heading(string:String, value:Float, font:String, pattern:String, toggle:Int):Void;

	/**
	 * Create a logo with outlined text and a drop shadow
	 *   by Hrvoje Horvat (hhorvat@@open.hr)
	 *   07 April, 1998
	 * @param
	 *    pattern : String -> Pattern
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    value : Float -> Outline blur radius
	 *    value : Float -> Shadow blur radius
	 *    value : Float -> Bumpmap (alpha layer) blur radius
	 *    toggle : Int -> Default bumpmap settings
	 *    value : Float -> Shadow X offset
	 *    value : Float -> Shadow Y offset
	 * @return
	 */
// 	public function script_fu_3d_outline_logo(pattern:String, string:String, value:Float, font:String, value:Float, value:Float, value:Float, toggle:Int, value:Float, value:Float):Void;

	/**
	 * Flip the specified item either vertically or horizontally.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    item : Item -> The affected item
	 *    flip_type : Int -> Type of flip @{ ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) @}
	 *    auto_center : Int -> Whether to automatically position the axis in the selection center (TRUE or FALSE)
	 *    axis : Float -> coord. of flip axis
	 * @return
	 *    item : Item -> The flipped item
	 */
	public function gimp_item_transform_flip_simple(item:Item, flip_type:Int, auto_center:Int, axis:Float):Item;

	/**
	 * Load files in XPM (X11 Pixmap) format.
	 *   by Spencer Kimball & Peter Mattis & Ray Lehtiniemi
	 *   1997
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_xpm_load(filename:String, raw_filename:String):Image;

	/**
	 * Add a layer mask to the specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer to receive the mask
	 *    mask : Channel -> The mask to add to the layer
	 * @return
	 */
	public function gimp_layer_add_mask(layer:Layer, mask:Channel):Void;

	/**
	 * Apply a gaussian blur
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    radius : Float -> Radius of gaussian blur (in pixels, > 0.0)
	 *    horizontal : Int -> Blur in horizontal direction
	 *    vertical : Int -> Blur in vertical direction
	 * @return
	 */
// 	public function plug_in_gauss_rle(image:Image, drawable:Drawable, radius:Float, horizontal:Int, vertical:Int):Void;

	/**
	 * Convert image to or from polar coordinates
	 *   by Daniel Dunbar and Federico Mena Quintero
	 *   July 1997, 0.5
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    circle : Float -> Circle depth in %
	 *    angle : Float -> Offset angle
	 *    backwards : Int -> Map backwards @{ TRUE, FALSE @}
	 *    inverse : Int -> Map from top @{ TRUE, FALSE @}
	 *    polrec : Int -> Polar to rectangular @{ TRUE, FALSE @}
	 * @return
	 */
// 	public function plug_in_polar_coords(image:Image, drawable:Drawable, circle:Float, angle:Float, backwards:Int, inverse:Int, polrec:Int):Void;

	/**
	 * Scale the specified item.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    item : Item -> The affected item
	 *    x0 : Float -> The new x coordinate of the upper-left corner of the scaled region
	 *    y0 : Float -> The new y coordinate of the upper-left corner of the scaled region
	 *    x1 : Float -> The new x coordinate of the lower-right corner of the scaled region
	 *    y1 : Float -> The new y coordinate of the lower-right corner of the scaled region
	 * @return
	 *    item : Item -> The scaled item
	 */
	public function gimp_item_transform_scale(item:Item, x0:Float, y0:Float, x1:Float, y1:Float):Item;

	/**
	 * Create a logo with an alien glow around the text
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Glow colour
	 * @return
	 */
// 	public function script_fu_alien_glow_logo(string:String, value:Float, font:String, color:Color):Void;

	/**
	 * Copy from the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable to copy from
	 * @return
	 *    non-empty : Int -> TRUE if the cut was successful, FALSE if there was nothing to copy from (TRUE or FALSE)
	 */
	public function gimp_edit_copy(drawable:Drawable):Int;

	/**
	 * Returns data associated with the specified identifier.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    identifier : String -> The identifier associated with data
	 * @return
	 *    bytes : Int -> The number of bytes in the data (bytes >= 1)
	 *    data : Array<Int> -> A byte array containing data
	 */
	public function gimp_procedural_db_get_data(identifier:String):python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * Create a new brush with characters from a text sequence
	 *   by the input text in the chosen font
	 *   Copyright Joao S.O. Bueno 2009. GPL v3.0
	 * @param
	 *    font : String -> Font
	 *    size : Int -> Pixel Size
	 *    text : String -> Text
	 * @return
	 */
	public function python_fu_brush_from_text(font:String, size:Int, text:String):Void;

	/**
	 * Use the specified [GRAY] drawable as a stencil to carve from the specified image. The specified image must be either RGB colour or grayscale, not indexed.
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    image : Image -> Mask image
	 *    drawable : Drawable -> Mask drawable
	 *    drawable : Drawable -> Image to carve
	 *    toggle : Int -> Carve white areas
	 * @return
	 */
// 	public function script_fu_carve_it(image:Image, drawable:Drawable, drawable:Drawable, toggle:Int):Void;

	/**
	 * Retrieve information about the specified palette.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The palette name
	 * @return
	 *    num-colors : Int -> The number of colors in the palette
	 */
	public function gimp_palette_get_info(name:String):Int;

	/**
	 * Gets the specified palette entry from the specified palette.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The palette name
	 *    entry_num : Int -> The entry to retrieve
	 * @return
	 *    entry-name : String -> The name requested
	 */
	public function gimp_palette_entry_get_name(name:String, entry_num:Int):String;

	/**
	 * Deprecated: Use 'gimp-item-transform-flip-simple' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    flip_type : Int -> Type of flip @{ ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) @}
	 *    auto_center : Int -> Whether to automatically position the axis in the selection center (TRUE or FALSE)
	 *    axis : Float -> coord. of flip axis
	 *    clip_result : Int -> Whether to clip results (TRUE or FALSE)
	 * @return
	 *    drawable : Drawable -> The flipped drawable
	 */
	public function gimp_drawable_transform_flip_simple(drawable:Drawable, flip_type:Int, auto_center:Int, axis:Float, clip_result:Int):Drawable;

	/**
	 * Create a rectangular brush with feathered edges
	 *   by Seth Burgess <sjburges@@ou.edu>
	 *   1997
	 * @param
	 *    string : String -> Name
	 *    value : Float -> Width
	 *    value : Float -> Height
	 *    value : Float -> Feathering
	 *    value : Float -> Spacing
	 * @return
	 */
// 	public function script_fu_make_brush_rectangular_feathered(string:String, value:Float, value:Float, value:Float, value:Float):Void;

	/**
	 * Create an elliptical brush
	 *   by Seth Burgess <sjburges@@ou.edu>
	 *   1997
	 * @param
	 *    string : String -> Name
	 *    value : Float -> Width
	 *    value : Float -> Height
	 *    value : Float -> Spacing
	 * @return
	 */
// 	public function script_fu_make_brush_elliptical(string:String, value:Float, value:Float, value:Float):Void;

	/**
	 * Create geometric shapes
	 *   by Andy Thomas
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    dummy : Int -> dummy
	 * @return
	 */
// 	public function plug_in_gfig(image:Image, drawable:Drawable, dummy:Int):Void;

	/**
	 * Simplify image into an array of solid-colored squares
	 *   by Spencer Kimball & Peter Mattis, Tracy Scott, (ported to 1.0 by) Eiichi Takamori
	 *   1995
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    pixel_width : Int -> Pixel width (the decrease in resolution)
	 * @return
	 */
// 	public function plug_in_pixelize(image:Image, drawable:Drawable, pixel_width:Int):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-rotate' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    angle : Float -> The angle of rotation (radians)
	 *    auto_center : Int -> Whether to automatically rotate around the selection center (TRUE or FALSE)
	 *    center_x : Int -> The hor. coordinate of the center of rotation
	 *    center_y : Int -> The vert. coordinate of the center of rotation
	 *    interpolate : Int -> Whether to use interpolation and supersampling (TRUE or FALSE)
	 *    clip_result : Int -> How to clip results @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 * @return
	 *    drawable : Drawable -> The rotated drawable
	 */
	public function gimp_drawable_transform_rotate_default(drawable:Drawable, angle:Float, auto_center:Int, center_x:Int, center_y:Int, interpolate:Int, clip_result:Int):Drawable;

	/**
	 * Create a polygonal selection over the specified image.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    image : Image -> The image
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    num_segs : Int -> Number of points (count 1 coordinate as two points) (num-segs >= 2)
	 *    segs : Array<Float> -> Array of points: @{ p1.x, p1.y, p2.x, p2.y, ..., pn.x, pn.y@}
	 * @return
	 */
	public function gimp_image_select_polygon(image:Image, operation:Int, num_segs:Int, segs:Array<Float>):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-rotate-simple' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    rotate_type : Int -> Type of rotation @{ ROTATE-90 (0), ROTATE-180 (1), ROTATE-270 (2) @}
	 *    auto_center : Int -> Whether to automatically rotate around the selection center (TRUE or FALSE)
	 *    center_x : Int -> The hor. coordinate of the center of rotation
	 *    center_y : Int -> The vert. coordinate of the center of rotation
	 *    clip_result : Int -> Whether to clip results (TRUE or FALSE)
	 * @return
	 *    drawable : Drawable -> The rotated drawable
	 */
	public function gimp_drawable_transform_rotate_simple(drawable:Drawable, rotate_type:Int, auto_center:Int, center_x:Int, center_y:Int, clip_result:Int):Drawable;

	/**
	 * Returns the bytes per pixel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 *    bpp : Int -> Bytes per pixel
	 */
	public function gimp_drawable_bpp(drawable:Drawable):Int;

	/**
	 * Clone from the source to the dest drawable using the current brush
	 *   by Andy Thomas
	 *   1999
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_clone_default(drawable:Drawable, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * Loads images from the Photoshop PSD file format
	 *   by John Marshall
	 *   2007
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_psd_load(filename:String, raw_filename:String):Image;

	/**
	 * flips the given stroke.
	 *   by João S. O. Bueno
	 *   2006
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 *    flip_type : Int -> Flip orientation, either vertical or horizontal @{ ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) @}
	 *    axis : Float -> axis coordinate about which to flip, in pixels
	 * @return
	 */
	public function gimp_vectors_stroke_flip(vectors:Vectors, stroke_id:Int, flip_type:Int, axis:Float):Void;

	/**
	 * Transforms the specified item into a selection
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    image : Image -> The image
	 *    operation : Int -> The desired operation with current selection @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    item : Item -> The item to render to the selection
	 * @return
	 */
	public function gimp_image_select_item(image:Image, operation:Int, item:Item):Void;

	/**
	 * Completely randomize a fraction of pixels
	 *   by Miles O'Neal  <meo@@rru.com>
	 *   1995-1998
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    rndm_pct : Float -> Randomization percentage (1.0 - 100.0)
	 *    rndm_rcount : Float -> Repeat count (1.0 - 100.0)
	 *    randomize : Int -> Use random seed @{ TRUE, FALSE @}
	 *    seed : Int -> Seed value (used only if randomize is FALSE)
	 * @return
	 */
// 	public function plug_in_randomize_hurl(image:Image, drawable:Drawable, rndm_pct:Float, rndm_rcount:Float, randomize:Int, seed:Int):Void;

	/**
	 * Deprecated: Use 'gimp-image-select-color' instead.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    color : Color -> The color to select
	 *    threshold : Int -> Threshold in intensity levels (0 <= threshold <= 255)
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    antialias : Int -> Antialiasing (TRUE or FALSE)
	 *    feather : Int -> Feather option for selections (TRUE or FALSE)
	 *    feather_radius : Float -> Radius for feather operation (feather-radius >= 0)
	 *    sample_merged : Int -> Use the composite image, not the drawable (TRUE or FALSE)
	 * @return
	 */
	public function gimp_by_color_select(drawable:Drawable, color:Color, threshold:Int, operation:Int, antialias:Int, feather:Int, feather_radius:Float, sample_merged:Int):Void;

	/**
	 * Simulate distortion caused by square glass tiles
	 *   by Karl-Johan Andersson
	 *   May 2000
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    tilex : Int -> Tile width (10 - 50)
	 *    tiley : Int -> Tile height (10 - 50)
	 * @return
	 */
// 	public function plug_in_glasstile(image:Image, drawable:Drawable, tilex:Int, tiley:Int):Void;

	/**
	 * Returns the item's image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    image : Image -> The item's image
	 */
	public function gimp_item_get_image(item:Item):Image;

	/**
	 * Create a chalk drawing effect for the selected region (or alpha)
	 *   by Manish Singh <msingh@@uclink4.berkeley.edu>
	 *   October 1997
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_chalk_logo_alpha(image:Image, drawable:Drawable, color:Color):Void;

	/**
	 * Generates a unique filename.
	 *   by Josh MacDonald
	 *   1997
	 * @param
	 *    extension : String -> The extension the file will have
	 * @return
	 *    name : String -> The new temp filename
	 */
	public function gimp_temp_name(extension:String):String;

	/**
	 * Create a gradient using colors from the palette
	 *   by Carol Spears, reproduced from previous work by Adrian Likins and Jeff Trefftz
	 *   2006
	 * @param
	 *    palette : String -> Palette
	 * @return
	 *    new-gradient : String -> Result
	 */
	public function python_fu_palette_to_gradient(palette:String):String;

	/**
	 * Get the feather setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 * @return
	 *    feather : Int -> The feather setting (TRUE or FALSE)
	 */
	public function gimp_context_get_feather():Int;

	/**
	 * Deprecated: Use 'gimp-image-select-round-rectangle' instead.
	 *   by Martin Nordholts
	 *   2006
	 * @param
	 *    image : Image -> The image
	 *    x : Float -> x coordinate of upper-left corner of rectangle
	 *    y : Float -> y coordinate of upper-left corner of rectangle
	 *    width : Float -> The width of the rectangle (width >= 0)
	 *    height : Float -> The height of the rectangle (height >= 0)
	 *    corner_radius_x : Float -> The corner radius in X direction (0 <= corner-radius-x <= 262144)
	 *    corner_radius_y : Float -> The corner radius in Y direction (0 <= corner-radius-y <= 262144)
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    antialias : Int -> Antialiasing (TRUE or FALSE)
	 *    feather : Int -> Feather option for selections (TRUE or FALSE)
	 *    feather_radius_x : Float -> Radius for feather operation in X direction (feather-radius-x >= 0)
	 *    feather_radius_y : Float -> Radius for feather operation in Y direction (feather-radius-y >= 0)
	 * @return
	 */
	public function gimp_round_rect_select(image:Image, x:Float, y:Float, width:Float, height:Float, corner_radius_x:Float, corner_radius_y:Float, operation:Int, antialias:Int, feather:Int, feather_radius_x:Float, feather_radius_y:Float):Void;

	/**
	 * Load file in PDF format
	 *   by Nathan Summers
	 *   2005
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_pdf_load(filename:String, raw_filename:String):Image;

	/**
	 * Add a subtle translucent 3D effect to the selected region (or alpha)
	 *   by Adrian Likins <adrian@@gimp.org>
	 *   9/28/97
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Highlight X offset
	 *    value : Float -> Highlight Y offset
	 *    color : Color -> Highlight colour
	 *    value : Float -> Highlight opacity
	 *    color : Color -> Drop shadow colour
	 *    value : Float -> Drop shadow opacity
	 *    value : Float -> Drop shadow blur radius
	 *    value : Float -> Drop shadow X offset
	 *    value : Float -> Drop shadow Y offset
	 *    toggle : Int -> Keep selection
	 * @return
	 */
// 	public function script_fu_xach_effect(image:Image, drawable:Drawable, value:Float, value:Float, color:Color, value:Float, color:Color, value:Float, value:Float, value:Float, value:Float, toggle:Int):Void;

	/**
	 * Create a beveled pattern hrule for webpages
	 *   by Federico Mena Quintero
	 *   July 1997
	 * @param
	 *    value : Float -> Width
	 *    value : Float -> Height
	 *    pattern : String -> Pattern
	 * @return
	 */
// 	public function script_fu_beveled_pattern_hrule(value:Float, value:Float, pattern:String):Void;

	/**
	 * returns the control points of a stroke.
	 *   by Simon Budig
	 *   2006
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 * @return
	 *    type : Int -> type of the stroke (always GIMP_VECTORS_STROKE_TYPE_BEZIER for now). @{ VECTORS-STROKE-TYPE-BEZIER (0) @}
	 *    num-points : Int -> The number of floats returned. (num-points >= 0)
	 *    controlpoints : Array<Float> -> List of the control points for the stroke (x0, y0, x1, y1, ...).
	 *    closed : Int -> Whether the stroke is closed or not. (TRUE or FALSE)
	 */
	public function gimp_vectors_stroke_get_points(vectors:Vectors, stroke_id:Int):python.Tuple.Tuple4<Int,Int,Array<Float>,Int>;

	/**
	 * Creates a new image with the specified width, height, and type.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    width : Int -> The width of the image (1 <= width <= 262144)
	 *    height : Int -> The height of the image (1 <= height <= 262144)
	 *    type : Int -> The type of image @{ RGB (0), GRAY (1), INDEXED (2) @}
	 * @return
	 *    image : Image -> The ID of the newly created image
	 */
	public function gimp_image_new(width:Int, height:Int, type:Int):Image;

	/**
	 * Loads thumbnails from the Photoshop PSD file format
	 *   by John Marshall
	 *   2007
	 * @param
	 *    filename : String -> The name of the file to load
	 *    thumb_size : Int -> Preferred thumbnail size
	 * @return
	 *    image : Image -> Thumbnail image
	 *    image-width : Int -> Width of full-sized image
	 *    image-height : Int -> Height of full-sized image
	 */
	public function file_psd_load_thumb(filename:String, thumb_size:Int):python.Tuple.Tuple3<Image,Int,Int>;

	/**
	 * Tests if gradient can be edited
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The gradient name
	 * @return
	 *    editable : Int -> TRUE if the gradient can be edited (TRUE or FALSE)
	 */
	public function gimp_gradient_is_editable(name:String):Int;

	/**
	 * Loads JPEG 2000 images.
	 *   by Aurimas Juška
	 *   2009
	 * @param
	 *    filename : String -> The name of the file to load.
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_jp2_load(filename:String, raw_filename:String):Image;

	/**
	 * Move pixels around randomly
	 *   by Spencer Kimball and Peter Mattis, ported by Brian Degenhardt and Federico Mena Quintero
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    spread_amount_x : Float -> Horizontal spread amount (0 <= spread_amount_x <= 200)
	 *    spread_amount_y : Float -> Vertical spread amount (0 <= spread_amount_y <= 200)
	 * @return
	 */
// 	public function plug_in_spread(image:Image, drawable:Drawable, spread_amount_x:Float, spread_amount_y:Float):Void;

	/**
	 * Copy from the projection into a named buffer.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 *    image : Image -> The image to copy from
	 *    buffer_name : String -> The name of the buffer to create
	 * @return
	 *    real-name : String -> The real name given to the buffer, or NULL if the copy failed
	 */
	public function gimp_edit_named_copy_visible(image:Image, buffer_name:String):String;

	/**
	 * Set the current GIMP background color.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 *    background : Color -> The background color
	 * @return
	 */
	public function gimp_context_set_background(background:Color):Void;

	/**
	 * Returns TRUE if the item is valid.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2007
	 * @param
	 *    item : Item -> The item to check
	 * @return
	 *    valid : Int -> Whether the item ID is valid (TRUE or FALSE)
	 */
	public function gimp_item_is_valid(item:Item):Int;

	/**
	 * Bookmark to the GIMP web site
	 *   by Roman Joost <romanofski@@gimp.org>
	 *   2006
	 * @param
	 * @return
	 */
	public function gimp_online_docs_web_site():Void;

	/**
	 * Saves files in PNG file format
	 *   by Michael Sweet <mike@@easysw.com>, Daniel Skarda <0rfelyus@@atrey.karlin.mff.cuni.cz>
	 *   1.3.4 - 03 September 2002
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 * @return
	 */
	public function file_png_save_defaults(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Returns the factor of the unit.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1999
	 * @param
	 *    unit_id : Int -> The unit's integer ID
	 * @return
	 *    factor : Float -> The unit's factor
	 */
	public function gimp_unit_get_factor(unit_id:Int):Float;

	/**
	 * Set the interpolation type.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    interpolation : Int -> The interpolation type @{ INTERPOLATION-NONE (0), INTERPOLATION-LINEAR (1), INTERPOLATION-CUBIC (2), INTERPOLATION-LANCZOS (3) @}
	 * @return
	 */
	public function gimp_context_set_interpolation(interpolation:Int):Void;

	/**
	 * Close the pattern selection dialog.
	 *   by Andy Thomas
	 *   1998
	 * @param
	 *    pattern_callback : String -> The name of the callback registered for this pop-up
	 * @return
	 */
	public function gimp_patterns_close_popup(pattern_callback:String):Void;

	/**
	 * Add a shiny look and bevel effect to the selected region (or alpha)
	 *   by Brian McFee <keebler@@wco.com>
	 *   April 1998
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Border size (pixels)
	 *    value : Float -> Bevel height (sharpness)
	 *    value : Float -> Bevel width
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_gradient_bevel_logo_alpha(image:Image, drawable:Drawable, value:Float, value:Float, value:Float, color:Color):Void;

	/**
	 * Register an icon for a plug-in procedure.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    procedure_name : String -> The procedure for which to install the icon
	 *    icon_type : Int -> The type of the icon @{ ICON-TYPE-STOCK-ID (0), ICON-TYPE-INLINE-PIXBUF (1), ICON-TYPE-IMAGE-FILE (2) @}
	 *    icon_data_length : Int -> The length of 'icon-data' (icon-data-length >= 1)
	 *    icon_data : Array<Int> -> The procedure's icon. The format depends on the 'icon_type' parameter
	 * @return
	 */
	public function gimp_plugin_icon_register(procedure_name:String, icon_type:Int, icon_data_length:Int, icon_data:Array<Int>):Void;

	/**
	 * Sets the current gradient in a gradient selection dialog.
	 *   by Andy Thomas
	 *   1998
	 * @param
	 *    gradient_callback : String -> The name of the callback registered for this pop-up
	 *    gradient_name : String -> The name of the gradient to set as selected
	 * @return
	 */
	public function gimp_gradients_set_popup(gradient_callback:String, gradient_name:String):Void;

	/**
	 * Look up a global parasite.
	 *   by Jay Cox
	 *   1998
	 * @param
	 *    name : String -> The name of the parasite to find
	 * @return
	 *    parasite : Parasite -> The found parasite
	 */
	public function gimp_get_parasite(name:String):Parasite;

	/**
	 * Desaturate the contents of the specified drawable, with the specified formula.
	 *   by Karine Delvare
	 *   2005
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    desaturate_mode : Int -> The formula to use to desaturate @{ DESATURATE-LIGHTNESS (0), DESATURATE-LUMINOSITY (1), DESATURATE-AVERAGE (2) @}
	 * @return
	 */
	public function gimp_desaturate_full(drawable:Drawable, desaturate_mode:Int):Void;

	/**
	 * Sets the deletion flag of a unit.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1999
	 * @param
	 *    unit_id : Int -> The unit's integer ID
	 *    deletion_flag : Int -> The new deletion flag of the unit (TRUE or FALSE)
	 * @return
	 */
	public function gimp_unit_set_deletion_flag(unit_id:Int, deletion_flag:Int):Void;

	/**
	 * Returns the plural form of the unit.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1999
	 * @param
	 *    unit_id : Int -> The unit's integer ID
	 * @return
	 *    plural : String -> The unit's plural form
	 */
	public function gimp_unit_get_plural(unit_id:Int):String;

	/**
	 * Loads files of Windows ICO file format
	 *   by Christian Kreibich <christian@@whoop.org>
	 *   2002
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_ico_load(filename:String, raw_filename:String):Image;

	/**
	 * Combine several images on a film strip
	 *   by Peter Kirchgessner
	 *   1997
	 * @param
	 *    image : Image -> Input image (only used as default image in interactive mode)
	 *    drawable : Drawable -> Input drawable (not used)
	 *    film_height : Int -> Height of film (0: fit to images)
	 *    film_color : Color -> Color of the film
	 *    number_start : Int -> Start index for numbering
	 *    number_font : String -> Font for drawing numbers
	 *    number_color : Color -> Color for numbers
	 *    at_top : Int -> Flag for drawing numbers at top of film
	 *    at_bottom : Int -> Flag for drawing numbers at bottom of film
	 *    num_images : Int -> Number of images to be used for film
	 *    image_ids : Array<Int> -> num-images image IDs to be used for film
	 * @return
	 *    new-image : Image -> Output image
	 */
// 	public function plug_in_film(image:Image, drawable:Drawable, film_height:Int, film_color:Color, number_start:Int, number_font:String, number_color:Color, at_top:Int, at_bottom:Int, num_images:Int, image_ids:Array<Int>):Image;

	/**
	 * Raise the specified item to the top of its level in its item tree
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to raise to top
	 * @return
	 */
	public function gimp_image_raise_item_to_top(image:Image, item:Item):Void;

	/**
	 * Translate the layer by the specified offsets.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 *    offx : Int -> Offset in x direction
	 *    offy : Int -> Offset in y direction
	 * @return
	 */
	public function gimp_layer_translate(layer:Layer, offx:Int, offy:Int):Void;

	/**
	 * Returns the symbol of the unit.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1999
	 * @param
	 *    unit_id : Int -> The unit's integer ID
	 * @return
	 *    symbol : String -> The unit's symbol
	 */
	public function gimp_unit_get_symbol(unit_id:Int):String;

	/**
	 * Deprecated: Use 'gimp-image-select-item' instead.
	 *   by 
	 *   
	 * @param
	 *    channel : Channel -> The channel
	 * @return
	 */
	public function gimp_selection_load(channel:Channel):Void;

	/**
	 * Deprecated: Use 'gimp-gradient-get-custom-samples' instead.
	 *   by 
	 *   
	 * @param
	 *    num_samples : Int -> The number of samples to take (num-samples >= 0)
	 *    positions : Array<Float> -> The list of positions to sample along the gradient
	 *    reverse : Int -> Use the reverse gradient (TRUE or FALSE)
	 * @return
	 *    array-length : Int -> Length of the color_samples array (4 * num_samples) (array-length >= 0)
	 *    color-samples : Array<Float> -> Color samples: @{ R1, G1, B1, A1, ..., Rn, Gn, Bn, An @}
	 */
	public function gimp_gradients_sample_custom(num_samples:Int, positions:Array<Float>, reverse:Int):python.Tuple.Tuple2<Int,Array<Float>>;

	/**
	 * Set the aspect ratio of a generated brush.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 *    aspect_ratio_in : Float -> The desired brush aspect ratio
	 * @return
	 *    aspect-ratio-out : Float -> The brush aspect ratio actually assigned
	 */
	public function gimp_brush_set_aspect_ratio(name:String, aspect_ratio_in:Float):Float;

	/**
	 * Resize the image to the specified extents.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    new_width : Int -> New image width (1 <= new-width <= 262144)
	 *    new_height : Int -> New image height (1 <= new-height <= 262144)
	 *    offx : Int -> x offset between upper left corner of old and new images: (new - old)
	 *    offy : Int -> y offset between upper left corner of old and new images: (new - old)
	 * @return
	 */
	public function gimp_image_resize(image:Image, new_width:Int, new_height:Int, offx:Int, offy:Int):Void;

	/**
	 * Deprecated: Use 'gimp-vectors-to-selection' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    name : String -> The name of the path which should be made into selection.
	 *    op : Int -> The desired operation with current selection @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    antialias : Int -> Antialias selection. (TRUE or FALSE)
	 *    feather : Int -> Feather selection. (TRUE or FALSE)
	 *    feather_radius_x : Float -> Feather radius x.
	 *    feather_radius_y : Float -> Feather radius y.
	 * @return
	 */
	public function gimp_path_to_selection(image:Image, name:String, op:Int, antialias:Int, feather:Int, feather_radius_x:Float, feather_radius_y:Float):Void;

	/**
	 * Export the active palette as a PHP dictionary (name => colour)
	 *   by Barak Itkin <lightningismyname@@gmail.com>
	 *   May 15th, 2009
	 * @param
	 *    dirname : String -> Folder for the output file
	 *    string : String -> The name of the file to create (if a file with this name already exist, it will be replaced)
	 * @return
	 */
	public function gimp_palette_export_php(dirname:String, string:String):Void;

	/**
	 * Deprecated: Use 'gimp-image-remove-vectors' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image to delete the path from
	 *    name : String -> The name of the path to delete.
	 * @return
	 */
	public function gimp_path_delete(image:Image, name:String):Void;

	/**
	 * Create a rectangular brush
	 *   by Seth Burgess <sjburges@@ou.edu>
	 *   1997
	 * @param
	 *    string : String -> Name
	 *    value : Float -> Width
	 *    value : Float -> Height
	 *    value : Float -> Spacing
	 * @return
	 */
// 	public function script_fu_make_brush_rectangular(string:String, value:Float, value:Float, value:Float):Void;

	/**
	 * Returns the list of images currently open.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 * @return
	 *    num-images : Int -> The number of images currently open (num-images >= 0)
	 *    image-ids : Array<Int> -> The list of images currently open
	 */
	public function gimp_image_list():python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * Fill the area specified either by the current selection if there is one, or by a seed fill starting at the specified coordinates.
	 *   by David Gowers
	 *   2006
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    fill_mode : Int -> The type of fill @{ FG-BUCKET-FILL (0), BG-BUCKET-FILL (1), PATTERN-BUCKET-FILL (2) @}
	 *    paint_mode : Int -> The paint application mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 *    opacity : Float -> The opacity of the final bucket fill (0 <= opacity <= 100)
	 *    threshold : Float -> The threshold determines how extensive the seed fill will be. It's value is specified in terms of intensity levels. This parameter is only valid when there is no selection in the specified image. (0 <= threshold <= 255)
	 *    sample_merged : Int -> Use the composite image, not the drawable (TRUE or FALSE)
	 *    fill_transparent : Int -> Whether to consider transparent pixels for filling. If TRUE, transparency is considered as a unique fillable color. (TRUE or FALSE)
	 *    select_criterion : Int -> The criterion used to determine color similarity. SELECT_CRITERION_COMPOSITE is the standard choice. @{ SELECT-CRITERION-COMPOSITE (0), SELECT-CRITERION-R (1), SELECT-CRITERION-G (2), SELECT-CRITERION-B (3), SELECT-CRITERION-H (4), SELECT-CRITERION-S (5), SELECT-CRITERION-V (6) @}
	 *    x : Float -> The x coordinate of this bucket fill's application. This parameter is only valid when there is no selection in the specified image.
	 *    y : Float -> The y coordinate of this bucket fill's application. This parameter is only valid when there is no selection in the specified image.
	 * @return
	 */
	public function gimp_edit_bucket_fill_full(drawable:Drawable, fill_mode:Int, paint_mode:Int, opacity:Float, threshold:Float, sample_merged:Int, fill_transparent:Int, select_criterion:Int, x:Float, y:Float):Void;

	/**
	 * Get point at a specified distance along the stroke.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 *    dist : Float -> The given distance.
	 *    precision : Float -> The precision used for the approximation
	 * @return
	 *    x-point : Float -> The x position of the point.
	 *    y-point : Float -> The y position of the point.
	 *    slope : Float -> The slope (dy / dx) at the specified point.
	 *    valid : Int -> Indicator for the validity of the returned data. (TRUE or FALSE)
	 */
	public function gimp_vectors_stroke_get_point_at_dist(vectors:Vectors, stroke_id:Int, dist:Float, precision:Float):python.Tuple.Tuple4<Float,Float,Float,Int>;

	/**
	 * Sets the specified image's active channel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    active_channel : Channel -> The new image active channel
	 * @return
	 */
	public function gimp_image_set_active_channel(image:Image, active_channel:Channel):Void;

	/**
	 * Add a guide at the orientation and position specified (in pixels)
	 *   by Alan Horkan
	 *   2004-04-02
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    option : Int -> Direction
	 *    value : Float -> Position
	 * @return
	 */
// 	public function script_fu_guide_new(image:Image, drawable:Drawable, option:Int, value:Float):Void;

	/**
	 * Look up a parasite in an image
	 *   by Jay Cox
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    name : String -> The name of the parasite to find
	 * @return
	 *    parasite : Parasite -> The found parasite
	 */
	public function gimp_image_get_parasite(image:Image, name:String):Parasite;

	/**
	 * Antialias using the Scale3X edge-extrapolation algorithm
	 *   by Adam D. Moss <adam@@gimp.org>
	 *   2005
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_antialias(image:Image, drawable:Drawable):Void;

	/**
	 * Paint in the current brush with varying pressure. Paint application is time-dependent.
	 *   by Andy Thomas
	 *   1999
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_airbrush_default(drawable:Drawable, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * Sets the left endpoint color of the specified segment
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    segment : Int -> The index of the segment within the gradient (segment >= 0)
	 *    color : Color -> The color to set
	 *    opacity : Float -> The opacity to set for the endpoint (0 <= opacity <= 100)
	 * @return
	 */
	public function gimp_gradient_segment_set_left_color(name:String, segment:Int, color:Color, opacity:Float):Void;

	/**
	 * Heal from the source to the dest drawable using the current brush
	 *   by Kevin Sookocheff
	 *   2006
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    src_drawable : Drawable -> The source drawable
	 *    src_x : Float -> The x coordinate in the source image
	 *    src_y : Float -> The y coordinate in the source image
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_heal(drawable:Drawable, src_drawable:Drawable, src_x:Float, src_y:Float, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * Delete a item.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    item : Item -> The item to delete
	 * @return
	 */
	public function gimp_item_delete(item:Item):Void;

	/**
	 * Get a thumbnail of a drawable.
	 *   by Andy Thomas
	 *   1999
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    width : Int -> The requested thumbnail width (1 <= width <= 1024)
	 *    height : Int -> The requested thumbnail height (1 <= height <= 1024)
	 * @return
	 *    actual-width : Int -> The previews width
	 *    actual-height : Int -> The previews height
	 *    bpp : Int -> The previews bpp
	 *    thumbnail-data-count : Int -> The number of bytes in thumbnail data (thumbnail-data-count >= 0)
	 *    thumbnail-data : Array<Int> -> The thumbnail data
	 */
	public function gimp_drawable_thumbnail(drawable:Drawable, width:Int, height:Int):Dynamic;

	/**
	 * Create an image filled with a 3D Truchet pattern
	 *   by Adrian Likins <aklikins@@eos.ncsu.edu>
	 *   1997
	 * @param
	 *    value : Float -> Block size
	 *    value : Float -> Thickness
	 *    color : Color -> Background colour
	 *    color : Color -> Start blend
	 *    color : Color -> End blend
	 *    toggle : Int -> Supersample
	 *    value : Float -> Number of X tiles
	 *    value : Float -> Number of Y tiles
	 * @return
	 */
// 	public function script_fu_3dtruchet(value:Float, value:Float, color:Color, color:Color, color:Color, toggle:Int, value:Float, value:Float):Void;

	/**
	 * Shrink the image's selection
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    steps : Int -> Steps of shrink (in pixels) (steps >= 0)
	 * @return
	 */
	public function gimp_selection_shrink(image:Image, steps:Int):Void;

	/**
	 * Extract the foreground of a drawable using a given trimap.
	 *   by Gerald Friedland <fland@@inf.fu-berlin.de>, Kristian Jantz <jantz@@inf.fu-berlin.de>, Sven Neumann <sven@@gimp.org>
	 *   2005
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    mode : Int -> The algorithm to use @{ FOREGROUND-EXTRACT-SIOX (0) @}
	 *    mask : Drawable -> Tri-Map
	 * @return
	 */
	public function gimp_drawable_foreground_extract(drawable:Drawable, mode:Int, mask:Drawable):Void;

	/**
	 * Alter colors by mixing RGB Channels
	 *   by Martin Guldahl <mguldahl@@xmission.com>
	 *   2002
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    monochrome : Int -> Monochrome @{ TRUE, FALSE @}
	 *    rr_gain : Float -> Set the red gain for the red channel
	 *    rg_gain : Float -> Set the green gain for the red channel
	 *    rb_gain : Float -> Set the blue gain for the red channel
	 *    gr_gain : Float -> Set the red gain for the green channel
	 *    gg_gain : Float -> Set the green gain for the green channel
	 *    gb_gain : Float -> Set the blue gain for the green channel
	 *    br_gain : Float -> Set the red gain for the blue channel
	 *    bg_gain : Float -> Set the green gain for the blue channel
	 *    bb_gain : Float -> Set the blue gain for the blue channel
	 * @return
	 */
// 	public function plug_in_colors_channel_mixer(image:Image, drawable:Drawable, monochrome:Int, rr_gain:Float, rg_gain:Float, rb_gain:Float, gr_gain:Float, gg_gain:Float, gb_gain:Float, br_gain:Float, bg_gain:Float, bb_gain:Float):Void;

	/**
	 * Get information about hinting in the specified text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 * @return
	 *    style : Int -> The hint style used for font outlines @{ TEXT-HINT-STYLE-NONE (0), TEXT-HINT-STYLE-SLIGHT (1), TEXT-HINT-STYLE-MEDIUM (2), TEXT-HINT-STYLE-FULL (3) @}
	 */
	public function gimp_text_layer_get_hint_style(layer:Layer):Int;

	/**
	 * Freeze the image's undo stack.
	 *   by Adam D. Moss
	 *   1999
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    frozen : Int -> TRUE if the image undo has been frozen (TRUE or FALSE)
	 */
	public function gimp_image_undo_freeze(image:Image):Int;

	/**
	 * Refreshes current palettes. This function always succeeds.
	 *   by Adrian Likins <adrian@@gimp.org>
	 *   1998
	 * @param
	 * @return
	 */
	public function gimp_palettes_refresh():Void;

	/**
	 * Duplicate the specified image
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    new-image : Image -> The new, duplicated image
	 */
	public function gimp_image_duplicate(image:Image):Image;

	/**
	 * Get the edit mask setting of the specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 * @return
	 *    edit-mask : Int -> The layer's edit mask setting (TRUE or FALSE)
	 */
	public function gimp_layer_get_edit_mask(layer:Layer):Int;

	/**
	 * Returns the list of channels contained in the specified image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    num-channels : Int -> The number of channels contained in the image (num-channels >= 0)
	 *    channel-ids : Array<Int> -> The list of channels contained in the image
	 */
	public function gimp_image_get_channels(image:Image):python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * Sort the colors in a palette
	 *   by Joao S. O. Bueno Calligaris, Carol Spears
	 *   2006
	 * @param
	 *    palette : String -> Palette
	 *    model : String -> Color model
	 *    channel : String -> Channel to sort
	 *    ascending : Int -> Ascending
	 * @return
	 */
	public function python_fu_palette_sort(palette:String, model:String, channel:String, ascending:Int):Void;

	/**
	 * Saves files in the GIMP brush file format
	 *   by Tim Newsome, Jens Lautenbacher, Sven Neumann
	 *   1997-2000
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    spacing : Int -> Spacing of the brush
	 *    description : String -> Short description of the brush
	 * @return
	 */
	public function file_gbr_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, spacing:Int, description:String):Void;

	/**
	 * Distress the selection
	 *   by Chris Gutteridge
	 *   23rd April 1998
	 * @param
	 *    image : Image -> The image
	 *    drawable : Drawable -> The layer
	 *    value : Float -> Threshold (bigger 1<-->254 smaller)
	 *    value : Float -> Spread
	 *    value : Float -> Granularity (1 is low)
	 *    value : Float -> Smooth
	 *    toggle : Int -> Smooth horizontally
	 *    toggle : Int -> Smooth vertically
	 * @return
	 */
// 	public function script_fu_distress_selection(image:Image, drawable:Drawable, value:Float, value:Float, value:Float, value:Float, toggle:Int, toggle:Int):Void;

	/**
	 * Alters edges to make the image seamlessly tileable
	 *   by Tim Rowley
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_make_seamless(image:Image, drawable:Drawable):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-perspective' instead.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    interpolation : Int -> Whether to use interpolation (TRUE or FALSE)
	 *    x0 : Float -> The new x coordinate of upper-left corner of original bounding box
	 *    y0 : Float -> The new y coordinate of upper-left corner of original bounding box
	 *    x1 : Float -> The new x coordinate of upper-right corner of original bounding box
	 *    y1 : Float -> The new y coordinate of upper-right corner of original bounding box
	 *    x2 : Float -> The new x coordinate of lower-left corner of original bounding box
	 *    y2 : Float -> The new y coordinate of lower-left corner of original bounding box
	 *    x3 : Float -> The new x coordinate of lower-right corner of original bounding box
	 *    y3 : Float -> The new y coordinate of lower-right corner of original bounding box
	 * @return
	 *    drawable : Drawable -> The newly mapped drawable
	 */
	public function gimp_perspective(drawable:Drawable, interpolation:Int, x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Drawable;

	/**
	 * Updates the progress bar for the current plug-in.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    percentage : Float -> Percentage of progress completed which must be between 0.0 and 1.0
	 * @return
	 */
	public function gimp_progress_update(percentage:Float):Void;

	/**
	 * Set the specified palette as the active palette.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The name of the palette
	 * @return
	 */
	public function gimp_context_set_palette(name:String):Void;

	/**
	 * Displace pixels in a ripple pattern
	 *   by Brian Degenhardt <bdegenha@@ucsd.edu>
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    period : Int -> Period: number of pixels for one wave to complete
	 *    amplitude : Int -> Amplitude: maximum displacement of wave
	 *    orientation : Int -> Orientation @{ ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) @}
	 *    edges : Int -> Edges @{ SMEAR (0), WRAP (1), BLANK (2) @}
	 *    waveform : Int -> Waveform @{ SAWTOOTH (0), SINE (1) @}
	 *    antialias : Int -> Antialias @{ TRUE, FALSE @}
	 *    tile : Int -> Tileable @{ TRUE, FALSE @}
	 * @return
	 */
// 	public function plug_in_ripple(image:Image, drawable:Drawable, period:Int, amplitude:Int, orientation:Int, edges:Int, waveform:Int, antialias:Int, tile:Int):Void;

	/**
	 * Transform image with the Mandelbrot Fractal
	 *   by Hirotsuna Mizuno <s1041150@@u-aizu.ac.jp>
	 *   v0.4 test version (Dec. 25 1997)
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    xmin : Float -> xmin fractal image delimiter
	 *    xmax : Float -> xmax fractal image delimiter
	 *    ymin : Float -> ymin fractal image delimiter
	 *    ymax : Float -> ymax fractal image delimiter
	 *    depth : Int -> Trace depth
	 *    outside_type : Int -> Outside type @{ WRAP (0), TRANS (1), BLACK (2), WHITE (3) @}
	 * @return
	 */
// 	public function plug_in_fractal_trace(image:Image, drawable:Drawable, xmin:Float, xmax:Float, ymin:Float, ymax:Float, depth:Int, outside_type:Int):Void;

	/**
	 * Retrieves the left endpoint position of the specified segment
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    segment : Int -> The index of the segment within the gradient (segment >= 0)
	 * @return
	 *    pos : Float -> The return position
	 */
	public function gimp_gradient_segment_get_left_pos(name:String, segment:Int):Float;

	/**
	 * Deprecated: Use 'gimp-image-select-contiguous-color' instead.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    x : Float -> x coordinate of initial seed fill point: (image coordinates)
	 *    y : Float -> y coordinate of initial seed fill point: (image coordinates)
	 *    threshold : Int -> Threshold in intensity levels (0 <= threshold <= 255)
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    antialias : Int -> Antialiasing (TRUE or FALSE)
	 *    feather : Int -> Feather option for selections (TRUE or FALSE)
	 *    feather_radius : Float -> Radius for feather operation (feather-radius >= 0)
	 *    sample_merged : Int -> Use the composite image, not the drawable (TRUE or FALSE)
	 * @return
	 */
	public function gimp_fuzzy_select(drawable:Drawable, x:Float, y:Float, threshold:Int, operation:Int, antialias:Int, feather:Int, feather_radius:Float, sample_merged:Int):Void;

	/**
	 * Create a logo resembling chalk scribbled on a blackboard
	 *   by Manish Singh <msingh@@uclink4.berkeley.edu>
	 *   October 1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Background colour
	 *    color : Color -> Chalk colour
	 * @return
	 */
// 	public function script_fu_chalk_logo(string:String, value:Float, font:String, color:Color, color:Color):Void;

	/**
	 * Get information about a Fli movie
	 *   by Jens Ch. Restemeier
	 *   1997
	 * @param
	 *    filename : String -> The name of the file to get info
	 * @return
	 *    width : Int -> Width of one frame
	 *    height : Int -> Height of one frame
	 *    frames : Int -> Number of Frames
	 */
	public function file_fli_info(filename:String):python.Tuple.Tuple3<Int,Int,Int>;

	/**
	 * Fill the drawable with the specified fill mode.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    fill_type : Int -> The type of fill @{ FOREGROUND-FILL (0), BACKGROUND-FILL (1), WHITE-FILL (2), TRANSPARENT-FILL (3), PATTERN-FILL (4), NO-FILL (5) @}
	 * @return
	 */
	public function gimp_drawable_fill(drawable:Drawable, fill_type:Int):Void;

	/**
	 * Sets the middle point position of the specified segment
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    segment : Int -> The index of the segment within the gradient (segment >= 0)
	 *    pos : Float -> The position to set the guidepoint to (0 <= pos <= 1)
	 * @return
	 *    final-pos : Float -> The return position
	 */
	public function gimp_gradient_segment_set_middle_pos(name:String, segment:Int, pos:Float):Float;

	/**
	 * Get the sample threshold setting as an integer value.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 * @return
	 *    sample-threshold : Int -> The sample threshold setting (0 <= sample-threshold <= 255)
	 */
	public function gimp_context_get_sample_threshold_int():Int;

	/**
	 * Shear the specified item about its center by the specified magnitude.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    item : Item -> The affected item
	 *    shear_type : Int -> Type of shear @{ ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) @}
	 *    magnitude : Float -> The magnitude of the shear
	 * @return
	 *    item : Item -> The sheared item
	 */
	public function gimp_item_transform_shear(item:Item, shear_type:Int, magnitude:Float):Item;

	/**
	 * Get the interpolation type.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 * @return
	 *    interpolation : Int -> The interpolation type @{ INTERPOLATION-NONE (0), INTERPOLATION-LINEAR (1), INTERPOLATION-CUBIC (2), INTERPOLATION-LANCZOS (3) @}
	 */
	public function gimp_context_get_interpolation():Int;

	/**
	 * Round the corners of the current selection
	 *   by Alan Horkan, Sven Neumann
	 *   2004/06/07
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Radius (%)
	 *    toggle : Int -> Concave
	 * @return
	 */
// 	public function script_fu_selection_rounded_rectangle(image:Image, drawable:Drawable, value:Float, toggle:Int):Void;

	/**
	 * Deprecated: There is no replacement for this procedure.
	 *   by 
	 *   
	 * @param
	 *    floating_sel : Layer -> The floating selection
	 *    undo : Int -> (TRUE or FALSE)
	 * @return
	 */
	public function gimp_floating_sel_relax(floating_sel:Layer, undo:Int):Void;

	/**
	 * Find a channel with a given name in an image.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 *    image : Image -> The image
	 *    name : String -> The name of the channel to find
	 * @return
	 *    channel : Channel -> The channel with the specified name
	 */
	public function gimp_image_get_channel_by_name(image:Image, name:String):Channel;

	/**
	 * Set the font size.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    font_size : Float -> The font size (0 <= font-size <= 8192)
	 *    unit : Int -> The unit to use for the font size
	 * @return
	 */
	public function gimp_text_layer_set_font_size(layer:Layer, font_size:Float, unit:Int):Void;

	/**
	 * Create an embossing effect using a bump map
	 *   by Federico Mena Quintero, Jens Lautenbacher & Sven Neumann
	 *   April 2000, 3.0-pre1-ac2
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    bumpmap : Drawable -> Bump map drawable
	 *    azimuth : Float -> Azimuth
	 *    elevation : Float -> Elevation
	 *    depth : Int -> Depth
	 *    xofs : Int -> X offset
	 *    yofs : Int -> Y offset
	 *    waterlevel : Int -> Level that full transparency should represent
	 *    ambient : Int -> Ambient lighting factor
	 *    compensate : Int -> Compensate for darkening @{ TRUE, FALSE @}
	 *    invert : Int -> Invert bumpmap @{ TRUE, FALSE @}
	 *    type : Int -> Type of map @{ LINEAR (0), SPHERICAL (1), SINUSOIDAL (2) @}
	 * @return
	 */
// 	public function plug_in_bump_map(image:Image, drawable:Drawable, bumpmap:Drawable, azimuth:Float, elevation:Float, depth:Int, xofs:Int, yofs:Int, waterlevel:Int, ambient:Int, compensate:Int, invert:Int, type:Int):Void;

	/**
	 * Invokes the Gimp font selection.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2003
	 * @param
	 *    font_callback : String -> The callback PDB proc to call when font selection is made
	 *    popup_title : String -> Title of the font selection dialog
	 *    initial_font : String -> The name of the font to set as the first selected
	 * @return
	 */
	public function gimp_fonts_popup(font_callback:String, popup_title:String, initial_font:String):Void;

	/**
	 * Retrieve information about an image's color profile
	 *   by Sven Neumann
	 *   2006, 2007
	 * @param
	 *    image : Image -> Input image
	 * @return
	 *    profile-name : String -> Name
	 *    profile-desc : String -> Description
	 *    profile-info : String -> Info
	 */
// 	public function plug_in_icc_profile_info(image:Image):python.Tuple.Tuple3<String,String,String>;

	/**
	 * Saves files in SGI image file format
	 *   by Michael Sweet <mike@@easysw.com>
	 *   1.1.1 - 17 May 1998
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    compression : Int -> Compression level (0 = none, 1 = RLE, 2 = ARLE)
	 * @return
	 */
	public function file_sgi_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, compression:Int):Void;

	/**
	 * Get the lock alpha channel setting of the specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 * @return
	 *    lock-alpha : Int -> The layer's lock alpha channel setting (TRUE or FALSE)
	 */
	public function gimp_layer_get_lock_alpha(layer:Layer):Int;

	/**
	 * Paste named buffer to a new image.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 *    buffer_name : String -> The name of the buffer to paste
	 * @return
	 *    image : Image -> The new image
	 */
	public function gimp_edit_named_paste_as_new(buffer_name:String):Image;

	/**
	 * Set the radius of a generated brush.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 *    radius_in : Float -> The desired brush radius
	 * @return
	 *    radius-out : Float -> The brush radius actually assigned
	 */
	public function gimp_brush_set_radius(name:String, radius_in:Float):Float;

	/**
	 * translate the given stroke.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 *    off_x : Int -> Offset in x direction
	 *    off_y : Int -> Offset in y direction
	 * @return
	 */
	public function gimp_vectors_stroke_translate(vectors:Vectors, stroke_id:Int, off_x:Int, off_y:Int):Void;

	/**
	 * Saves file in the .xcf file format
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    dummy_param : Int -> Dummy parameter
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Active drawable of input image
	 *    filename : String -> The name of the file to save the image in, in the on-disk character set and encoding
	 *    raw_filename : String -> The basename of the file, in UTF-8
	 * @return
	 */
	public function gimp_xcf_save(dummy_param:Int, image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Deprecated: Use 'gimp-image-select-item' instead.
	 *   by 
	 *   
	 * @param
	 *    layer : Layer -> Layer with alpha
	 * @return
	 */
	public function gimp_selection_layer_alpha(layer:Layer):Void;

	/**
	 * Sets the specified palette entry in the specified palette.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The palette name
	 *    entry_num : Int -> The entry to retrieve
	 *    color : Color -> The new color
	 * @return
	 */
	public function gimp_palette_entry_set_color(name:String, entry_num:Int, color:Color):Void;

	/**
	 * Find a vectors with a given name in an image.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 *    image : Image -> The image
	 *    name : String -> The name of the vectors to find
	 * @return
	 *    vectors : Vectors -> The vectors with the specified name
	 */
	public function gimp_image_get_vectors_by_name(image:Image, name:String):Vectors;

	/**
	 * Modify the color balance of the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    transfer_mode : Int -> Transfer mode @{ SHADOWS (0), MIDTONES (1), HIGHLIGHTS (2) @}
	 *    preserve_lum : Int -> Preserve luminosity values at each pixel (TRUE or FALSE)
	 *    cyan_red : Float -> Cyan-Red color balance (-100 <= cyan-red <= 100)
	 *    magenta_green : Float -> Magenta-Green color balance (-100 <= magenta-green <= 100)
	 *    yellow_blue : Float -> Yellow-Blue color balance (-100 <= yellow-blue <= 100)
	 * @return
	 */
	public function gimp_color_balance(drawable:Drawable, transfer_mode:Int, preserve_lum:Int, cyan_red:Float, magenta_green:Float, yellow_blue:Float):Void;

	/**
	 * closes the specified stroke.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 * @return
	 */
	public function gimp_vectors_stroke_close(vectors:Vectors, stroke_id:Int):Void;

	/**
	 * Replace all colors with shades of a specified color
	 *   by Francisco Bustamante
	 *   1.1
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    color : Color -> Color to apply
	 * @return
	 */
// 	public function plug_in_colorify(image:Image, drawable:Drawable, color:Color):Void;

	/**
	 * Create a logo with a crystal/gel effect displacing the image underneath
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    value : Float -> Chrome factor
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    filename : String -> Background image
	 *    filename : String -> Environment map
	 * @return
	 */
// 	public function script_fu_crystal_logo(value:Float, string:String, value:Float, font:String, filename:String, filename:String):Void;

	/**
	 * Set the shape of a generated brush.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 *    shape_in : Int -> The brush shape @{ BRUSH-GENERATED-CIRCLE (0), BRUSH-GENERATED-SQUARE (1), BRUSH-GENERATED-DIAMOND (2) @}
	 * @return
	 *    shape-out : Int -> The brush shape actually assigned @{ BRUSH-GENERATED-CIRCLE (0), BRUSH-GENERATED-SQUARE (1), BRUSH-GENERATED-DIAMOND (2) @}
	 */
	public function gimp_brush_set_shape(name:String, shape_in:Int):Int;

	/**
	 * Create an image filled with an Earth-like map pattern
	 *   by Chris Gutteridge: cjg@@ecs.soton.ac.uk
	 *   Chris Gutteridge / ECS @@ University of Southampton, England
	 * @param
	 *    value : Float -> Image size
	 *    value : Float -> Granularity
	 *    gradient : String -> Gradient
	 *    toggle : Int -> Gradient reverse
	 *    option : Int -> Behaviour
	 * @return
	 */
// 	public function script_fu_render_map(value:Float, value:Float, gradient:String, toggle:Int, option:Int):Void;

	/**
	 * Float the selection from the specified drawable with initial offsets as specified.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable from which to float selection
	 *    offx : Int -> x offset for translation
	 *    offy : Int -> y offset for translation
	 * @return
	 *    layer : Layer -> The floated layer
	 */
	public function gimp_selection_float(drawable:Drawable, offx:Int, offy:Int):Layer;

	/**
	 * loads images from the Paint Shop Pro PSP file format
	 *   by Tor Lillqvist
	 *   1999
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_psp_load(filename:String, raw_filename:String):Image;

	/**
	 * Set the transform direction.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    transform_direction : Int -> The transform direction @{ TRANSFORM-FORWARD (0), TRANSFORM-BACKWARD (1) @}
	 * @return
	 */
	public function gimp_context_set_transform_direction(transform_direction:Int):Void;

	/**
	 * loads files of the dicom file format
	 *   by Dov Grobgeld
	 *   2003
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_dicom_load(filename:String, raw_filename:String):Image;

	/**
	 * Close the font selection dialog.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2003
	 * @param
	 *    font_callback : String -> The name of the callback registered for this pop-up
	 * @return
	 */
	public function gimp_fonts_close_popup(font_callback:String):Void;

	/**
	 * save file in the FITS file format
	 *   by Peter Kirchgessner
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 * @return
	 */
	public function file_fits_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Set the name of the specified item.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    item : Item -> The item
	 *    name : String -> The new item name
	 * @return
	 */
	public function gimp_item_set_name(item:Item, name:String):Void;

	/**
	 * Gets all colors from the specified palette.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2006
	 * @param
	 *    name : String -> The palette name
	 * @return
	 *    num-colors : Int -> Length of the colors array (num-colors >= 0)
	 *    colors : Array<Color> -> The colors in the palette
	 */
	public function gimp_palette_get_colors(name:String):python.Tuple.Tuple2<Int,Array<Color>>;

	/**
	 * Loads files in the PNM file format
	 *   by Erik Nygren
	 *   1996
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_pnm_load(filename:String, raw_filename:String):Image;

	/**
	 * Combine two images using depth maps (z-buffers)
	 *   by Sean Cier
	 *   August 1998
	 * @param
	 *    image : Image -> Input image (unused)
	 *    result : Drawable -> Result
	 *    source1 : Drawable -> Source 1
	 *    source2 : Drawable -> Source 2
	 *    depthMap1 : Drawable -> Depth map 1
	 *    depthMap2 : Drawable -> Depth map 2
	 *    overlap : Float -> Overlap
	 *    offset : Float -> Depth relative offset
	 *    scale1 : Float -> Depth relative scale 1
	 *    scale2 : Float -> Depth relative scale 2
	 * @return
	 */
// 	public function plug_in_depth_merge(image:Image, result:Drawable, source1:Drawable, source2:Drawable, depthMap1:Drawable, depthMap2:Drawable, overlap:Float, offset:Float, scale1:Float, scale2:Float):Void;

	/**
	 * Find the bounding box of the current selection in relation to the specified drawable.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 *    non-empty : Int -> TRUE if the returned area is not empty (TRUE or FALSE)
	 *    x : Int -> x coordinate of the upper left corner of the intersection
	 *    y : Int -> y coordinate of the upper left corner of the intersection
	 *    width : Int -> width of the intersection
	 *    height : Int -> height of the intersection
	 */
	public function gimp_drawable_mask_intersect(drawable:Drawable):Dynamic;

	/**
	 * Print the image
	 *   by Bill Skaggs, Sven Neumann, Stefan Röllin
	 *   2006 - 2008
	 * @param
	 *    image : Image -> Image to print
	 * @return
	 */
	public function file_print_gtk(image:Image):Void;

	/**
	 * Flip the specified item around a given line.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    item : Item -> The affected item
	 *    x0 : Float -> horz. coord. of one end of axis
	 *    y0 : Float -> vert. coord. of one end of axis
	 *    x1 : Float -> horz. coord. of other end of axis
	 *    y1 : Float -> vert. coord. of other end of axis
	 * @return
	 *    item : Item -> The flipped item
	 */
	public function gimp_item_transform_flip(item:Item, x0:Float, y0:Float, x1:Float, y1:Float):Item;

	/**
	 * Checks if the image has unsaved changes.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    dirty : Int -> TRUE if the image has unsaved changes. (TRUE or FALSE)
	 */
	public function gimp_image_is_dirty(image:Image):Int;

	/**
	 * Add an alpha channel to the layer if it doesn't already have one.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 * @return
	 */
	public function gimp_layer_add_alpha(layer:Layer):Void;

	/**
	 * This procedure calculates the modified values for one iterationstep for the call of plug_in_curve_bend
	 *   by Wolfgang Hofer (hof@@hotbot.com)
	 *   v1.3.18 (2003/08/26)
	 * @param
	 *    total_steps : Int -> total number of steps (# of layers-1 to apply the related plug-in)
	 *    current_step : Float -> current (for linear iterations this is the layerstack position, otherwise some value inbetween)
	 *    len_struct : Int -> length of stored data structure with id is equal to the plug_in  proc_name
	 * @return
	 */
// 	public function plug_in_curve_bend_Iterator(total_steps:Int, current_step:Float, len_struct:Int):Void;

	/**
	 * Retrieve a complete listing of the available patterns.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    filter : String -> An optional regular expression used to filter the list
	 * @return
	 *    num-patterns : Int -> The number of patterns in the pattern list (num-patterns >= 0)
	 *    pattern-list : Array<String> -> The list of pattern names
	 */
	public function gimp_patterns_get_list(filter:String):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Tests if brush can be edited
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 * @return
	 *    editable : Int -> TRUE if the brush can be edited (TRUE or FALSE)
	 */
	public function gimp_brush_is_editable(name:String):Int;

	/**
	 * Get the hardness of a generated brush.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 * @return
	 *    hardness : Float -> The hardness of the brush.
	 */
	public function gimp_brush_get_hardness(name:String):Float;

	/**
	 * Find the bounding box of the current selection in relation to the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 *    non-empty : Int -> TRUE if there is a selection (TRUE or FALSE)
	 *    x1 : Int -> x coordinate of the upper left corner of selection bounds
	 *    y1 : Int -> y coordinate of the upper left corner of selection bounds
	 *    x2 : Int -> x coordinate of the lower right corner of selection bounds
	 *    y2 : Int -> y coordinate of the lower right corner of selection bounds
	 */
	public function gimp_drawable_mask_bounds(drawable:Drawable):Dynamic;

	/**
	 * Batch processes multiple images
	 *   by David Hodson <hodsond@@acm.org>
	 *   23 Jan 2008 (Version 1.1.8)
	 * @param
	 * @return
	 */
	public function extension_dbp():Void;

	/**
	 * Create a simple, beveled button graphic for webpages
	 *   by Federico Mena Quintero
	 *   June 1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Upper-left colour
	 *    color : Color -> Lower-right colour
	 *    color : Color -> Text colour
	 *    value : Float -> Padding
	 *    value : Float -> Bevel width
	 *    toggle : Int -> Pressed
	 * @return
	 */
// 	public function script_fu_button00(string:String, value:Float, font:String, color:Color, color:Color, color:Color, value:Float, value:Float, toggle:Int):Void;

	/**
	 * Distort an image by whirling and pinching
	 *   by Federico Mena Quintero and Scott Goehring
	 *   May 1997, 2.09
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    whirl : Float -> Whirl angle (degrees)
	 *    pinch : Float -> Pinch amount
	 *    radius : Float -> Radius (1.0 is the largest circle that fits in the image, and 2.0 goes all the way to the corners)
	 * @return
	 */
// 	public function plug_in_whirl_pinch(image:Image, drawable:Drawable, whirl:Float, pinch:Float, radius:Float):Void;

	/**
	 * Deprecated: Use 'gimp-brush-get-pixels' instead.
	 *   by 
	 *   
	 * @param
	 *    name : String -> The brush name (\\ means current active brush)
	 * @return
	 *    actual-name : String -> The brush name
	 *    opacity : Float -> The brush opacity (0 <= opacity <= 100)
	 *    spacing : Int -> The brush spacing (0 <= spacing <= 1000)
	 *    paint-mode : Int -> The paint mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 *    width : Int -> The brush width
	 *    height : Int -> The brush height
	 *    length : Int -> Length of brush mask data (length >= 0)
	 *    mask-data : Array<Int> -> The brush mask data
	 */
	public function gimp_brushes_get_brush_data(name:String):Dynamic;

	/**
	 * Convert a selection to a pattern
	 *   by Cameron Gregory <cameron@@bloke.com>
	 *   09/02/2003
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    string : String -> Pattern name
	 *    string : String -> File name
	 * @return
	 */
// 	public function script_fu_selection_to_pattern(image:Image, drawable:Drawable, string:String, string:String):Void;

	/**
	 * rotates the given stroke.
	 *   by João S. O. Bueno
	 *   2006
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 *    center_x : Float -> X coordinate of the rotation center
	 *    center_y : Float -> Y coordinate of the rotation center
	 *    angle : Float -> angle to rotate about
	 * @return
	 */
	public function gimp_vectors_stroke_rotate(vectors:Vectors, stroke_id:Int, center_x:Float, center_y:Float, angle:Float):Void;

	/**
	 * Blend the colors of the segment range.
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    start_segment : Int -> The index of the first segment to operate on (start-segment >= 0)
	 *    end_segment : Int -> The index of the last segment to operate on. If negative, the selection will extend to the end of the string.
	 * @return
	 */
	public function gimp_gradient_segment_range_blend_colors(name:String, start_segment:Int, end_segment:Int):Void;

	/**
	 * Randomly slide some pixels downward (similar to melting)
	 *   by Miles O'Neal  <meo@@rru.com>
	 *   1995-1998
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    rndm_pct : Float -> Randomization percentage (1.0 - 100.0)
	 *    rndm_rcount : Float -> Repeat count (1.0 - 100.0)
	 *    randomize : Int -> Use random seed @{ TRUE, FALSE @}
	 *    seed : Int -> Seed value (used only if randomize is FALSE)
	 * @return
	 */
// 	public function plug_in_randomize_slur(image:Image, drawable:Drawable, rndm_pct:Float, rndm_rcount:Float, randomize:Int, seed:Int):Void;

	/**
	 * Convert a specified color to transparency
	 *   by Seth Burgess
	 *   7th Aug 1999
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    color : Color -> Color to remove
	 * @return
	 */
// 	public function plug_in_colortoalpha(image:Image, drawable:Drawable, color:Color):Void;

	/**
	 * Generate complex sinusoidal textures
	 *   by Xavier Bouchoux
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    xscale : Float -> Scale value for x axis
	 *    yscale : Float -> Scale value dor y axis
	 *    complex : Float -> Complexity factor
	 *    seed : Int -> Seed value for random number generator
	 *    tiling : Int -> If set, the pattern generated will tile
	 *    perturb : Int -> If set, the pattern is a little more distorted...
	 *    colors : Int -> where to take the colors (0= B&W,  1= fg/bg, 2= col1/col2)
	 *    col1 : Color -> fist color (sometimes unused)
	 *    col2 : Color -> second color (sometimes unused)
	 *    alpha1 : Float -> alpha for the first color (used if the drawable has an alpha chanel)
	 *    alpha2 : Float -> alpha for the second color (used if the drawable has an alpha chanel)
	 *    blend : Int -> 0= linear, 1= bilinear, 2= sinusoidal
	 *    blend_power : Float -> Power used to strech the blend
	 * @return
	 */
// 	public function plug_in_sinus(image:Image, drawable:Drawable, xscale:Float, yscale:Float, complex:Float, seed:Int, tiling:Int, perturb:Int, colors:Int, col1:Color, col2:Color, alpha1:Float, alpha2:Float, blend:Int, blend_power:Float):Void;

	/**
	 * Generates a thumbnail of an SVG image
	 *   by Dom Lachowicz, Sven Neumann
	 *   2.5.0
	 * @param
	 *    filename : String -> The name of the file to load
	 *    thumb_size : Int -> Preferred thumbnail size
	 * @return
	 *    image : Image -> Thumbnail image
	 *    image-width : Int -> Width of full-sized image
	 *    image-height : Int -> Height of full-sized image
	 */
	public function file_svg_load_thumb(filename:String, thumb_size:Int):python.Tuple.Tuple3<Image,Int,Int>;

	/**
	 * Add a vertical guide to an image.
	 *   by Adam D. Moss
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    xposition : Int -> The guide's x-offset from left of image (xposition >= 0)
	 * @return
	 *    guide : Int -> The new guide
	 */
	public function gimp_image_add_vguide(image:Image, xposition:Int):Int;

	/**
	 * Deprecated: Use 'gimp-item-transform-2d' instead.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    interpolation : Int -> Whether to use interpolation (TRUE or FALSE)
	 *    source_x : Float -> X coordinate of the transformation center
	 *    source_y : Float -> Y coordinate of the transformation center
	 *    scale_x : Float -> Amount to scale in x direction
	 *    scale_y : Float -> Amount to scale in y direction
	 *    angle : Float -> The angle of rotation (radians)
	 *    dest_x : Float -> X coordinate of where the centre goes
	 *    dest_y : Float -> Y coordinate of where the centre goes
	 * @return
	 *    drawable : Drawable -> The transformed drawable
	 */
	public function gimp_transform_2d(drawable:Drawable, interpolation:Int, source_x:Float, source_y:Float, scale_x:Float, scale_y:Float, angle:Float, dest_x:Float, dest_y:Float):Drawable;

	/**
	 * Loads an image file as layers for an existing image.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2006
	 * @param
	 *    image : Image -> Destination image
	 *    filename : String -> The name of the file to load
	 * @return
	 *    num-layers : Int -> The number of loaded layers (num-layers >= 0)
	 *    layer-ids : Array<Int> -> The list of loaded layers
	 */
	public function gimp_file_load_layers(image:Image, filename:String):python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * Stroke the current selection
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable to stroke to
	 * @return
	 */
	public function gimp_edit_stroke(drawable:Drawable):Void;

	/**
	 * Set the current GIMP foreground color.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 *    foreground : Color -> The foreground color
	 * @return
	 */
	public function gimp_context_set_foreground(foreground:Color):Void;

	/**
	 * Deprecated: There is no replacement for this procedure.
	 *   by 
	 *   
	 * @param
	 *    floating_sel : Layer -> The floating selection
	 *    undo : Int -> (TRUE or FALSE)
	 * @return
	 */
	public function gimp_floating_sel_rigor(floating_sel:Layer, undo:Int):Void;

	/**
	 * Create a simplistic, but cool, chromed logo
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_chrome_logo(string:String, value:Float, font:String, color:Color):Void;

	/**
	 * Apply a gaussian blur
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    radius : Float -> Radius of gaussian blur (in pixels, > 0.0)
	 *    horizontal : Int -> Blur in horizontal direction
	 *    vertical : Int -> Blur in vertical direction
	 * @return
	 */
// 	public function plug_in_gauss_iir(image:Image, drawable:Drawable, radius:Float, horizontal:Int, vertical:Int):Void;

	/**
	 * Duplicates a palette
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The palette name
	 * @return
	 *    copy-name : String -> The name of the palette's copy
	 */
	public function gimp_palette_duplicate(name:String):String;

	/**
	 * Deletes a palette entry from the specified palette.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The palette name
	 *    entry_num : Int -> The index of the added entry
	 * @return
	 */
	public function gimp_palette_delete_entry(name:String, entry_num:Int):Void;

	/**
	 * Create a beveled pattern arrow for webpages
	 *   by Federico Mena Quintero
	 *   July 1997
	 * @param
	 *    value : Float -> Size
	 *    option : Int -> Orientation
	 *    pattern : String -> Pattern
	 * @return
	 */
// 	public function script_fu_beveled_pattern_arrow(value:Float, option:Int, pattern:String):Void;

	/**
	 * Get the font size from a text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 * @return
	 *    font-size : Float -> The font size
	 *    unit : Int -> The unit used for the font size
	 */
	public function gimp_text_layer_get_font_size(layer:Layer):python.Tuple.Tuple2<Float,Int>;

	/**
	 * Create an elliptical selection over the specified image.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    image : Image -> The image
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    x : Float -> x coordinate of upper-left corner of ellipse bounding box
	 *    y : Float -> y coordinate of upper-left corner of ellipse bounding box
	 *    width : Float -> The width of the ellipse (width >= 0)
	 *    height : Float -> The height of the ellipse (height >= 0)
	 * @return
	 */
	public function gimp_image_select_ellipse(image:Image, operation:Int, x:Float, y:Float, width:Float, height:Float):Void;

	/**
	 * Get the base type of the image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    base-type : Int -> The image's base type @{ RGB (0), GRAY (1), INDEXED (2) @}
	 */
	public function gimp_image_base_type(image:Image):Int;

	/**
	 * Loads an image file by invoking the right load handler.
	 *   by Josh MacDonald
	 *   1997
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name as entered by the user
	 * @return
	 *    image : Image -> The output image
	 */
	public function gimp_file_load(filename:String, raw_filename:String):Image;

	/**
	 * Create a logo in the style of a neon sign
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Background colour
	 *    color : Color -> Glow colour
	 *    toggle : Int -> Create shadow
	 * @return
	 */
// 	public function script_fu_neon_logo(string:String, value:Float, font:String, color:Color, color:Color, toggle:Int):Void;

	/**
	 * Get the line indentation of text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer.
	 * @return
	 *    indent : Float -> The indentation value of the first line.
	 */
	public function gimp_text_layer_get_indent(layer:Layer):Float;

	/**
	 * Desaturate the contents of the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 */
	public function gimp_desaturate(drawable:Drawable):Void;

	/**
	 * Adds a bezier stroke with a single moveto to the vectors object.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    x0 : Float -> The x-coordinate of the moveto
	 *    y0 : Float -> The y-coordinate of the moveto
	 * @return
	 *    stroke-id : Int -> The resulting stroke
	 */
	public function gimp_vectors_bezier_stroke_new_moveto(vectors:Vectors, x0:Float, y0:Float):Int;

	/**
	 * Crop the image to the specified extents.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    new_width : Int -> New image width: (0 < new_width <= width) (1 <= new-width <= 262144)
	 *    new_height : Int -> New image height: (0 < new_height <= height) (1 <= new-height <= 262144)
	 *    offx : Int -> X offset: (0 <= offx <= (width - new_width)) (offx >= 0)
	 *    offy : Int -> Y offset: (0 <= offy <= (height - new_height)) (offy >= 0)
	 * @return
	 */
	public function gimp_image_crop(image:Image, new_width:Int, new_height:Int, offx:Int, offy:Int):Void;

	/**
	 * Saves files in the XWD (X Window Dump) format
	 *   by Peter Kirchgessner
	 *   1996
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 * @return
	 */
	public function file_xwd_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Returns whether the drawable is a grayscale type.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 *    is-gray : Int -> TRUE if the drawable is a grayscale type (TRUE or FALSE)
	 */
	public function gimp_drawable_is_gray(drawable:Drawable):Int;

	/**
	 * Saves Gimp pattern file (.PAT)
	 *   by Tim Newsome
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    description : String -> Short description of the pattern
	 * @return
	 */
	public function file_pat_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, description:String):Void;

	/**
	 * Deprecated: Use 'gimp-vectors-stroke-get-point-at-dist' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image the paths belongs to
	 *    distance : Float -> The distance along the path.
	 * @return
	 *    x-point : Int -> The x position of the point.
	 *    y-point : Int -> The y position of the point.
	 *    slope : Float -> The slope (dy / dx) at the specified point.
	 */
	public function gimp_path_get_point_at_dist(image:Image, distance:Float):python.Tuple.Tuple3<Int,Int,Float>;

	/**
	 * Starts a group undo.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    image : Image -> The ID of the image in which to open an undo group
	 * @return
	 */
	public function gimp_image_undo_group_start(image:Image):Void;

	/**
	 * Creates a new gradient
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The requested name of the new gradient
	 * @return
	 *    actual-name : String -> The actual new gradient name
	 */
	public function gimp_gradient_new(name:String):String;

	/**
	 * Merge the visible image layers into one.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    merge_type : Int -> The type of merge @{ EXPAND-AS-NECESSARY (0), CLIP-TO-IMAGE (1), CLIP-TO-BOTTOM-LAYER (2) @}
	 * @return
	 *    layer : Layer -> The resulting layer
	 */
	public function gimp_image_merge_visible_layers(image:Image, merge_type:Int):Layer;

	/**
	 * Enable/disable the use of hinting in a text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    hinting : Int -> Enable/disable the use of hinting on the text (TRUE or FALSE)
	 *    autohint : Int -> Force the use of the autohinter provided through FreeType (TRUE or FALSE)
	 * @return
	 */
	public function gimp_text_layer_set_hinting(layer:Layer, hinting:Int, autohint:Int):Void;

	/**
	 * Bookmark to the user manual
	 *   by Roman Joost <romanofski@@gimp.org>
	 *   2006
	 * @param
	 * @return
	 */
	public function gimp_help_using_fileformats():Void;

	/**
	 * Delete the specified image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_image_delete(image:Image):Void;

	/**
	 * Create a selection by selecting all pixels around specified coordinates with the same (or similar) color to that at the coordinates.
	 *   by David Gowers
	 *   2010
	 * @param
	 *    image : Image -> The affected image
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    drawable : Drawable -> The affected drawable
	 *    x : Float -> x coordinate of initial seed fill point: (image coordinates)
	 *    y : Float -> y coordinate of initial seed fill point: (image coordinates)
	 * @return
	 */
	public function gimp_image_select_contiguous_color(image:Image, operation:Int, drawable:Drawable, x:Float, y:Float):Void;

	/**
	 * Get brush angle in degrees.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 * @return
	 *    angle : Float -> angle in degrees (-180 <= angle <= 180)
	 */
	public function gimp_context_get_brush_angle():Float;

	/**
	 * Set the tattoo state associated with the image.
	 *   by Andy Thomas
	 *   2000
	 * @param
	 *    image : Image -> The image
	 *    tattoo_state : Int -> The new image tattoo state
	 * @return
	 */
	public function gimp_image_set_tattoo_state(image:Image, tattoo_state:Int):Void;

	/**
	 * Bookmark to the GIMP web site
	 *   by Henrik Brix Andersen <brix@@gimp.org>
	 *   2003
	 * @param
	 * @return
	 */
	public function gimp_online_plug_in_web_site():Void;

	/**
	 * Find a channel with a given tattoo in an image.
	 *   by Jay Cox
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    tattoo : Int -> The tattoo of the channel to find
	 * @return
	 *    channel : Channel -> The channel with the specified tattoo
	 */
	public function gimp_image_get_channel_by_tattoo(image:Image, tattoo:Int):Channel;

	/**
	 * Returns whether the item is a drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    drawable : Int -> TRUE if the item is a drawable, FALSE otherwise (TRUE or FALSE)
	 */
	public function gimp_item_is_drawable(item:Item):Int;

	/**
	 * Returns whether the item is a group item.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    group : Int -> TRUE if the item is a group, FALSE otherwise (TRUE or FALSE)
	 */
	public function gimp_item_is_group(item:Item):Int;

	/**
	 * Saves files in PNG file format
	 *   by Michael Sweet <mike@@easysw.com>, Daniel Skarda <0rfelyus@@atrey.karlin.mff.cuni.cz>
	 *   1.3.4 - 03 September 2002
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    interlace : Int -> Use Adam7 interlacing?
	 *    compression : Int -> Deflate Compression factor (0--9)
	 *    bkgd : Int -> Write bKGD chunk?
	 *    gama : Int -> Write gAMA chunk?
	 *    offs : Int -> Write oFFs chunk?
	 *    phys : Int -> Write pHYs chunk?
	 *    time : Int -> Write tIME chunk?
	 *    comment : Int -> Write comment?
	 *    svtrans : Int -> Preserve color of transparent pixels?
	 * @return
	 */
	public function file_png_save2(image:Image, drawable:Drawable, filename:String, raw_filename:String, interlace:Int, compression:Int, bkgd:Int, gama:Int, offs:Int, phys:Int, time:Int, comment:Int, svtrans:Int):Void;

	/**
	 * Returns whether the item is a text layer.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    text-layer : Int -> TRUE if the item is a text layer, FALSE otherwise. (TRUE or FALSE)
	 */
	public function gimp_item_is_text_layer(item:Item):Int;

	/**
	 * Capture a window or desktop image
	 *   by Craig Setera (setera@@home.com)
	 *   v0.70 (07/16/1999)
	 * @param
	 *    root : Int -> Root window @{ TRUE, FALSE @}
	 *    decorations : Int -> Include Window Decorations @{ TRUE, FALSE @}
	 * @return
	 *    image : Image -> Output image
	 */
// 	public function plug_in_winsnap(root:Int, decorations:Int):Image;

	/**
	 * Retrieve information about the specified pattern.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The pattern name.
	 * @return
	 *    width : Int -> The pattern width
	 *    height : Int -> The pattern height
	 *    bpp : Int -> The pattern bpp
	 */
	public function gimp_pattern_get_info(name:String):python.Tuple.Tuple3<Int,Int,Int>;

	/**
	 * loads files compressed with gzip
	 *   by Daniel Risacher
	 *   1995-1997
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_gz_load(filename:String, raw_filename:String):Image;

	/**
	 * Disable the image's undo stack.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    disabled : Int -> TRUE if the image undo has been disabled (TRUE or FALSE)
	 */
	public function gimp_image_undo_disable(image:Image):Int;

	/**
	 * Returns whether the item is a selection.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    selection : Int -> TRUE if the item is a selection, FALSE otherwise (TRUE or FALSE)
	 */
	public function gimp_item_is_selection(item:Item):Int;

	/**
	 * Create a logo in a two-colour, scribbled text style
	 *   by Shuji Narazaki
	 *   1997
	 * @param
	 *    string : String -> Text
	 *    color : Color -> Text colour
	 *    color : Color -> Frame colour
	 *    font : String -> Font
	 *    value : Float -> Font size (pixels)
	 *    value : Float -> Frame size
	 * @return
	 */
// 	public function script_fu_i26_gunya2(string:String, color:Color, color:Color, font:String, value:Float, value:Float):Void;

	/**
	 * Retrieve information about the specified brush.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 * @return
	 *    width : Int -> The brush width
	 *    height : Int -> The brush height
	 *    mask-bpp : Int -> The brush mask bpp
	 *    num-mask-bytes : Int -> Length of brush mask data (num-mask-bytes >= 0)
	 *    mask-bytes : Array<Int> -> The brush mask data
	 *    color-bpp : Int -> The brush color bpp
	 *    num-color-bytes : Int -> Length of brush color data (num-color-bytes >= 0)
	 *    color-bytes : Array<Int> -> The brush color data
	 */
	public function gimp_brush_get_pixels(name:String):Dynamic;

	/**
	 * Add a comic-book effect to the selected region (or alpha) by outlining and filling with a gradient
	 *   by Brian McFee <keebler@@wco.com>
	 *   April 1998
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    gradient : String -> Gradient
	 *    toggle : Int -> Gradient reverse
	 *    value : Float -> Outline size
	 *    color : Color -> Outline colour
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_comic_logo_alpha(image:Image, drawable:Drawable, gradient:String, toggle:Int, value:Float, color:Color, color:Color):Void;

	/**
	 * Sets if the specified image's image component is visible.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    component : Int -> The image component @{ RED-CHANNEL (0), GREEN-CHANNEL (1), BLUE-CHANNEL (2), GRAY-CHANNEL (3), INDEXED-CHANNEL (4), ALPHA-CHANNEL (5) @}
	 *    visible : Int -> Component is visible (TRUE or FALSE)
	 * @return
	 */
	public function gimp_image_set_component_visible(image:Image, component:Int, visible:Int):Void;

	/**
	 * Get the specified layer's mask if it exists.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 * @return
	 *    mask : Channel -> The layer mask
	 */
	public function gimp_layer_get_mask(layer:Layer):Channel;

	/**
	 * Add a frost effect to the selected region (or alpha) with an added drop shadow
	 *   by Spencer Kimball & Ed Mackey
	 *   1997
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Effect size (pixels)
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_frosty_logo_alpha(image:Image, drawable:Drawable, value:Float, color:Color):Void;

	/**
	 * Export the active palette as a Python dictionary (name: colour)
	 *   by Barak Itkin <lightningismyname@@gmail.com>
	 *   May 15th, 2009
	 * @param
	 *    dirname : String -> Folder for the output file
	 *    string : String -> The name of the file to create (if a file with this name already exist, it will be replaced)
	 * @return
	 */
	public function gimp_palette_export_python(dirname:String, string:String):Void;

	/**
	 * Add a lens flare effect
	 *   by Karl-Johan Andersson
	 *   May 2000
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    pos_x : Int -> X-position
	 *    pos_y : Int -> Y-position
	 * @return
	 */
// 	public function plug_in_flarefx(image:Image, drawable:Drawable, pos_x:Int, pos_y:Int):Void;

	/**
	 * Returns the offsets for the drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 *    offset-x : Int -> x offset of drawable
	 *    offset-y : Int -> y offset of drawable
	 */
	public function gimp_drawable_offsets(drawable:Drawable):python.Tuple.Tuple2<Int,Int>;

	/**
	 * Add the specified vectors to the image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    vectors : Vectors -> The vectors
	 *    parent : Vectors -> The parent vectors
	 *    position : Int -> The vectors position
	 * @return
	 */
	public function gimp_image_insert_vectors(image:Image, vectors:Vectors, parent:Vectors, position:Int):Void;

	/**
	 * Loads files of Targa file format
	 *   by Raphael FRANCOIS, Gordon Matzigkeit
	 *   1997,2000,2007
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_tga_load(filename:String, raw_filename:String):Image;

	/**
	 * Queries the gimprc file parser for information on a specified token.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    token : String -> The token to query for
	 * @return
	 *    value : String -> The value associated with the queried token
	 */
	public function gimp_gimprc_query(token:String):String;

	/**
	 * Recolor the image using colors from the active gradient
	 *   by Eiichi Takamori
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_gradmap(image:Image, drawable:Drawable):Void;

	/**
	 * Add a horizontal guide to an image.
	 *   by Adam D. Moss
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    yposition : Int -> The guide's y-offset from top of image (yposition >= 0)
	 * @return
	 *    guide : Int -> The new guide
	 */
	public function gimp_image_add_hguide(image:Image, yposition:Int):Int;

	/**
	 * Deprecated: Use 'gimp-image-select-item' instead.
	 *   by Simon Budig
	 *   2006
	 * @param
	 *    vectors : Vectors -> The vectors object to render to the selection
	 *    operation : Int -> The desired operation with current selection @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    antialias : Int -> Antialias selection. (TRUE or FALSE)
	 *    feather : Int -> Feather selection. (TRUE or FALSE)
	 *    feather_radius_x : Float -> Feather radius x.
	 *    feather_radius_y : Float -> Feather radius y.
	 * @return
	 */
	public function gimp_vectors_to_selection(vectors:Vectors, operation:Int, antialias:Int, feather:Int, feather_radius_x:Float, feather_radius_y:Float):Void;

	/**
	 * Retrieves the number of columns to use to display this palette
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2005
	 * @param
	 *    name : String -> The palette name
	 * @return
	 *    num-columns : Int -> The number of columns used to display this palette
	 */
	public function gimp_palette_get_columns(name:String):Int;

	/**
	 * remove the stroke from a vectors object.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 * @return
	 */
	public function gimp_vectors_remove_stroke(vectors:Vectors, stroke_id:Int):Void;

	/**
	 * Set the sample merged setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 *    sample_merged : Int -> The sample merged setting (TRUE or FALSE)
	 * @return
	 */
	public function gimp_context_set_sample_merged(sample_merged:Int):Void;

	/**
	 * List all parasites.
	 *   by Marc Lehmann
	 *   1999
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    num-parasites : Int -> The number of attached parasites (num-parasites >= 0)
	 *    parasites : Array<String> -> The names of currently attached parasites
	 */
	public function gimp_image_get_parasite_list(image:Image):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Set ink blob aspect ratio.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 *    aspect : Float -> ink blob aspect ratio (1 <= aspect <= 10)
	 * @return
	 */
	public function gimp_context_set_ink_blob_aspect_ratio(aspect:Float):Void;

	/**
	 * Returns information on the intensity histogram for the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    channel : Int -> The channel to modify @{ HISTOGRAM-VALUE (0), HISTOGRAM-RED (1), HISTOGRAM-GREEN (2), HISTOGRAM-BLUE (3), HISTOGRAM-ALPHA (4), HISTOGRAM-RGB (5) @}
	 *    start_range : Int -> Start of the intensity measurement range (0 <= start-range <= 255)
	 *    end_range : Int -> End of the intensity measurement range (0 <= end-range <= 255)
	 * @return
	 *    mean : Float -> Mean intensity value
	 *    std-dev : Float -> Standard deviation of intensity values
	 *    median : Float -> Median intensity value
	 *    pixels : Float -> Alpha-weighted pixel count for entire image
	 *    count : Float -> Alpha-weighted pixel count for range
	 *    percentile : Float -> Percentile that range falls under
	 */
	public function gimp_histogram(drawable:Drawable, channel:Int, start_range:Int, end_range:Int):Dynamic;

	/**
	 * Saves files in the PBM file format
	 *   by Martin K Collins
	 *   2006
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    raw : Int -> Specify non-zero for raw output, zero for ascii output
	 * @return
	 */
	public function file_pbm_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, raw:Int):Void;

	/**
	 * Close the brush selection dialog.
	 *   by Andy Thomas
	 *   1998
	 * @param
	 *    brush_callback : String -> The name of the callback registered for this pop-up
	 * @return
	 */
	public function gimp_brushes_close_popup(brush_callback:String):Void;

	/**
	 * Retrieve a complete listing of the available brushes.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    filter : String -> An optional regular expression used to filter the list
	 * @return
	 *    num-brushes : Int -> The number of brushes in the brush list (num-brushes >= 0)
	 *    brush-list : Array<String> -> The list of brush names
	 */
	public function gimp_brushes_get_list(filter:String):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Set the language of the text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    language : String -> The new language to use for the text layer
	 * @return
	 */
	public function gimp_text_layer_set_language(layer:Layer, language:String):Void;

	/**
	 * Refresh current paint dynamics. This function always succeeds.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 * @return
	 */
	public function gimp_dynamics_refresh():Void;

	/**
	 * Retrieve the currently active font.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 *    name : String -> The name of the active font
	 */
	public function gimp_context_get_font():String;

	/**
	 * Save as colored XHTML
	 *   by Manish Singh and Carol Spears
	 *   2003
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    filename : String -> The name of the file
	 *    raw_filename : String -> The name of the file
	 *    source : String -> Character source
	 *    characters : String -> File to read or characters to use
	 *    font_size : Int -> Font size in pixels
	 *    separate : Int -> Write a separate CSS file
	 * @return
	 */
	public function file_colorxhtml_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, source:String, characters:String, font_size:Int, separate:Int):Void;

	/**
	 * Get the transform resize type.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 * @return
	 *    transform-resize : Int -> The transform resize type @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 */
	public function gimp_context_get_transform_resize():Int;

	/**
	 * Deprecated: Use 'gimp-image-insert-layer' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    layer : Layer -> The layer
	 *    position : Int -> The layer position
	 * @return
	 */
	public function gimp_image_add_layer(image:Image, layer:Layer, position:Int):Void;

	/**
	 * Resize a layer to the image size.
	 *   by Manish Singh
	 *   2003
	 * @param
	 *    layer : Layer -> The layer to resize
	 * @return
	 */
	public function gimp_layer_resize_to_image_size(layer:Layer):Void;

	/**
	 * Set the color of the text in the text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    color : Color -> The color to use for the text
	 * @return
	 */
	public function gimp_text_layer_set_color(layer:Layer, color:Color):Void;

	/**
	 * Add a chipped woodcarving effect to the selected region (or alpha)
	 *   by Adrian Likins <adrian@@gimp.org>
	 *   1997
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Chip amount
	 *    value : Float -> Blur amount
	 *    toggle : Int -> Invert
	 *    toggle : Int -> Drop shadow
	 *    toggle : Int -> Keep bump layer
	 *    toggle : Int -> Fill BG with pattern
	 *    toggle : Int -> Keep background
	 *    pattern : String -> Pattern
	 * @return
	 */
// 	public function script_fu_chip_away_logo_alpha(image:Image, drawable:Drawable, value:Float, value:Float, toggle:Int, toggle:Int, toggle:Int, toggle:Int, toggle:Int, pattern:String):Void;

	/**
	 * Create a layer mask for the specified specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer to which to add the mask
	 *    mask_type : Int -> The type of mask @{ ADD-WHITE-MASK (0), ADD-BLACK-MASK (1), ADD-ALPHA-MASK (2), ADD-ALPHA-TRANSFER-MASK (3), ADD-SELECTION-MASK (4), ADD-COPY-MASK (5), ADD-CHANNEL-MASK (6) @}
	 * @return
	 *    mask : Channel -> The newly created mask
	 */
	public function gimp_layer_create_mask(layer:Layer, mask_type:Int):Channel;

	/**
	 * Change the colourmap of an image to the colours in a specified palette.
	 *   by Kevin Cozens <kcozens@@interlog.com>
	 *   September 29, 2004
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    palette : String -> Palette
	 * @return
	 */
// 	public function script_fu_set_cmap(image:Image, drawable:Drawable, palette:String):Void;

	/**
	 * Sets the current palette in a palette selection dialog.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2002
	 * @param
	 *    palette_callback : String -> The name of the callback registered for this pop-up
	 *    palette_name : String -> The name of the palette to set as selected
	 * @return
	 */
	public function gimp_palettes_set_popup(palette_callback:String, palette_name:String):Void;

	/**
	 * List available procedures in the PDB
	 *   by Thomas Noel
	 *   23th june 1997
	 * @param
	 * @return
	 */
// 	public function plug_in_dbbrowser():Void;

	/**
	 * Sets the specified image's unit.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    unit : Int -> The new image unit
	 * @return
	 */
	public function gimp_image_set_unit(image:Image, unit:Int):Void;

	/**
	 * Specialized direction-dependent edge detection
	 *   by Thorsten Schnier
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    horizontal : Int -> Sobel in horizontal direction
	 *    vertical : Int -> Sobel in vertical direction
	 *    keep_sign : Int -> Keep sign of result (one direction only)
	 * @return
	 */
// 	public function plug_in_sobel(image:Image, drawable:Drawable, horizontal:Int, vertical:Int, keep_sign:Int):Void;

	/**
	 * Create an image filled with a swirled tile effect
	 *   by Adrian Likins <aklikins@@eos.ncsu.edu>
	 *   1997
	 * @param
	 *    value : Float -> Depth
	 *    value : Float -> Azimuth
	 *    value : Float -> Elevation
	 *    value : Float -> Blur radius
	 *    value : Float -> Height
	 *    value : Float -> Width
	 *    value : Float -> Whirl amount
	 *    value : Float -> Roughness
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_swirl_tile(value:Float, value:Float, value:Float, value:Float, value:Float, value:Float, value:Float, value:Float, color:Color):Void;

	/**
	 * Decompose an image into separate colorspace components
	 *   by Peter Kirchgessner
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    decompose_type : String -> What to decompose: \RGB\, \Red\, \Green\, \Blue\, \RGBA\, \HSV\, \Hue\, \Saturation\, \Value\, \HSL\, \Hue (HSL)\, \Saturation (HSL)\, \Lightness\, \CMY\, \Cyan\, \Magenta\, \Yellow\, \CMYK\, \Cyan_K\, \Magenta_K\, \Yellow_K\, \Alpha\, \LAB\, \YCbCr_ITU_R470\, \YCbCr_ITU_R709\, \YCbCr ITU R470 256\, \YCbCr ITU R709 256\
	 *    layers_mode : Int -> Create channels as layers in a single image
	 * @return
	 *    new-image : Image -> Output gray image
	 *    new-image : Image -> Output gray image (N/A for single channel extract)
	 *    new-image : Image -> Output gray image (N/A for single channel extract)
	 *    new-image : Image -> Output gray image (N/A for single channel extract)
	 */
// 	public function plug_in_decompose_registered(image:Image, drawable:Drawable, decompose_type:String, layers_mode:Int):python.Tuple.Tuple4<Image,Image,Image,Image>;

	/**
	 * Look up a parasite in an item
	 *   by Jay Cox
	 *   1998
	 * @param
	 *    item : Item -> The item
	 *    name : String -> The name of the parasite to find
	 * @return
	 *    parasite : Parasite -> The found parasite
	 */
	public function gimp_item_get_parasite(item:Item, name:String):Parasite;

	/**
	 * Create a selection by selecting all pixels (in the specified drawable) with the same (or similar) color to that specified.
	 *   by David Gowers
	 *   2010
	 * @param
	 *    image : Image -> The affected image
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    drawable : Drawable -> The affected drawable
	 *    color : Color -> The color to select
	 * @return
	 */
	public function gimp_image_select_color(image:Image, operation:Int, drawable:Drawable, color:Color):Void;

	/**
	 * Save files in XPM (X11 Pixmap) format.
	 *   by Spencer Kimball & Peter Mattis & Ray Lehtiniemi & Nathan Summers
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    threshold : Int -> Alpha threshold (0-255)
	 * @return
	 */
	public function file_xpm_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, threshold:Int):Void;

	/**
	 * Remove all horizontal and vertical guides
	 *   by Alan Horkan
	 *   April 2004
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 * @return
	 */
// 	public function script_fu_guides_remove(image:Image, drawable:Drawable):Void;

	/**
	 * Convert specified image to and Indexed image
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    dither_type : Int -> The dither type to use @{ NO-DITHER (0), FS-DITHER (1), FSLOWBLEED-DITHER (2), FIXED-DITHER (3) @}
	 *    palette_type : Int -> The type of palette to use @{ MAKE-PALETTE (0), WEB-PALETTE (2), MONO-PALETTE (3), CUSTOM-PALETTE (4) @}
	 *    num_cols : Int -> The number of colors to quantize to, ignored unless (palette_type == GIMP_MAKE_PALETTE)
	 *    alpha_dither : Int -> Dither transparency to fake partial opacity (TRUE or FALSE)
	 *    remove_unused : Int -> Remove unused or duplicate color entries from final palette, ignored if (palette_type == GIMP_MAKE_PALETTE) (TRUE or FALSE)
	 *    palette : String -> The name of the custom palette to use, ignored unless (palette_type == GIMP_CUSTOM_PALETTE)
	 * @return
	 */
	public function gimp_image_convert_indexed(image:Image, dither_type:Int, palette_type:Int, num_cols:Int, alpha_dither:Int, remove_unused:Int, palette:String):Void;

	/**
	 * Apply a color profile on the image
	 *   by Sven Neumann
	 *   2006, 2007
	 * @param
	 *    image : Image -> Input image
	 *    profile : String -> Filename of an ICC color profile
	 *    intent : Int -> Rendering intent (enum GimpColorRenderingIntent)
	 *    bpc : Int -> Black point compensation
	 * @return
	 */
// 	public function plug_in_icc_profile_apply(image:Image, profile:String, intent:Int, bpc:Int):Void;

	/**
	 * loads files in the JPEG file format
	 *   by Spencer Kimball, Peter Mattis & others
	 *   1995-2007
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_jpeg_load(filename:String, raw_filename:String):Image;

	/**
	 * Get the opacity of the specified channel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    channel : Channel -> The channel
	 * @return
	 *    opacity : Float -> The channel opacity (0 <= opacity <= 100)
	 */
	public function gimp_channel_get_opacity(channel:Channel):Float;

	/**
	 * Get ink angle in degrees.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 * @return
	 *    angle : Float -> ink angle in degrees (-90 <= angle <= 90)
	 */
	public function gimp_context_get_ink_angle():Float;

	/**
	 * Load a help page.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2000
	 * @param
	 *    help_domain : String -> The help domain in which help_id is registered
	 *    help_id : String -> The help page's ID
	 * @return
	 */
	public function gimp_help(help_domain:String, help_id:String):Void;

	/**
	 * Set the layer offsets.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 *    offx : Int -> Offset in x direction
	 *    offy : Int -> Offset in y direction
	 * @return
	 */
	public function gimp_layer_set_offsets(layer:Layer, offx:Int, offy:Int):Void;

	/**
	 * Loads files in the WMF file format
	 *   by Dom Lachowicz <cinamod@@hotmail.com>
	 *   (c) 2003 - Version 0.3.0
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 *    resolution : Float -> Resolution to use for rendering the WMF (defaults to 72 dpi
	 *    width : Int -> Width (in pixels) to load the WMF in, 0 for original width
	 *    height : Int -> Height (in pixels) to load the WMF in, 0 for original height
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_wmf_load(filename:String, raw_filename:String, resolution:Float, width:Int, height:Int):Image;

	/**
	 * Retrieve a complete listing of the available buffers.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 *    filter : String -> An optional regular expression used to filter the list
	 * @return
	 *    num-buffers : Int -> The number of buffers (num-buffers >= 0)
	 *    buffer-list : Array<String> -> The list of buffer names
	 */
	public function gimp_buffers_get_list(filter:String):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Get ink tilt sensitivity.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 * @return
	 *    tilt : Float -> ink tilt sensitivity (0 <= tilt <= 1)
	 */
	public function gimp_context_get_ink_tilt_sensitivity():Float;

	/**
	 * Combine two channel masks.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    channel1 : Channel -> The channel1
	 *    channel2 : Channel -> The channel2
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    offx : Int -> x offset between upper left corner of channels: (second - first)
	 *    offy : Int -> y offset between upper left corner of channels: (second - first)
	 * @return
	 */
	public function gimp_channel_combine_masks(channel1:Channel, channel2:Channel, operation:Int, offx:Int, offy:Int):Void;

	/**
	 * Returns the host GIMP version.
	 *   by Manish Singh
	 *   1999
	 * @param
	 * @return
	 *    version : String -> GIMP version number
	 */
	public function gimp_version():String;

	/**
	 * Flatten all visible layers into a single layer. Discard all invisible layers.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    layer : Layer -> The resulting layer
	 */
	public function gimp_image_flatten(image:Image):Layer;

	/**
	 * Erase using the current brush.
	 *   by Andy Thomas
	 *   1999
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_eraser_default(drawable:Drawable, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * Retrieves the active error handler for procedure calls.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2008
	 * @param
	 * @return
	 *    handler : Int -> Who is responsible for handling procedure call errors @{ PDB-ERROR-HANDLER-INTERNAL (0), PDB-ERROR-HANDLER-PLUGIN (1) @}
	 */
	public function gimp_plugin_get_pdb_error_handler():Int;

	/**
	 * Swap one color with another
	 *   by robert@@experimental.net
	 *   June 17th, 1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    from_red : Int -> Red value (from)
	 *    from_green : Int -> Green value (from)
	 *    from_blue : Int -> Blue value (from)
	 *    to_red : Int -> Red value (to)
	 *    to_green : Int -> Green value (to)
	 *    to_blue : Int -> Blue value (to)
	 *    red_threshold : Int -> Red threshold
	 *    green_threshold : Int -> Green threshold
	 *    blue_threshold : Int -> Blue threshold
	 * @return
	 */
// 	public function plug_in_exchange(image:Image, drawable:Drawable, from_red:Int, from_green:Int, from_blue:Int, to_red:Int, to_green:Int, to_blue:Int, red_threshold:Int, green_threshold:Int, blue_threshold:Int):Void;

	/**
	 * Retrieve information about a color profile
	 *   by Sven Neumann
	 *   2006, 2007
	 * @param
	 *    profile : String -> Filename of an ICC color profile
	 * @return
	 *    profile-name : String -> Name
	 *    profile-desc : String -> Description
	 *    profile-info : String -> Info
	 */
// 	public function plug_in_icc_profile_file_info(profile:String):python.Tuple.Tuple3<String,String,String>;

	/**
	 * Set brush angle in degrees.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 *    angle : Float -> angle in degrees (-180 <= angle <= 180)
	 * @return
	 */
	public function gimp_context_set_brush_angle(angle:Float):Void;

	/**
	 * Returns a list of matching filenames
	 *   by Sven Neumann
	 *   2004
	 * @param
	 *    pattern : String -> The glob pattern (in UTF-8 encoding)
	 *    encoding : Int -> Encoding of the returned names: @{ UTF-8 (0), filename encoding (1) @}
	 * @return
	 *    num-files : Int -> The number of returned names
	 *    files : Array<String> -> The list of matching names
	 */
	public function file_glob(pattern:String, encoding:Int):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Remove the specified floating selection from its associated drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    floating_sel : Layer -> The floating selection
	 * @return
	 */
	public function gimp_floating_sel_remove(floating_sel:Layer):Void;

	/**
	 * Refresh current patterns. This function always succeeds.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2002
	 * @param
	 * @return
	 */
	public function gimp_patterns_refresh():Void;

	/**
	 * saves files in the Photoshop(tm) PSD file format
	 *   by Monigotes
	 *   2000
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    compression : Int -> Compression type: @{ NONE (0), LZW (1), PACKBITS (2)
	 *    fill_order : Int -> Fill Order: @{ MSB to LSB (0), LSB to MSB (1)
	 * @return
	 */
	public function file_psd_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, compression:Int, fill_order:Int):Void;

	/**
	 * Simulate an image painted on window blinds
	 *   by Andy Thomas
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    angle_dsp : Int -> Angle of Displacement
	 *    num_segments : Int -> Number of segments in blinds
	 *    orientation : Int -> The orientation @{ ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) @}
	 *    bg_transparent : Int -> Background transparent @{ FALSE, TRUE @}
	 * @return
	 */
// 	public function plug_in_blinds(image:Image, drawable:Drawable, angle_dsp:Int, num_segments:Int, orientation:Int, bg_transparent:Int):Void;

	/**
	 * Retrieve the currently active gradient.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 *    name : String -> The name of the active gradient
	 */
	public function gimp_context_get_gradient():String;

	/**
	 * Returns the specified image's filename.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    filename : String -> The filename
	 */
	public function gimp_image_get_filename(image:Image):String;

	/**
	 * Draw a grid as specified by the lists of X and Y locations using the current brush
	 *   by Alan Horkan
	 *   2004-08-13
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 * @return
	 */
// 	public function script_fu_guides_from_selection(image:Image, drawable:Drawable):Void;

	/**
	 * Nonlinear swiss army knife filter
	 *   by Graeme W. Gill, gimp 0.99 plugin by Eric L. Hernes
	 *   1997
	 * @param
	 *    img : Image -> The Image to Filter
	 *    drw : Drawable -> The Drawable
	 *    alpha : Float -> The amount of the filter to apply
	 *    radius : Float -> The filter radius
	 *    filter : Int -> The Filter to Run, 0 - alpha trimmed mean; 1 - optimal estimation (alpha controls noise variance); 2 - edge enhancement
	 * @return
	 */
// 	public function plug_in_nlfilt(img:Image, drw:Drawable, alpha:Float, radius:Float, filter:Int):Void;

	/**
	 * Convert specified image to RGB color
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_image_convert_rgb(image:Image):Void;

	/**
	 * Create an image filled with a topographic map pattern
	 *   by Adrian Likins <aklikins@@eos.ncsu.edu>
	 *   1997
	 * @param
	 *    value : Float -> Image width
	 *    value : Float -> Image height
	 *    value : Float -> Random seed
	 *    value : Float -> Detail level
	 *    value : Float -> Land height
	 *    value : Float -> Sea depth
	 *    value : Float -> Scale X
	 *    value : Float -> Scale Y
	 *    gradient : String -> Gradient
	 * @return
	 */
// 	public function script_fu_land(value:Float, value:Float, value:Float, value:Float, value:Float, value:Float, value:Float, value:Float, gradient:String):Void;

	/**
	 * Create frozen logo with an added drop shadow
	 *   by Spencer Kimball & Ed Mackey
	 *   1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_frosty_logo(string:String, value:Float, font:String, color:Color):Void;

	/**
	 * Check if antialiasing is used in the text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 * @return
	 *    antialias : Int -> A flag which is true if antialiasing is used for rendering the font in the text layer. (TRUE or FALSE)
	 */
	public function gimp_text_layer_get_antialias(layer:Layer):Int;

	/**
	 * Save files in PDF format
	 *   by Barak Itkin
	 *   August 2009
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    vectorize : Int -> Convert bitmaps to vector graphics where possible. TRUE or FALSE
	 *    ignore_hidden : Int -> Omit hidden layers and layers with zero opacity. TRUE or FALSE
	 *    apply_masks : Int -> Apply layer masks before saving. TRUE or FALSE (Keeping them will not change the output)
	 * @return
	 */
	public function file_pdf_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, vectorize:Int, ignore_hidden:Int, apply_masks:Int):Void;

	/**
	 * Creates a new empty vectors object.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    image : Image -> The image
	 *    name : String -> the name of the new vector object.
	 * @return
	 *    vectors : Vectors -> the current vector object, 0 if no vector exists in the image.
	 */
	public function gimp_vectors_new(image:Image, name:String):Vectors;

	/**
	 * Delete the specified display.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    display : Display -> The display to delete
	 * @return
	 */
	public function gimp_display_delete(display:Display):Void;

	/**
	 * Rename a brush
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 *    new_name : String -> The new name of the brush
	 * @return
	 *    actual-name : String -> The actual new name of the brush
	 */
	public function gimp_brush_rename(name:String, new_name:String):String;

	/**
	 * Get the current GIMP background color.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 *    background : Color -> The background color
	 */
	public function gimp_context_get_background():Color;

	/**
	 * Deprecated: Use 'gimp-image-set-active-vectors' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image in which a path will become current
	 *    name : String -> The name of the path to make current.
	 * @return
	 */
	public function gimp_path_set_current(image:Image, name:String):Void;

	/**
	 * Sets the foreground color of an image's grid.
	 *   by Sylvain Foret
	 *   2005
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    fgcolor : Color -> The image's grid foreground color
	 */
	public function gimp_image_grid_get_foreground_color(image:Image):Color;

	/**
	 * load an OpenRaster (.ora) file
	 *   by Jon Nordby
	 *   2009
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_openraster_load(filename:String, raw_filename:String):Image;

	/**
	 * Returns whether the item is a layer mask.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    layer-mask : Int -> TRUE if the item is a layer mask, FALSE otherwise (TRUE or FALSE)
	 */
	public function gimp_item_is_layer_mask(item:Item):Int;

	/**
	 * Blend between the starting and ending coordinates with the specified blend mode and gradient type.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    blend_mode : Int -> The type of blend @{ FG-BG-RGB-MODE (0), FG-BG-HSV-MODE (1), FG-TRANSPARENT-MODE (2), CUSTOM-MODE (3) @}
	 *    paint_mode : Int -> The paint application mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 *    gradient_type : Int -> The type of gradient @{ GRADIENT-LINEAR (0), GRADIENT-BILINEAR (1), GRADIENT-RADIAL (2), GRADIENT-SQUARE (3), GRADIENT-CONICAL-SYMMETRIC (4), GRADIENT-CONICAL-ASYMMETRIC (5), GRADIENT-SHAPEBURST-ANGULAR (6), GRADIENT-SHAPEBURST-SPHERICAL (7), GRADIENT-SHAPEBURST-DIMPLED (8), GRADIENT-SPIRAL-CLOCKWISE (9), GRADIENT-SPIRAL-ANTICLOCKWISE (10) @}
	 *    opacity : Float -> The opacity of the final blend (0 <= opacity <= 100)
	 *    offset : Float -> Offset relates to the starting and ending coordinates specified for the blend. This parameter is mode dependent. (offset >= 0)
	 *    repeat : Int -> Repeat mode @{ REPEAT-NONE (0), REPEAT-SAWTOOTH (1), REPEAT-TRIANGULAR (2) @}
	 *    reverse : Int -> Use the reverse gradient (TRUE or FALSE)
	 *    supersample : Int -> Do adaptive supersampling (TRUE or FALSE)
	 *    max_depth : Int -> Maximum recursion levels for supersampling (1 <= max-depth <= 9)
	 *    threshold : Float -> Supersampling threshold (0 <= threshold <= 4)
	 *    dither : Int -> Use dithering to reduce banding (TRUE or FALSE)
	 *    x1 : Float -> The x coordinate of this blend's starting point
	 *    y1 : Float -> The y coordinate of this blend's starting point
	 *    x2 : Float -> The x coordinate of this blend's ending point
	 *    y2 : Float -> The y coordinate of this blend's ending point
	 * @return
	 */
	public function gimp_edit_blend(drawable:Drawable, blend_mode:Int, paint_mode:Int, gradient_type:Int, opacity:Float, offset:Float, repeat:Int, reverse:Int, supersample:Int, max_depth:Int, threshold:Float, dither:Int, x1:Float, y1:Float, x2:Float, y2:Float):Void;

	/**
	 * Converts image to an RGB normalmap
	 *   by Shawn Kirst
	 *   February 2002
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    filter : Int -> Filter type (0 = 4 sample, 1 = sobel 3x3, 2 = sobel 5x5, 3 = prewitt 3x3, 4 = prewitt 5x5, 5-8 = 3x3,5x5,7x7,9x9)
	 *    minz : Float -> Minimun Z (0 to 1)
	 *    scale : Float -> Scale (>0)
	 *    wrap : Int -> Wrap (0 = no)
	 *    height_source : Int -> Height source (0 = average RGB, 1 = alpha channel)
	 *    alpha : Int -> Alpha (0 = unchanged, 1 = set to height, 2 = set to inverse height, 3 = set to 0, 4 = set to 1, 5 = invert, 6 = set to alpha map value)
	 *    conversion : Int -> Conversion (0 = normalize only, 1 = Biased RGB, 2 = Red, 3 = Green, 4 = Blue, 5 = Max RGB, 6 = Min RGB, 7 = Colorspace, 8 = Normalize only, 9 = Convert to height map)
	 *    dudv : Int -> DU/DV map (0 = none, 1 = 8-bit, 2 = 8-bit unsigned, 3 = 16-bit, 4 = 16-bit unsigned)
	 *    xinvert : Int -> Invert X component of normal
	 *    yinvert : Int -> Invert Y component of normal
	 *    swapRGB : Int -> Swap RGB components
	 *    contrast : Float -> Height contrast (0 to 1). If converting to a height map, this value is applied to the results
	 *    alphamap : Drawable -> Alpha map drawable
	 * @return
	 */
// 	public function plug_in_normalmap(image:Image, drawable:Drawable, filter:Int, minz:Float, scale:Float, wrap:Int, height_source:Int, alpha:Int, conversion:Int, dudv:Int, xinvert:Int, yinvert:Int, swapRGB:Int, contrast:Float, alphamap:Drawable):Void;

	/**
	 * Smear colors to simulate an oil painting
	 *   by Torsten Martinsen, Daniel Richard G.
	 *   2007
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    mode : Int -> Algorithm @{ RGB (0), INTENSITY (1) @}
	 *    mask_size : Int -> Oil paint mask size
	 *    mask_size_map : Drawable -> Mask size control map
	 *    exponent : Int -> Oil paint exponent
	 *    exponent_map : Drawable -> Exponent control map
	 * @return
	 */
// 	public function plug_in_oilify_enhanced(image:Image, drawable:Drawable, mode:Int, mask_size:Int, mask_size_map:Drawable, exponent:Int, exponent_map:Drawable):Void;

	/**
	 * Loads only the first frame of a GIF image, to be used as a thumbnail
	 *   by Sven Neumann
	 *   2006
	 * @param
	 *    filename : String -> The name of the file to load
	 *    thumb_size : Int -> Preferred thumbnail size
	 * @return
	 *    image : Image -> Output image
	 *    image-width : Int -> Width of full-sized image
	 *    image-height : Int -> Height of full-sized image
	 */
	public function file_gif_load_thumb(filename:String, thumb_size:Int):python.Tuple.Tuple3<Image,Int,Int>;

	/**
	 * Set the values of an XMP property
	 *   by Raphaël Quinet <raphael@@gimp.org>
	 *   2005
	 * @param
	 *    image : Image -> Input image
	 *    schema : String -> XMP schema prefix or URI
	 *    property : String -> XMP property name
	 *    type : Int -> XMP property type
	 *    num_vals : Int -> number of values
	 *    vals : Array<String> -> XMP property values
	 * @return
	 */
// 	public function plug_in_metadata_set(image:Image, schema:String, property:String, type:Int, num_vals:Int, vals:Array<String>):Void;

	/**
	 * Deprecated: Use 'gimp-brush-get-spacing' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 *    spacing : Int -> The brush spacing (0 <= spacing <= 1000)
	 */
	public function gimp_brushes_get_spacing():Int;

	/**
	 * Retrieve the list of loaded gradients.
	 *   by Federico Mena Quintero
	 *   1997
	 * @param
	 *    filter : String -> An optional regular expression used to filter the list
	 * @return
	 *    num-gradients : Int -> The number of loaded gradients (num-gradients >= 0)
	 *    gradient-list : Array<String> -> The list of gradient names
	 */
	public function gimp_gradients_get_list(filter:String):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Render fractal art
	 *   by Daniel Cotting (cotting@@multimania.com, www.multimania.com/cotting)
	 *   December, 1998
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    fractaltype : Int -> 0: Mandelbrot; 1: Julia; 2: Barnsley 1; 3: Barnsley 2; 4: Barnsley 3; 5: Spider; 6: ManOWar; 7: Lambda; 8: Sierpinski
	 *    xmin : Float -> xmin fractal image delimiter
	 *    xmax : Float -> xmax fractal image delimiter
	 *    ymin : Float -> ymin fractal image delimiter
	 *    ymax : Float -> ymax fractal image delimiter
	 *    iter : Float -> Iteration value
	 *    cx : Float -> cx value ( only Julia)
	 *    cy : Float -> cy value ( only Julia)
	 *    colormode : Int -> 0: Apply colormap as specified by the parameters below; 1: Apply active gradient to final image
	 *    redstretch : Float -> Red stretching factor
	 *    greenstretch : Float -> Green stretching factor
	 *    bluestretch : Float -> Blue stretching factor
	 *    redmode : Int -> Red application mode (0:SIN;1:COS;2:NONE)
	 *    greenmode : Int -> Green application mode (0:SIN;1:COS;2:NONE)
	 *    bluemode : Int -> Blue application mode (0:SIN;1:COS;2:NONE)
	 *    redinvert : Int -> Red inversion mode (1: enabled; 0: disabled)
	 *    greeninvert : Int -> Green inversion mode (1: enabled; 0: disabled)
	 *    blueinvert : Int -> Green inversion mode (1: enabled; 0: disabled)
	 *    ncolors : Int -> Number of Colors for mapping (2<=ncolors<=8192)
	 * @return
	 */
// 	public function plug_in_fractalexplorer(image:Image, drawable:Drawable, fractaltype:Int, xmin:Float, xmax:Float, ymin:Float, ymax:Float, iter:Float, cx:Float, cy:Float, colormode:Int, redstretch:Float, greenstretch:Float, bluestretch:Float, redmode:Int, greenmode:Int, bluemode:Int, redinvert:Int, greeninvert:Int, blueinvert:Int, ncolors:Int):Void;

	/**
	 * Superimpose many altered copies of the image
	 *   by Hirotsuna Mizuno <s1041150@@u-aizu.ac.jp>
	 *   v0.8 (May 14 2000)
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    division : Int -> The number of divisions
	 *    type : Int -> Illusion type @{ TYPE1 (0), TYPE2 (1) @}
	 * @return
	 */
// 	public function plug_in_illusion(image:Image, drawable:Drawable, division:Int, type:Int):Void;

	/**
	 * Translate the selection by the specified offsets.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    offx : Int -> x offset for translation
	 *    offy : Int -> y offset for translation
	 * @return
	 */
	public function gimp_selection_translate(image:Image, offx:Int, offy:Int):Void;

	/**
	 * Create images, each containing an oval button graphic
	 *   by Arturo Espinosa (stolen from quartic's beveled button)
	 *   June 1998
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Upper colour
	 *    color : Color -> Lower colour
	 *    color : Color -> Text colour
	 *    color : Color -> Upper colour (active)
	 *    color : Color -> Lower colour (active)
	 *    color : Color -> Text colour (active)
	 *    value : Float -> Padding X
	 *    value : Float -> Padding Y
	 *    value : Float -> Bevel width
	 *    value : Float -> Round ratio
	 *    toggle : Int -> Not pressed
	 *    toggle : Int -> Not pressed (active)
	 *    toggle : Int -> Pressed
	 * @return
	 */
// 	public function script_fu_round_button(string:String, value:Float, font:String, color:Color, color:Color, color:Color, color:Color, color:Color, color:Color, value:Float, value:Float, value:Float, value:Float, toggle:Int, toggle:Int, toggle:Int):Void;

	/**
	 * Saves files in Windows ICO file format
	 *   by Christian Kreibich <christian@@whoop.org>
	 *   2002
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name entered
	 * @return
	 */
	public function file_ico_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Returns the number of built-in units.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1999
	 * @param
	 * @return
	 *    num-units : Int -> The number of built-in units
	 */
	public function gimp_unit_get_number_of_built_in_units():Int;

	/**
	 * Automatically modifies intensity levels in the specified drawable.
	 *   by Joao S.O. Bueno, Shawn Willden
	 *   2003
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 */
	public function gimp_levels_stretch(drawable:Drawable):Void;

	/**
	 * Set the current set of defaults used by the PNG file save plug-in
	 *   by Michael Sweet <mike@@easysw.com>, Daniel Skarda <0rfelyus@@atrey.karlin.mff.cuni.cz>
	 *   1.3.4 - 03 September 2002
	 * @param
	 *    interlace : Int -> Use Adam7 interlacing?
	 *    compression : Int -> Deflate Compression factor (0--9)
	 *    bkgd : Int -> Write bKGD chunk?
	 *    gama : Int -> Write gAMA chunk?
	 *    offs : Int -> Write oFFs chunk?
	 *    phys : Int -> Write pHYs chunk?
	 *    time : Int -> Write tIME chunk?
	 *    comment : Int -> Write comment?
	 *    svtrans : Int -> Preserve color of transparent pixels?
	 * @return
	 */
	public function file_png_set_defaults(interlace:Int, compression:Int, bkgd:Int, gama:Int, offs:Int, phys:Int, time:Int, comment:Int, svtrans:Int):Void;

	/**
	 * Get the 'lock content' state of the specified item.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2009
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    lock-content : Int -> Whether the item's contents are locked (TRUE or FALSE)
	 */
	public function gimp_item_get_lock_content(item:Item):Int;

	/**
	 * Copy the selection mask to a new channel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    channel : Channel -> The new channel
	 */
	public function gimp_selection_save(image:Image):Channel;

	/**
	 * flips the given stroke about an arbitrary axis.
	 *   by João S. O. Bueno
	 *   2006
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 *    x1 : Float -> X coordinate of the first point of the flipping axis
	 *    y1 : Float -> Y coordinate of the first point of the flipping axis
	 *    x2 : Float -> X coordinate of the second point of the flipping axis
	 *    y2 : Float -> Y coordinate of the second point of the flipping axis
	 * @return
	 */
	public function gimp_vectors_stroke_flip_free(vectors:Vectors, stroke_id:Int, x1:Float, y1:Float, x2:Float, y2:Float):Void;

	/**
	 * Create a button graphic with an eerie glow for web pages
	 *   by Adrian Likins
	 *   July 1997
	 * @param
	 *    string : String -> Text
	 *    font : String -> Font
	 *    value : Float -> Font size (pixels)
	 *    color : Color -> Text colour
	 *    color : Color -> Glow colour
	 *    color : Color -> Background colour
	 *    value : Float -> Padding
	 *    value : Float -> Glow radius
	 *    toggle : Int -> Flatten image
	 * @return
	 */
// 	public function script_fu_alien_glow_button(string:String, font:String, value:Float, color:Color, color:Color, color:Color, value:Float, value:Float, toggle:Int):Void;

	/**
	 * Export the active palette as a CSS stylesheet with the colour entry name as their class name, and the colour itself as the colour attribute
	 *   by Barak Itkin <lightningismyname@@gmail.com>
	 *   May 15th, 2009
	 * @param
	 *    dirname : String -> Folder for the output file
	 *    string : String -> The name of the file to create (if a file with this name already exist, it will be replaced)
	 * @return
	 */
	public function gimp_palette_export_css(dirname:String, string:String):Void;

	/**
	 * Associates a thumbnail loader with a file load procedure.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 *    load_proc : String -> The name of the procedure the thumbnail loader with.
	 *    thumb_proc : String -> The name of the thumbnail load procedure.
	 * @return
	 */
	public function gimp_register_thumbnail_loader(load_proc:String, thumb_proc:String):Void;

	/**
	 * Set ink tilt sensitivity.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 *    tilt : Float -> ink tilt sensitivity (0 <= tilt <= 1)
	 * @return
	 */
	public function gimp_context_set_ink_tilt_sensitivity(tilt:Float):Void;

	/**
	 * Encode metadata into an XMP packet
	 *   by Róman Joost <romanofski@@gimp.org>
	 *   2008
	 * @param
	 *    image : Image -> Input image
	 * @return
	 *    xmp : String -> XMP packet
	 */
// 	public function plug_in_metadata_encode_xmp(image:Image):String;

	/**
	 * Retrieves the left endpoint color of the specified segment
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    segment : Int -> The index of the segment within the gradient (segment >= 0)
	 * @return
	 *    color : Color -> The return color
	 *    opacity : Float -> The opacity of the endpoint
	 */
	public function gimp_gradient_segment_get_left_color(name:String, segment:Int):python.Tuple.Tuple2<Color,Float>;

	/**
	 * Simple blur, fast but not very strong
	 *   by Miles O'Neal  <meo@@rru.com>
	 *   1995-1998
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_blur(image:Image, drawable:Drawable):Void;

	/**
	 * Erase using the current brush.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 *    hardness : Int -> How to apply the brush @{ BRUSH-HARD (0), BRUSH-SOFT (1) @}
	 *    method : Int -> The paint method to use @{ PAINT-CONSTANT (0), PAINT-INCREMENTAL (1) @}
	 * @return
	 */
	public function gimp_eraser(drawable:Drawable, num_strokes:Int, strokes:Array<Float>, hardness:Int, method:Int):Void;

	/**
	 * Enhance contrast using the Retinex method
	 *   by Fabien Pelisson
	 *   2003
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    scale : Int -> Biggest scale value
	 *    nscales : Int -> Number of scales
	 *    scales_mode : Int -> Retinex distribution through scales
	 *    cvar : Float -> Variance value
	 * @return
	 */
// 	public function plug_in_retinex(image:Image, drawable:Drawable, scale:Int, nscales:Int, scales_mode:Int, cvar:Float):Void;

	/**
	 * List the strokes associated with the passed path.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    vectors : Vectors -> The vectors object
	 * @return
	 *    num-strokes : Int -> The number of strokes returned. (num-strokes >= 0)
	 *    stroke-ids : Array<Int> -> List of the strokes belonging to the path.
	 */
	public function gimp_vectors_get_strokes(vectors:Vectors):python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * Loads a preview from a PDF file.
	 *   by Nathan Summers
	 *   2005
	 * @param
	 *    filename : String -> The name of the file to load
	 *    thumb_size : Int -> Preferred thumbnail size
	 * @return
	 *    image : Image -> Thumbnail image
	 *    image-width : Int -> Width of full-sized image
	 *    image-height : Int -> Height of full-sized image
	 *    image-type : Int -> Image type
	 *    num-layers : Int -> Number of pages
	 */
	public function file_pdf_load_thumb(filename:String, thumb_size:Int):Dynamic;

	/**
	 * Bookmark to the user manual
	 *   by Roman Joost <romanofski@@gimp.org>
	 *   2006
	 * @param
	 * @return
	 */
	public function gimp_help_using_web():Void;

	/**
	 * Sets the specified image's filename.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    filename : String -> The new image filename
	 * @return
	 */
	public function gimp_image_set_filename(image:Image, filename:String):Void;

	/**
	 * Display information about plug-ins
	 *   by Andy Thomas
	 *   1999
	 * @param
	 * @return
	 */
// 	public function plug_in_plug_in_details():Void;

	/**
	 * load Encapsulated PostScript images
	 *   by Peter Kirchgessner <peter@@kirchgessner.net>
	 *   v1.17  19-Sep-2004
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_eps_load(filename:String, raw_filename:String):Image;

	/**
	 * Paint in the current brush. The fade out parameter and pull colors from a gradient parameter are set from the paintbrush options dialog. If this dialog has not been activated then the dialog defaults will be used.
	 *   by Andy Thomas
	 *   1999
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_paintbrush_default(drawable:Drawable, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * Set brush size to its default.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 * @return
	 */
	public function gimp_context_set_brush_default_size():Void;

	/**
	 * Evaluate scheme code
	 *   by Manish Singh
	 *   1998
	 * @param
	 *    code : String -> The code to evaluate
	 * @return
	 */
// 	public function plug_in_script_fu_eval(code:String):Void;

	/**
	 * Deprecated: Use 'gimp-pattern-get-pixels' instead.
	 *   by 
	 *   
	 * @param
	 *    name : String -> The pattern name (\\ means currently active pattern)
	 * @return
	 *    actual-name : String -> The pattern name
	 *    width : Int -> The pattern width
	 *    height : Int -> The pattern height
	 *    mask-bpp : Int -> Pattern bytes per pixel
	 *    length : Int -> Length of pattern mask data (length >= 0)
	 *    mask-data : Array<Int> -> The pattern mask data
	 */
	public function gimp_patterns_get_pattern_data(name:String):Dynamic;

	/**
	 * Returns TRUE if the drawable has an alpha channel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 *    has-alpha : Int -> Does the drawable have an alpha channel? (TRUE or FALSE)
	 */
	public function gimp_drawable_has_alpha(drawable:Drawable):Int;

	/**
	 * load PostScript documents
	 *   by Peter Kirchgessner <peter@@kirchgessner.net>
	 *   v1.17  19-Sep-2004
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_ps_load(filename:String, raw_filename:String):Image;

	/**
	 * Tile image into smaller versions of the original
	 *   by Andy Thomas
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    num_tiles : Int -> Number of tiles to make
	 * @return
	 */
// 	public function plug_in_small_tiles(image:Image, drawable:Drawable, num_tiles:Int):Void;

	/**
	 * Gets the style of an image's grid.
	 *   by Sylvain Foret
	 *   2005
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    style : Int -> The image's grid style @{ GRID-DOTS (0), GRID-INTERSECTIONS (1), GRID-ON-OFF-DASH (2), GRID-DOUBLE-DASH (3), GRID-SOLID (4) @}
	 */
	public function gimp_image_grid_get_style(image:Image):Int;

	/**
	 * Create a random cloud-like texture
	 *   by Marcelo de Gomensoro Malheiros
	 *   May 2004, v1.04
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    tilable : Int -> Create a tilable output @{ TRUE, FALSE @}
	 *    turbulent : Int -> Make a turbulent noise @{ TRUE, FALSE @}
	 *    seed : Int -> Random seed
	 *    detail : Int -> Detail level (0 - 15)
	 *    xsize : Float -> Horizontal texture size
	 *    ysize : Float -> Vertical texture size
	 * @return
	 */
// 	public function plug_in_solid_noise(image:Image, drawable:Drawable, tilable:Int, turbulent:Int, seed:Int, detail:Int, xsize:Float, ysize:Float):Void;

	/**
	 * Retrieve the currently active brush.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 *    name : String -> The name of the active brush
	 */
	public function gimp_context_get_brush():String;

	/**
	 * Deletes a brush
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 * @return
	 */
	public function gimp_brush_delete(name:String):Void;

	/**
	 * Retrieves the gradient segment's blending function
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    segment : Int -> The index of the segment within the gradient (segment >= 0)
	 * @return
	 *    blend-func : Int -> The blending function of the segment @{ GRADIENT-SEGMENT-LINEAR (0), GRADIENT-SEGMENT-CURVED (1), GRADIENT-SEGMENT-SINE (2), GRADIENT-SEGMENT-SPHERE-INCREASING (3), GRADIENT-SEGMENT-SPHERE-DECREASING (4) @}
	 */
	public function gimp_gradient_segment_get_blending_function(name:String, segment:Int):Int;

	/**
	 * Invokes the Gimp brush selection.
	 *   by Andy Thomas
	 *   1998
	 * @param
	 *    brush_callback : String -> The callback PDB proc to call when brush selection is made
	 *    popup_title : String -> Title of the brush selection dialog
	 *    initial_brush : String -> The name of the brush to set as the first selected
	 *    opacity : Float -> The initial opacity of the brush (0 <= opacity <= 100)
	 *    spacing : Int -> The initial spacing of the brush (if < 0 then use brush default spacing) (spacing <= 1000)
	 *    paint_mode : Int -> The initial paint mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 * @return
	 */
	public function gimp_brushes_popup(brush_callback:String, popup_title:String, initial_brush:String, opacity:Float, spacing:Int, paint_mode:Int):Void;

	/**
	 * Create a beveled pattern bullet for webpages
	 *   by Federico Mena Quintero
	 *   July 1997
	 * @param
	 *    value : Float -> Diameter
	 *    pattern : String -> Pattern
	 *    toggle : Int -> Transparent background
	 * @return
	 */
// 	public function script_fu_beveled_pattern_bullet(value:Float, pattern:String, toggle:Int):Void;

	/**
	 * Find next guide on an image.
	 *   by Adam D. Moss
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    guide : Int -> The ID of the current guide (0 if first invocation)
	 * @return
	 *    next-guide : Int -> The next guide's ID
	 */
	public function gimp_image_find_next_guide(image:Image, guide:Int):Int;

	/**
	 * Return the width of the image
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    width : Int -> The image's width
	 */
	public function gimp_image_width(image:Image):Int;

	/**
	 * Set a color profile on the image
	 *   by Sven Neumann
	 *   2006, 2007
	 * @param
	 *    image : Image -> Input image
	 *    profile : String -> Filename of an ICC color profile
	 * @return
	 */
// 	public function plug_in_icc_profile_set(image:Image, profile:String):Void;

	/**
	 * Create a random plasma texture
	 *   by Stephen Norris & (ported to 1.0 by) Eiichi Takamori
	 *   May 2000
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    seed : Int -> Random seed
	 *    turbulence : Float -> Turbulence of plasma
	 * @return
	 */
// 	public function plug_in_plasma(image:Image, drawable:Drawable, seed:Int, turbulence:Float):Void;

	/**
	 * Create a new layer group.
	 *   by Barak Itkin <lightningismyname@@gmail.com>
	 *   2010
	 * @param
	 *    image : Image -> The image to which to add the layer group
	 * @return
	 *    layer-group : Layer -> The newly created layer group
	 */
	public function gimp_layer_group_new(image:Image):Layer;

	/**
	 * Bookmark to the GIMP web site
	 *   by Henrik Brix Andersen <brix@@gimp.org>
	 *   2003
	 * @param
	 * @return
	 */
	public function gimp_online_main_web_site():Void;

	/**
	 * Sample the spacified gradient in custom positions.
	 *   by Federico Mena Quintero
	 *   1997
	 * @param
	 *    name : String -> The gradient name
	 *    num_samples : Int -> The number of samples to take (num-samples >= 1)
	 *    positions : Array<Float> -> The list of positions to sample along the gradient
	 *    reverse : Int -> Use the reverse gradient (TRUE or FALSE)
	 * @return
	 *    num-color-samples : Int -> Length of the color_samples array (4 * num_samples) (num-color-samples >= 0)
	 *    color-samples : Array<Float> -> Color samples: @{ R1, G1, B1, A1, ..., Rn, Gn, Bn, An @}
	 */
	public function gimp_gradient_get_custom_samples(name:String, num_samples:Int, positions:Array<Float>, reverse:Int):python.Tuple.Tuple2<Int,Array<Float>>;

	/**
	 * Simulate an elliptical lens over the image
	 *   by Morten Eriksen
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    refraction : Float -> Lens refraction index
	 *    keep_surroundings : Int -> Keep lens surroundings @{ TRUE, FALSE @}
	 *    set_background : Int -> Set lens surroundings to BG value @{ TRUE, FALSE @}
	 *    set_transparent : Int -> Set lens surroundings transparent @{ TRUE, FALSE @}
	 * @return
	 */
// 	public function plug_in_applylens(image:Image, drawable:Drawable, refraction:Float, keep_surroundings:Int, set_background:Int, set_transparent:Int):Void;

	/**
	 * Set the edit mask setting of the specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 *    edit_mask : Int -> The new layer's edit mask setting (TRUE or FALSE)
	 * @return
	 */
	public function gimp_layer_set_edit_mask(layer:Layer, edit_mask:Int):Void;

	/**
	 * Sets the spacing of an image's grid.
	 *   by Sylvain Foret
	 *   2005
	 * @param
	 *    image : Image -> The image
	 *    xspacing : Float -> The image's grid horizontal spacing
	 *    yspacing : Float -> The image's grid vertical spacing
	 * @return
	 */
	public function gimp_image_grid_set_spacing(image:Image, xspacing:Float, yspacing:Float):Void;

	/**
	 * Splits each segment in the segment range uniformly
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    start_segment : Int -> The index of the first segment to operate on (start-segment >= 0)
	 *    end_segment : Int -> The index of the last segment to operate on. If negative, the selection will extend to the end of the string.
	 *    split_parts : Int -> The number of uniform divisions to split each segment to (2 <= split-parts <= 1024)
	 * @return
	 */
	public function gimp_gradient_segment_range_split_uniform(name:String, start_segment:Int, end_segment:Int, split_parts:Int):Void;

	/**
	 * Create an image of a webpage
	 *   by Mukund Sivaraman <muks@@banu.com>
	 *   2011
	 * @param
	 *    url : String -> URL of the webpage to screenshot
	 *    width : Int -> The width of the screenshot (in pixels)
	 *    font_size : Int -> The font size to use in the page (in pt)
	 * @return
	 *    image : Image -> Output image
	 */
// 	public function plug_in_web_page(url:String, width:Int, font_size:Int):Image;

	/**
	 * Load raw images, specifying image information
	 *   by timecop, pg@@futureware.at
	 *   Aug 2004
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_raw_load(filename:String, raw_filename:String):Image;

	/**
	 * Flip the segment range
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    start_segment : Int -> The index of the first segment to operate on (start-segment >= 0)
	 *    end_segment : Int -> The index of the last segment to operate on. If negative, the selection will extend to the end of the string.
	 * @return
	 */
	public function gimp_gradient_segment_range_flip(name:String, start_segment:Int, end_segment:Int):Void;

	/**
	 * Sets the specified image's resolution.
	 *   by Austin Donnelly
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    xresolution : Float -> The new image resolution in the x-axis, in dots per inch
	 *    yresolution : Float -> The new image resolution in the y-axis, in dots per inch
	 * @return
	 */
	public function gimp_image_set_resolution(image:Image, xresolution:Float, yresolution:Float):Void;

	/**
	 * Reduce image to pure red, green, and blue
	 *   by Shuji Narazaki (narazaki@@InetQ.or.jp)
	 *   May 2000
	 * @param
	 *    image : Image -> Input image (not used)
	 *    drawable : Drawable -> Input drawable
	 *    max_p : Int -> @{ MINIMIZE (0), MAXIMIZE (1) @}
	 * @return
	 */
// 	public function plug_in_max_rgb(image:Image, drawable:Drawable, max_p:Int):Void;

	/**
	 * Edge detection with control of edge thickness
	 *   by Spencer Kimball, Peter Mattis, Sven Neumann, William Skaggs
	 *   1995-2004
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    inner : Float -> Radius of inner gaussian blur (in pixels, > 0.0)
	 *    outer : Float -> Radius of outer gaussian blur (in pixels, > 0.0)
	 *    normalize : Int -> Normalize @{ TRUE, FALSE @}
	 *    invert : Int -> Invert @{ TRUE, FALSE @}
	 * @return
	 */
// 	public function plug_in_dog(image:Image, drawable:Drawable, inner:Float, outer:Float, normalize:Int, invert:Int):Void;

	/**
	 * loads images in GIMP brush pipe format
	 *   by Jens Lautenbacher, Sven Neumann
	 *   2000
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name of the file to load
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_gih_load(filename:String, raw_filename:String):Image;

	/**
	 * Halftone the image to give newspaper-like effect
	 *   by Austin Donnelly
	 *   1998 (v0.60)
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    cell_width : Int -> Screen cell width in pixels
	 *    colorspace : Int -> Separate to @{ GRAYSCALE (0), RGB (1), CMYK (2), LUMINANCE (3) @}
	 *    k_pullout : Int -> Percentage of black to pullout (CMYK only)
	 *    gry_ang : Float -> Grey/black screen angle (degrees)
	 *    gry_spotfn : Int -> Grey/black spot function @{ DOTS (0), LINES (1), DIAMONDS (2), EUCLIDIAN-DOT (3), PS-DIAMONDS (4) @}
	 *    red_ang : Float -> Red/cyan screen angle (degrees)
	 *    red_spotfn : Int -> Red/cyan spot function (values as gry-spotfn)
	 *    grn_ang : Float -> Green/magenta screen angle (degrees)
	 *    grn_spotfn : Int -> Green/magenta spot function (values as gry-spotfn)
	 *    blu_ang : Float -> Blue/yellow screen angle (degrees)
	 *    blu_spotfn : Int -> Blue/yellow spot function (values as gry-spotfn)
	 *    oversample : Int -> how many times to oversample spot fn
	 * @return
	 */
// 	public function plug_in_newsprint(image:Image, drawable:Drawable, cell_width:Int, colorspace:Int, k_pullout:Int, gry_ang:Float, gry_spotfn:Int, red_ang:Float, red_spotfn:Int, grn_ang:Float, grn_spotfn:Int, blu_ang:Float, blu_spotfn:Int, oversample:Int):Void;

	/**
	 * Create a simple logo with a shadow and a highlight
	 *   by Spencer Kimball
	 *   1996
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Background colour
	 *    color : Color -> Text colour
	 * @return
	 */
// 	public function script_fu_basic2_logo(string:String, value:Float, font:String, color:Color, color:Color):Void;

	/**
	 * Register a sub-menu.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 *    menu_path : String -> The sub-menu's menu path
	 *    menu_name : String -> The name of the sub-menu
	 * @return
	 */
	public function gimp_plugin_menu_branch_register(menu_path:String, menu_name:String):Void;

	/**
	 * Add a metallic effect to the selected region (or alpha) with reflections and perspective shadows
	 *   by Spencer Kimball & Rob Malda
	 *   1997
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Effect size (pixels)
	 *    color : Color -> Background colour
	 *    gradient : String -> Gradient
	 *    toggle : Int -> Gradient reverse
	 * @return
	 */
// 	public function script_fu_cool_metal_logo_alpha(image:Image, drawable:Drawable, value:Float, color:Color, gradient:String, toggle:Int):Void;

	/**
	 * Controls where warning messages are displayed.
	 *   by Manish Singh
	 *   1998
	 * @param
	 *    handler : Int -> The new handler type @{ MESSAGE-BOX (0), CONSOLE (1), ERROR-CONSOLE (2) @}
	 * @return
	 */
	public function gimp_message_set_handler(handler:Int):Void;

	/**
	 * Returns the specified image's active layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    active-layer : Layer -> The active layer
	 */
	public function gimp_image_get_active_layer(image:Image):Layer;

	/**
	 * Shrink lighter areas of the image
	 *   by Shuji Narazaki (narazaki@@InetQ.or.jp)
	 *   1996-1997
	 * @param
	 *    image : Image -> Input image (not used)
	 *    drawable : Drawable -> Input drawable
	 *    propagate_mode : Int -> propagate 0:white, 1:black, 2:middle value 3:foreground to peak, 4:foreground, 5:background, 6:opaque, 7:transparent
	 *    propagating_channel : Int -> channels which values are propagated
	 *    propagating_rate : Float -> 0.0 <= propagatating_rate <= 1.0
	 *    direction_mask : Int -> 0 <= direction-mask <= 15
	 *    lower_limit : Int -> 0 <= lower-limit <= 255
	 *    upper_limit : Int -> 0 <= upper-limit <= 255
	 * @return
	 */
// 	public function plug_in_erode(image:Image, drawable:Drawable, propagate_mode:Int, propagating_channel:Int, propagating_rate:Float, direction_mask:Int, lower_limit:Int, upper_limit:Int):Void;

	/**
	 * Save file in the DICOM file format
	 *   by Dov Grobgeld
	 *   2003
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save
	 *    raw_filename : String -> The name of the file to save
	 * @return
	 */
	public function file_dicom_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Displays a dialog box with a message.
	 *   by Manish Singh
	 *   1998
	 * @param
	 *    message : String -> Message to display in the dialog
	 * @return
	 */
	public function gimp_message(message:String):Void;

	/**
	 * Remove empty borders from the image
	 *   by Tim Newsome
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_autocrop(image:Image, drawable:Drawable):Void;

	/**
	 * Saves files in the PNM file format
	 *   by Erik Nygren
	 *   1996
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    raw : Int -> Specify non-zero for raw output, zero for ascii output
	 * @return
	 */
	public function file_pnm_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, raw:Int):Void;

	/**
	 * Add gradients, patterns, shadows and bump maps to the selected region (or alpha)
	 *   by Hrvoje Horvat (hhorvat@@open.hr)
	 *   14/04/1998
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    gradient : String -> Blend gradient (text)
	 *    toggle : Int -> Text gradient reverse
	 *    gradient : String -> Blend gradient (outline)
	 *    toggle : Int -> Outline gradient reverse
	 *    value : Float -> Outline size
	 *    color : Color -> Background colour
	 *    toggle : Int -> Use pattern for text instead of gradient
	 *    pattern : String -> Pattern (text)
	 *    toggle : Int -> Use pattern for outline instead of gradient
	 *    pattern : String -> Pattern (outline)
	 *    toggle : Int -> Use pattern overlay
	 *    pattern : String -> Pattern (overlay)
	 *    toggle : Int -> Default bumpmap settings
	 *    toggle : Int -> Shadow
	 *    value : Float -> Shadow X offset
	 *    value : Float -> Shadow Y offset
	 * @return
	 */
// 	public function script_fu_glossy_logo_alpha(image:Image, drawable:Drawable, gradient:String, toggle:Int, gradient:String, toggle:Int, value:Float, color:Color, toggle:Int, pattern:String, toggle:Int, pattern:String, toggle:Int, pattern:String, toggle:Int, toggle:Int, value:Float, value:Float):Void;

	/**
	 * Set the compositing color of the specified channel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    channel : Channel -> The channel
	 *    color : Color -> The new channel compositing color
	 * @return
	 */
	public function gimp_channel_set_color(channel:Channel, color:Color):Void;

	/**
	 * Extends a bezier stroke with a lineto.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 *    x0 : Float -> The x-coordinate of the lineto
	 *    y0 : Float -> The y-coordinate of the lineto
	 * @return
	 */
	public function gimp_vectors_bezier_stroke_lineto(vectors:Vectors, stroke_id:Int, x0:Float, y0:Float):Void;

	/**
	 * Sets the current brush in a brush selection dialog.
	 *   by Andy Thomas
	 *   1998
	 * @param
	 *    brush_callback : String -> The name of the callback registered for this pop-up
	 *    brush_name : String -> The name of the brush to set as selected
	 *    opacity : Float -> The initial opacity of the brush (0 <= opacity <= 100)
	 *    spacing : Int -> The initial spacing of the brush (if < 0 then use brush default spacing) (spacing <= 1000)
	 *    paint_mode : Int -> The initial paint mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 * @return
	 */
	public function gimp_brushes_set_popup(brush_callback:String, brush_name:String, opacity:Float, spacing:Int, paint_mode:Int):Void;

	/**
	 * Deprecated: Use 'gimp-context-get-pattern' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 *    name : String -> The pattern name
	 *    width : Int -> The pattern width
	 *    height : Int -> The pattern height
	 */
	public function gimp_patterns_get_pattern():python.Tuple.Tuple3<String,Int,Int>;

	/**
	 * Refresh current brushes. This function always succeeds.
	 *   by Seth Burgess
	 *   1997
	 * @param
	 * @return
	 */
	public function gimp_brushes_refresh():Void;

	/**
	 * Curl up one of the image corners
	 *   by Federico Mena Quintero and Simon Budig
	 *   July 2004, 1.0
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    colors : Int -> FG- and BG-Color (0), Current gradient (1), Current gradient reversed (2)
	 *    edge : Int -> Edge to curl (1-4, clockwise, starting in the lower right edge)
	 *    orientation : Int -> Vertical (0), Horizontal (1)
	 *    shade : Int -> Shade the region under the curl (1) or not (0)
	 * @return
	 *    Curl-Layer : Layer -> The new layer with the curl.
	 */
// 	public function plug_in_pagecurl(image:Image, drawable:Drawable, colors:Int, edge:Int, orientation:Int, shade:Int):Layer;

	/**
	 * Replicate the segment range
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    start_segment : Int -> The index of the first segment to operate on (start-segment >= 0)
	 *    end_segment : Int -> The index of the last segment to operate on. If negative, the selection will extend to the end of the string.
	 *    replicate_times : Int -> The number of times to replicate (2 <= replicate-times <= 20)
	 * @return
	 */
	public function gimp_gradient_segment_range_replicate(name:String, start_segment:Int, end_segment:Int, replicate_times:Int):Void;

	/**
	 * Set the specified pattern as the active pattern.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The name of the pattern
	 * @return
	 */
	public function gimp_context_set_pattern(name:String):Void;

	/**
	 * Draw a labyrinth
	 *   by Kevin Turner <kevint@@poboxes.com>
	 *   1997, 1998
	 * @param
	 *    image : Image -> (unused)
	 *    drawable : Drawable -> ID of drawable
	 *    width : Int -> Width of the passages
	 *    height : Int -> Height of the passages
	 *    tileable : Int -> Tileable maze?
	 *    algorithm : Int -> Generation algorithm(0=DEPTH FIRST, 1=PRIM'S ALGORITHM)
	 *    seed : Int -> Random Seed
	 *    multiple : Int -> Multiple (use 57)
	 *    offset : Int -> Offset (use 1)
	 * @return
	 */
// 	public function plug_in_maze(image:Image, drawable:Drawable, width:Int, height:Int, tileable:Int, algorithm:Int, seed:Int, multiple:Int, offset:Int):Void;

	/**
	 * Retrieve information about the specified pattern (including pixels).
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The pattern name.
	 * @return
	 *    width : Int -> The pattern width
	 *    height : Int -> The pattern height
	 *    bpp : Int -> The pattern bpp
	 *    num-color-bytes : Int -> Number of pattern bytes (num-color-bytes >= 0)
	 *    color-bytes : Array<Int> -> The pattern data.
	 */
	public function gimp_pattern_get_pixels(name:String):Dynamic;

	/**
	 * Border the image's selection
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    radius : Int -> Radius of border (in pixels) (radius >= 0)
	 * @return
	 */
	public function gimp_selection_border(image:Image, radius:Int):Void;

	/**
	 * Randomly interchange some pixels with neighbors
	 *   by Miles O'Neal  <meo@@rru.com>
	 *   1995-1998
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    rndm_pct : Float -> Randomization percentage (1.0 - 100.0)
	 *    rndm_rcount : Float -> Repeat count (1.0 - 100.0)
	 *    randomize : Int -> Use random seed @{ TRUE, FALSE @}
	 *    seed : Int -> Seed value (used only if randomize is FALSE)
	 * @return
	 */
// 	public function plug_in_randomize_pick(image:Image, drawable:Drawable, rndm_pct:Float, rndm_rcount:Float, randomize:Int, seed:Int):Void;

	/**
	 * Causes GIMP to exit gracefully.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    force : Int -> Force GIMP to quit without asking (TRUE or FALSE)
	 * @return
	 */
	public function gimp_quit(force:Int):Void;

	/**
	 * Paste the clipboard contents into a new brush
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005-09-25
	 * @param
	 *    string : String -> Brush name
	 *    string : String -> File name
	 *    value : Float -> Spacing
	 * @return
	 */
// 	public function script_fu_paste_as_brush(string:String, string:String, value:Float):Void;

	/**
	 * Register an additional menu path for a plug-in procedure.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    procedure_name : String -> The procedure for which to install the menu path
	 *    menu_path : String -> The procedure's additional menu path
	 * @return
	 */
	public function gimp_plugin_menu_register(procedure_name:String, menu_path:String):Void;

	/**
	 * Randomize hue/saturation/value independently
	 *   by Shuji Narazaki (narazaki@@InetQ.or.jp)
	 *   1997
	 * @param
	 *    image : Image -> Input image (not used)
	 *    drawable : Drawable -> Input drawable
	 *    holdness : Int -> convolution strength
	 *    hue_distance : Int -> scattering of hue angle [0,180]
	 *    saturation_distance : Int -> distribution distance on saturation axis [0,255]
	 *    value_distance : Int -> distribution distance on value axis [0,255]
	 * @return
	 */
// 	public function plug_in_hsv_noise(image:Image, drawable:Drawable, holdness:Int, hue_distance:Int, saturation_distance:Int, value_distance:Int):Void;

	/**
	 * Alter colors in various psychedelic ways
	 *   by Martin Weber (martweb@@gmx.net)
	 *   24th April 1998
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    redfrequency : Float -> Red/hue component frequency factor
	 *    redangle : Float -> Red/hue component angle factor (0-360)
	 *    greenfrequency : Float -> Green/saturation component frequency factor
	 *    greenangle : Float -> Green/saturation component angle factor (0-360)
	 *    bluefrequency : Float -> Blue/luminance component frequency factor
	 *    blueangle : Float -> Blue/luminance component angle factor (0-360)
	 *    colormodel : Int -> Color model @{ RGB-MODEL (0), HSL-MODEL (1) @}
	 *    redmode : Int -> Red/hue application mode @{ TRUE, FALSE @}
	 *    greenmode : Int -> Green/saturation application mode @{ TRUE, FALSE @}
	 *    bluemode : Int -> Blue/luminance application mode @{ TRUE, FALSE @}
	 * @return
	 */
// 	public function plug_in_alienmap2(image:Image, drawable:Drawable, redfrequency:Float, redangle:Float, greenfrequency:Float, greenangle:Float, bluefrequency:Float, blueangle:Float, colormodel:Int, redmode:Int, greenmode:Int, bluemode:Int):Void;

	/**
	 * Create a logo resembling a chipped wood carving
	 *   by Adrian Likins <adrian@@gimp.org>
	 *   1997
	 * @param
	 *    string : String -> Text
	 *    font : String -> Font
	 *    value : Float -> Font size (pixels)
	 *    value : Float -> Chip amount
	 *    value : Float -> Blur amount
	 *    toggle : Int -> Invert
	 *    toggle : Int -> Drop shadow
	 *    toggle : Int -> Keep bump layer
	 *    toggle : Int -> Fill BG with pattern
	 *    toggle : Int -> Keep background
	 *    pattern : String -> Pattern
	 * @return
	 */
// 	public function script_fu_chip_away_logo(string:String, font:String, value:Float, value:Float, value:Float, toggle:Int, toggle:Int, toggle:Int, toggle:Int, toggle:Int, pattern:String):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-rotate' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    angle : Float -> The angle of rotation (radians)
	 *    auto_center : Int -> Whether to automatically rotate around the selection center (TRUE or FALSE)
	 *    center_x : Int -> The hor. coordinate of the center of rotation
	 *    center_y : Int -> The vert. coordinate of the center of rotation
	 *    transform_direction : Int -> Direction of transformation @{ TRANSFORM-FORWARD (0), TRANSFORM-BACKWARD (1) @}
	 *    interpolation : Int -> Type of interpolation @{ INTERPOLATION-NONE (0), INTERPOLATION-LINEAR (1), INTERPOLATION-CUBIC (2), INTERPOLATION-LANCZOS (3) @}
	 *    supersample : Int -> This parameter is ignored, supersampling is performed based on the interpolation type (TRUE or FALSE)
	 *    recursion_level : Int -> Maximum recursion level used for supersampling (3 is a nice value) (recursion-level >= 1)
	 *    clip_result : Int -> How to clip results @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 * @return
	 *    drawable : Drawable -> The rotated drawable
	 */
	public function gimp_drawable_transform_rotate(drawable:Drawable, angle:Float, auto_center:Int, center_x:Int, center_y:Int, transform_direction:Int, interpolation:Int, supersample:Int, recursion_level:Int, clip_result:Int):Drawable;

	/**
	 * Invert the contents of the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 */
	public function gimp_invert(drawable:Drawable):Void;

	/**
	 * Scale the image using the default interpolation method.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    new_width : Int -> New image width (1 <= new-width <= 262144)
	 *    new_height : Int -> New image height (1 <= new-height <= 262144)
	 * @return
	 */
	public function gimp_image_scale(image:Image, new_width:Int, new_height:Int):Void;

	/**
	 * Close the gradient selection dialog.
	 *   by Andy Thomas
	 *   1998
	 * @param
	 *    gradient_callback : String -> The name of the callback registered for this pop-up
	 * @return
	 */
	public function gimp_gradients_close_popup(gradient_callback:String):Void;

	/**
	 * Get the current GIMP foreground color.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 *    foreground : Color -> The foreground color
	 */
	public function gimp_context_get_foreground():Color;

	/**
	 * Generate diffraction patterns
	 *   by Federico Mena Quintero
	 *   April 1997, 0.5
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    lam_r : Float -> Light frequency (red)
	 *    lam_g : Float -> Light frequency (green)
	 *    lam_b : Float -> Light frequency (blue)
	 *    contour_r : Float -> Number of contours (red)
	 *    contour_g : Float -> Number of contours (green)
	 *    contour_b : Float -> Number of contours (blue)
	 *    edges_r : Float -> Number of sharp edges (red)
	 *    edges_g : Float -> Number of sharp edges (green)
	 *    edges_b : Float -> Number of sharp edges (blue)
	 *    brightness : Float -> Brightness and shifting/fattening of contours
	 *    scattering : Float -> Scattering (Speed vs. quality)
	 *    polarization : Float -> Polarization
	 * @return
	 */
// 	public function plug_in_diffraction(image:Image, drawable:Drawable, lam_r:Float, lam_g:Float, lam_b:Float, contour_r:Float, contour_g:Float, contour_b:Float, edges_r:Float, edges_g:Float, edges_b:Float, brightness:Float, scattering:Float, polarization:Float):Void;

	/**
	 * returns polygonal approximation of the stroke.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 *    precision : Float -> The precision used for the approximation
	 * @return
	 *    num-coords : Int -> The number of floats returned. (num-coords >= 0)
	 *    coords : Array<Float> -> List of the coords along the path (x0, y0, x1, y1, ...).
	 *    closed : Int -> Whether the stroke is closed or not. (TRUE or FALSE)
	 */
	public function gimp_vectors_stroke_interpolate(vectors:Vectors, stroke_id:Int, precision:Float):python.Tuple.Tuple3<Int,Array<Float>,Int>;

	/**
	 * Convert a selection to a brush
	 *   by Adrian Likins <adrian@@gimp.org>
	 *   10/07/97
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    string : String -> Brush name
	 *    string : String -> File name
	 *    value : Float -> Spacing
	 * @return
	 */
// 	public function script_fu_selection_to_brush(image:Image, drawable:Drawable, string:String, string:String, value:Float):Void;

	/**
	 * Apply a gaussian blur
	 *   by Spencer Kimball, Peter Mattis & Sven Neumann
	 *   1995-2000
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    horizontal : Float -> Horizontal radius of gaussian blur (in pixels, > 0.0)
	 *    vertical : Float -> Vertical radius of gaussian blur (in pixels, > 0.0)
	 * @return
	 */
// 	public function plug_in_gauss_iir2(image:Image, drawable:Drawable, horizontal:Float, vertical:Float):Void;

	/**
	 * Scattering pixel values in HSV space
	 *   by Shuji Narazaki (narazaki@@InetQ.or.jp)
	 *   1997
	 * @param
	 *    image : Image -> Input image (not used)
	 *    drawable : Drawable -> Input drawable
	 *    holdness : Int -> convolution strength
	 *    hue_distance : Int -> scattering of hue angle [0,180]
	 *    saturation_distance : Int -> distribution distance on saturation axis [0,255]
	 *    value_distance : Int -> distribution distance on value axis [0,255]
	 * @return
	 */
// 	public function plug_in_scatter_hsv(image:Image, drawable:Drawable, holdness:Int, hue_distance:Int, saturation_distance:Int, value_distance:Int):Void;

	/**
	 * Add a shadow and a highlight to the selected region (or alpha)
	 *   by Spencer Kimball
	 *   1996
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    color : Color -> Background colour
	 *    color : Color -> Text colour
	 * @return
	 */
// 	public function script_fu_basic2_logo_alpha(image:Image, drawable:Drawable, color:Color, color:Color):Void;

	/**
	 * Create an elliptical brush with feathered edges
	 *   by Seth Burgess <sjburges@@ou.edu>
	 *   1997
	 * @param
	 *    string : String -> Name
	 *    value : Float -> Width
	 *    value : Float -> Height
	 *    value : Float -> Feathering
	 *    value : Float -> Spacing
	 * @return
	 */
// 	public function script_fu_make_brush_elliptical_feathered(string:String, value:Float, value:Float, value:Float, value:Float):Void;

	/**
	 * Follows a link to an image in a .desktop file
	 *   by Sven Neumann
	 *   2006
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_desktop_link_load(filename:String, raw_filename:String):Image;

	/**
	 * Fill the current selection with lava
	 *   by Adrian Likins <adrian@@gimp.org>
	 *   10/12/97
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Seed
	 *    value : Float -> Size
	 *    value : Float -> Roughness
	 *    gradient : String -> Gradient
	 *    toggle : Int -> Keep selection
	 *    toggle : Int -> Separate layer
	 *    toggle : Int -> Use current gradient
	 * @return
	 */
// 	public function script_fu_lava(image:Image, drawable:Drawable, value:Float, value:Float, value:Float, gradient:String, toggle:Int, toggle:Int, toggle:Int):Void;

	/**
	 * Set the 'lock content' state of the specified item.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2009
	 * @param
	 *    item : Item -> The item
	 *    lock_content : Int -> The new item 'lock content' state (TRUE or FALSE)
	 * @return
	 */
	public function gimp_item_set_lock_content(item:Item, lock_content:Int):Void;

	/**
	 * Set the indentation of the first line in a text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    indent : Float -> The indentation for the first line. (-8192 <= indent <= 8192)
	 * @return
	 */
	public function gimp_text_layer_set_indent(layer:Layer, indent:Float):Void;

	/**
	 * Modify brightness/contrast in the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    brightness : Int -> Brightness adjustment (-127 <= brightness <= 127)
	 *    contrast : Int -> Contrast adjustment (-127 <= contrast <= 127)
	 * @return
	 */
	public function gimp_brightness_contrast(drawable:Drawable, brightness:Int, contrast:Int):Void;

	/**
	 * Registers a file save handler procedure.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    procedure_name : String -> The name of the procedure to be used for saving
	 *    extensions : String -> comma separated list of extensions this handler can save (i.e. \jpg,jpeg\)
	 *    prefixes : String -> comma separated list of prefixes this handler can save (i.e. \http:,ftp:\)
	 * @return
	 */
	public function gimp_register_save_handler(procedure_name:String, extensions:String, prefixes:String):Void;

	/**
	 * Returns the tattoo state associated with the image.
	 *   by Andy Thomas
	 *   2000
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    tattoo-state : Int -> The tattoo state
	 */
	public function gimp_image_get_tattoo_state(image:Image):Int;

	/**
	 * Saves a file by extension.
	 *   by Josh MacDonald
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name as entered by the user
	 * @return
	 */
	public function gimp_file_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * loads files of the Alias|Wavefront Pix file format
	 *   by Michael Taylor
	 *   1997
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_pix_load(filename:String, raw_filename:String):Image;

	/**
	 * Set the transform resize type.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    transform_resize : Int -> The transform resize type @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 * @return
	 */
	public function gimp_context_set_transform_resize(transform_resize:Int):Void;

	/**
	 * Simulate distortion produced by a fuzzy or low-res monitor
	 *   by Adam D. Moss (adam@@foxbox.org)
	 *   2nd March 1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    pattern_number : Int -> Type of RGB pattern to use
	 *    additive : Int -> Whether the function adds the result to the original image
	 *    rotated : Int -> Whether to rotate the RGB pattern by ninety degrees
	 * @return
	 */
// 	public function plug_in_video(image:Image, drawable:Drawable, pattern_number:Int, additive:Int, rotated:Int):Void;

	/**
	 * Dodgeburn image with varying exposure. This is the same as the gimp_dodgeburn() function except that the exposure, type and mode are taken from the tools option dialog. If the dialog has not been activated then the defaults as used by the dialog will be used.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    num_strokes : Int -> Number of stroke control points (count each coordinate as 2 points) (num-strokes >= 2)
	 *    strokes : Array<Float> -> Array of stroke coordinates: @{ s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y @}
	 * @return
	 */
	public function gimp_dodgeburn_default(drawable:Drawable, num_strokes:Int, strokes:Array<Float>):Void;

	/**
	 * Reverse the order of layers in the image
	 *   by Akkana Peck
	 *   August 2006
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 * @return
	 */
// 	public function script_fu_reverse_layers(image:Image, drawable:Drawable):Void;

	/**
	 * Deprecated: Use 'gimp-vectors-get-linked' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    name : String -> The name of the path whose locked status should be obtained.
	 * @return
	 *    locked : Int -> TRUE if the path is locked, FALSE otherwise (TRUE or FALSE)
	 */
	public function gimp_path_get_locked(image:Image, name:String):Int;

	/**
	 * Apply a gaussian blur
	 *   by Spencer Kimball, Peter Mattis & Sven Neumann
	 *   1995-2000
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    horizontal : Float -> Horizontal radius of gaussian blur (in pixels, > 0.0)
	 *    vertical : Float -> Vertical radius of gaussian blur (in pixels, > 0.0)
	 * @return
	 */
// 	public function plug_in_gauss_rle2(image:Image, drawable:Drawable, horizontal:Float, vertical:Float):Void;

	/**
	 * Add a starburst to the image
	 *   by Eiichi Takamori
	 *   May 2000
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    xcenter : Int -> X coordinates of the center of supernova
	 *    ycenter : Int -> Y coordinates of the center of supernova
	 *    color : Color -> Color of supernova
	 *    radius : Int -> Radius of supernova
	 *    nspoke : Int -> Number of spokes
	 *    randomhue : Int -> Random hue
	 * @return
	 */
// 	public function plug_in_nova(image:Image, drawable:Drawable, xcenter:Int, ycenter:Int, color:Color, radius:Int, nspoke:Int, randomhue:Int):Void;

	/**
	 * Determine the color at the given drawable coordinates
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    drawable : Drawable -> The drawable to pick from
	 *    x : Float -> x coordinate of upper-left corner of rectangle
	 *    y : Float -> y coordinate of upper-left corner of rectangle
	 *    sample_merged : Int -> Use the composite image, not the drawable (TRUE or FALSE)
	 *    sample_average : Int -> Average the color of all the pixels in a specified radius (TRUE or FALSE)
	 *    average_radius : Float -> The radius of pixels to average (average-radius >= 0)
	 * @return
	 *    color : Color -> The return color
	 */
	public function gimp_image_pick_color(image:Image, drawable:Drawable, x:Float, y:Float, sample_merged:Int, sample_average:Int, average_radius:Float):Color;

	/**
	 * Simulate a cartoon by enhancing edges
	 *   by Spencer Kimball
	 *   2001
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    mask_radius : Float -> Cartoon mask radius (radius of pixel neighborhood)
	 *    pct_black : Float -> Percentage of darkened pixels to set to black (0.0 - 1.0)
	 * @return
	 */
// 	public function plug_in_cartoon(image:Image, drawable:Drawable, mask_radius:Float, pct_black:Float):Void;

	/**
	 * Deprecated: Use 'gimp-image-get-vectors' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image to list the paths from
	 * @return
	 *    num-paths : Int -> The number of paths returned. (num-paths >= 0)
	 *    path-list : Array<String> -> List of the paths belonging to this image.
	 */
	public function gimp_path_list(image:Image):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Add text at the specified location as a floating selection or a new layer.
	 *   by Martin Edlman & Sven Neumann
	 *   1998- 2001
	 * @param
	 *    image : Image -> The image
	 *    drawable : Drawable -> The affected drawable: (-1 for a new text layer)
	 *    x : Float -> The x coordinate for the left of the text bounding box
	 *    y : Float -> The y coordinate for the top of the text bounding box
	 *    text : String -> The text to generate (in UTF-8 encoding)
	 *    border : Int -> The size of the border (border >= -1)
	 *    antialias : Int -> Antialiasing (TRUE or FALSE)
	 *    size : Float -> The size of text in either pixels or points (size >= 0)
	 *    size_type : Int -> The units of specified size @{ PIXELS (0), POINTS (1) @}
	 *    fontname : String -> The name of the font
	 * @return
	 *    text-layer : Layer -> The new text layer or -1 if no layer was created.
	 */
	public function gimp_text_fontname(image:Image, drawable:Drawable, x:Float, y:Float, text:String, border:Int, antialias:Int, size:Float, size_type:Int, fontname:String):Layer;

	/**
	 * Create a new channel from a color component
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2005
	 * @param
	 *    image : Image -> The image to which to add the channel
	 *    component : Int -> The image component @{ RED-CHANNEL (0), GREEN-CHANNEL (1), BLUE-CHANNEL (2), GRAY-CHANNEL (3), INDEXED-CHANNEL (4), ALPHA-CHANNEL (5) @}
	 *    name : String -> The channel name
	 * @return
	 *    channel : Channel -> The newly created channel
	 */
	public function gimp_channel_new_from_component(image:Image, component:Int, name:String):Channel;

	/**
	 * Returns the height of the drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 *    height : Int -> Height of drawable
	 */
	public function gimp_drawable_height(drawable:Drawable):Int;

	/**
	 * Removes a parasite from an image.
	 *   by Jay Cox
	 *   1998
	 * @param
	 *    image : Image -> The image
	 *    name : String -> The name of the parasite to detach from an image.
	 * @return
	 */
	public function gimp_image_detach_parasite(image:Image, name:String):Void;

	/**
	 * Get ink size sensitivity.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 * @return
	 *    size : Float -> ink size sensitivity (0 <= size <= 1)
	 */
	public function gimp_context_get_ink_size_sensitivity():Float;

	/**
	 * load FLI-movies
	 *   by Jens Ch. Restemeier
	 *   1997
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_fli_load(filename:String, raw_filename:String):Image;

	/**
	 * Refresh current fonts. This function always succeeds.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2003
	 * @param
	 * @return
	 */
	public function gimp_fonts_refresh():Void;

	/**
	 * Rotates a layer or the whole image by 90, 180 or 270 degrees
	 *   by Sven Neumann <sven@@gimp.org>, Adam D. Moss <adam@@gimp.org>
	 *   v1.0 (2000/06/18)
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    angle : Int -> Angle @{ 90 (1), 180 (2), 270 (3) @} degrees
	 *    everything : Int -> Rotate the whole image @{ TRUE, FALSE @}
	 * @return
	 */
// 	public function plug_in_rotate(image:Image, drawable:Drawable, angle:Int, everything:Int):Void;

	/**
	 * Fix images where every other row is missing
	 *   by Andrew Kieschnick
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    evenodd : Int -> Which lines to keep @{ KEEP-ODD (0), KEEP-EVEN (1) @}
	 * @return
	 */
// 	public function plug_in_deinterlace(image:Image, drawable:Drawable, evenodd:Int):Void;

	/**
	 * Add psychedelic outlines to the selected region (or alpha)
	 *   by Raphael Quinet (quinet@@gamers.org)
	 *   1999-2000
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    color : Color -> Glow colour
	 *    color : Color -> Background colour
	 *    value : Float -> Width of bands
	 *    value : Float -> Width of gaps
	 *    value : Float -> Number of bands
	 *    toggle : Int -> Fade away
	 * @return
	 */
// 	public function script_fu_alien_neon_logo_alpha(image:Image, drawable:Drawable, color:Color, color:Color, value:Float, value:Float, value:Float, toggle:Int):Void;

	/**
	 * Returns the deletion flag of the unit.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1999
	 * @param
	 *    unit_id : Int -> The unit's integer ID
	 * @return
	 *    deletion-flag : Int -> The unit's deletion flag (TRUE or FALSE)
	 */
	public function gimp_unit_get_deletion_flag(unit_id:Int):Int;

	/**
	 * Get the font from a text layer as string.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 * @return
	 *    font : String -> The font which is used in the specified text layer.
	 */
	public function gimp_text_layer_get_font(layer:Layer):String;

	/**
	 * Deprecated: Use 'gimp-item-transform-perspective' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    x0 : Float -> The new x coordinate of upper-left corner of original bounding box
	 *    y0 : Float -> The new y coordinate of upper-left corner of original bounding box
	 *    x1 : Float -> The new x coordinate of upper-right corner of original bounding box
	 *    y1 : Float -> The new y coordinate of upper-right corner of original bounding box
	 *    x2 : Float -> The new x coordinate of lower-left corner of original bounding box
	 *    y2 : Float -> The new y coordinate of lower-left corner of original bounding box
	 *    x3 : Float -> The new x coordinate of lower-right corner of original bounding box
	 *    y3 : Float -> The new y coordinate of lower-right corner of original bounding box
	 *    interpolate : Int -> Whether to use interpolation and supersampling (TRUE or FALSE)
	 *    clip_result : Int -> How to clip results @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 * @return
	 *    drawable : Drawable -> The newly mapped drawable
	 */
	public function gimp_drawable_transform_perspective_default(drawable:Drawable, x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, interpolate:Int, clip_result:Int):Drawable;

	/**
	 * Draw a grid on the image
	 *   by Tim Newsome
	 *   1997 - 2000
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    hwidth : Int -> Horizontal Width   (>= 0)
	 *    hspace : Int -> Horizontal Spacing (>= 1)
	 *    hoffset : Int -> Horizontal Offset  (>= 0)
	 *    hcolor : Color -> Horizontal Colour
	 *    hopacity : Int -> Horizontal Opacity (0...255)
	 *    vwidth : Int -> Vertical Width   (>= 0)
	 *    vspace : Int -> Vertical Spacing (>= 1)
	 *    voffset : Int -> Vertical Offset  (>= 0)
	 *    vcolor : Color -> Vertical Colour
	 *    vopacity : Int -> Vertical Opacity (0...255)
	 *    iwidth : Int -> Intersection Width   (>= 0)
	 *    ispace : Int -> Intersection Spacing (>= 0)
	 *    ioffset : Int -> Intersection Offset  (>= 0)
	 *    icolor : Color -> Intersection Colour
	 *    iopacity : Int -> Intersection Opacity (0...255)
	 * @return
	 */
// 	public function plug_in_grid(image:Image, drawable:Drawable, hwidth:Int, hspace:Int, hoffset:Int, hcolor:Color, hopacity:Int, vwidth:Int, vspace:Int, voffset:Int, vcolor:Color, vopacity:Int, iwidth:Int, ispace:Int, ioffset:Int, icolor:Color, iopacity:Int):Void;

	/**
	 * Simplest, most commonly used way of blurring
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    horizontal : Float -> Horizontal radius of gaussian blur (in pixels, > 0.0)
	 *    vertical : Float -> Vertical radius of gaussian blur (in pixels, > 0.0)
	 *    method : Int -> Blur method @{ IIR (0), RLE (1) @}
	 * @return
	 */
// 	public function plug_in_gauss(image:Image, drawable:Drawable, horizontal:Float, vertical:Float, method:Int):Void;

	/**
	 * saves files compressed with gzip
	 *   by Daniel Risacher
	 *   1995-1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name entered
	 * @return
	 */
	public function file_gz_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Retrieves the specified buffer's width.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 *    buffer_name : String -> The buffer name
	 * @return
	 *    width : Int -> The buffer width
	 */
	public function gimp_buffer_get_width(buffer_name:String):Int;

	/**
	 * Get the combination mode of the specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 * @return
	 *    mode : Int -> The layer combination mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 */
	public function gimp_layer_get_mode(layer:Layer):Int;

	/**
	 * Add a glowing hot metal effect to the selected region (or alpha)
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Effect size (pixels)
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_glowing_logo_alpha(image:Image, drawable:Drawable, value:Float, color:Color):Void;

	/**
	 * Returns the PID of the host GIMP process.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 * @return
	 *    pid : Int -> The PID
	 */
	public function gimp_getpid():Int;

	/**
	 * Cut from the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable to cut from
	 * @return
	 *    non-empty : Int -> TRUE if the cut was successful, FALSE if there was nothing to copy from (TRUE or FALSE)
	 */
	public function gimp_edit_cut(drawable:Drawable):Int;

	/**
	 * Deprecated: Use 'gimp-image-select-ellipse' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    x : Float -> x coordinate of upper-left corner of ellipse bounding box
	 *    y : Float -> y coordinate of upper-left corner of ellipse bounding box
	 *    width : Float -> The width of the ellipse (width >= 0)
	 *    height : Float -> The height of the ellipse (height >= 0)
	 *    operation : Int -> The selection operation @{ CHANNEL-OP-ADD (0), CHANNEL-OP-SUBTRACT (1), CHANNEL-OP-REPLACE (2), CHANNEL-OP-INTERSECT (3) @}
	 *    antialias : Int -> Antialiasing (TRUE or FALSE)
	 *    feather : Int -> Feather option for selections (TRUE or FALSE)
	 *    feather_radius : Float -> Radius for feather operation (feather-radius >= 0)
	 * @return
	 */
	public function gimp_ellipse_select(image:Image, x:Float, y:Float, width:Float, height:Float, operation:Int, antialias:Int, feather:Int, feather_radius:Float):Void;

	/**
	 * Set the text of a text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    text : String -> The new text to set
	 * @return
	 */
	public function gimp_text_layer_set_text(layer:Layer, text:String):Void;

	/**
	 * Get the antialias setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 * @return
	 *    antialias : Int -> The antialias setting (TRUE or FALSE)
	 */
	public function gimp_context_get_antialias():Int;

	/**
	 * saves files in the Targa file format
	 *   by Raphael FRANCOIS, Gordon Matzigkeit
	 *   1997,2000
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    rle : Int -> Use RLE compression
	 *    origin : Int -> Image origin (0 = top-left, 1 = bottom-left)
	 * @return
	 */
	public function file_tga_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, rle:Int, origin:Int):Void;

	/**
	 * Returns the URI for the specified image.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2009
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    uri : String -> The URI
	 */
	public function gimp_image_get_uri(image:Image):String;

	/**
	 * Grow lighter areas of the image
	 *   by Shuji Narazaki (narazaki@@InetQ.or.jp)
	 *   1996-1997
	 * @param
	 *    image : Image -> Input image (not used)
	 *    drawable : Drawable -> Input drawable
	 *    propagate_mode : Int -> propagate 0:white, 1:black, 2:middle value 3:foreground to peak, 4:foreground, 5:background, 6:opaque, 7:transparent
	 *    propagating_channel : Int -> channels which values are propagated
	 *    propagating_rate : Float -> 0.0 <= propagatating_rate <= 1.0
	 *    direction_mask : Int -> 0 <= direction-mask <= 15
	 *    lower_limit : Int -> 0 <= lower-limit <= 255
	 *    upper_limit : Int -> 0 <= upper-limit <= 255
	 * @return
	 */
// 	public function plug_in_dilate(image:Image, drawable:Drawable, propagate_mode:Int, propagating_channel:Int, propagating_rate:Float, direction_mask:Int, lower_limit:Int, upper_limit:Int):Void;

	/**
	 * Set the sample threshold setting.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2011
	 * @param
	 *    sample_threshold : Float -> The sample threshold setting (0 <= sample-threshold <= 1)
	 * @return
	 */
	public function gimp_context_set_sample_threshold(sample_threshold:Float):Void;

	/**
	 * Invokes the Gimp palette selection.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2002
	 * @param
	 *    palette_callback : String -> The callback PDB proc to call when palette selection is made
	 *    popup_title : String -> Title of the palette selection dialog
	 *    initial_palette : String -> The name of the palette to set as the first selected
	 * @return
	 */
	public function gimp_palettes_popup(palette_callback:String, popup_title:String, initial_palette:String):Void;

	/**
	 * Gets the value of the pixel at the specified coordinates.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    x_coord : Int -> The x coordinate (x-coord >= 0)
	 *    y_coord : Int -> The y coordinate (y-coord >= 0)
	 * @return
	 *    num-channels : Int -> The number of channels for the pixel (num-channels >= 0)
	 *    pixel : Array<Int> -> The pixel value
	 */
	public function gimp_drawable_get_pixel(drawable:Drawable, x_coord:Int, y_coord:Int):python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * Resize the box of a text layer.
	 *   by Barak Itkin <lightningismyname@@gmail.com>
	 *   2009
	 * @param
	 *    layer : Layer -> The text layer
	 *    width : Float -> The new box width in pixels (0 <= width <= 262144)
	 *    height : Float -> The new box height in pixels (0 <= height <= 262144)
	 * @return
	 */
	public function gimp_text_layer_resize(layer:Layer, width:Float, height:Float):Void;

	/**
	 * A scheme interpreter for scripting GIMP operations
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 * @return
	 */
	public function extension_script_fu():Void;

	/**
	 * Set the apply mask setting of the specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 *    apply_mask : Int -> The new layer's apply mask setting (TRUE or FALSE)
	 * @return
	 */
	public function gimp_layer_set_apply_mask(layer:Layer, apply_mask:Int):Void;

	/**
	 * Create a clickable imagemap
	 *   by Maurits Rijk
	 *   1998-2005
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_imagemap(image:Image, drawable:Drawable):Void;

	/**
	 * Returns the drawable's type.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 *    type : Int -> The drawable's type @{ RGB-IMAGE (0), RGBA-IMAGE (1), GRAY-IMAGE (2), GRAYA-IMAGE (3), INDEXED-IMAGE (4), INDEXEDA-IMAGE (5) @}
	 */
	public function gimp_drawable_type(drawable:Drawable):Int;

	/**
	 * Set foreground to the average color of the image border
	 *   by Philipp Klaus
	 *   1998
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    thickness : Int -> Border size to take in count
	 *    bucket_exponent : Int -> Bits for bucket size (default=4: 16 Levels)
	 * @return
	 *    borderaverage : Color -> The average color of the specified border.
	 */
// 	public function plug_in_borderaverage(image:Image, drawable:Drawable, thickness:Int, bucket_exponent:Int):Color;

	/**
	 * Get the image's active drawable
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    drawable : Drawable -> The active drawable
	 */
	public function gimp_image_get_active_drawable(image:Image):Drawable;

	/**
	 * Associates the specified identifier with the supplied data.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    identifier : String -> The identifier associated with data
	 *    bytes : Int -> The number of bytes in the data (bytes >= 1)
	 *    data : Array<Int> -> A byte array containing data
	 * @return
	 */
	public function gimp_procedural_db_set_data(identifier:String, bytes:Int, data:Array<Int>):Void;

	/**
	 * Export the active palette as a java.util.Hashtable<String, Color>
	 *   by Barak Itkin <lightningismyname@@gmail.com>
	 *   May 15th, 2009
	 * @param
	 *    dirname : String -> Folder for the output file
	 *    string : String -> The name of the file to create (if a file with this name already exist, it will be replaced)
	 * @return
	 */
	public function gimp_palette_export_java(dirname:String, string:String):Void;

	/**
	 * Duplicates a gradient
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 * @return
	 *    copy-name : String -> The name of the gradient's copy
	 */
	public function gimp_gradient_duplicate(name:String):String;

	/**
	 * Convert the selected region (or alpha) into a neon-sign like object
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Effect size (pixels)
	 *    color : Color -> Background colour
	 *    color : Color -> Glow colour
	 *    toggle : Int -> Create shadow
	 * @return
	 */
// 	public function script_fu_neon_logo_alpha(image:Image, drawable:Drawable, value:Float, color:Color, color:Color, toggle:Int):Void;

	/**
	 * Sets the background color of an image's grid.
	 *   by Sylvain Foret
	 *   2005
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    bgcolor : Color -> The image's grid background color
	 */
	public function gimp_image_grid_get_background_color(image:Image):Color;

	/**
	 * Convert the image into randomly rotated square blobs
	 *   by Spencer Kimball & Tracy Scott
	 *   1996
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    tile_size : Float -> Average diameter of each tile (in pixels)
	 *    tile_saturation : Float -> Expand tiles by this amount
	 *    bg_color : Int -> Background color @{ BLACK (0), BG (1) @}
	 * @return
	 */
// 	public function plug_in_cubism(image:Image, drawable:Drawable, tile_size:Float, tile_saturation:Float, bg_color:Int):Void;

	/**
	 * Gets the offset of an image's grid.
	 *   by Sylvain Foret
	 *   2005
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    xoffset : Float -> The image's grid horizontal offset
	 *    yoffset : Float -> The image's grid vertical offset
	 */
	public function gimp_image_grid_get_offset(image:Image):python.Tuple.Tuple2<Float,Float>;

	/**
	 * Associates a MIME type with a file handler procedure.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 *    procedure_name : String -> The name of the procedure to associate a MIME type with.
	 *    mime_type : String -> A single MIME type, like for example \image/jpeg\.
	 * @return
	 */
	public function gimp_register_file_handler_mime(procedure_name:String, mime_type:String):Void;

	/**
	 * Create a new display for the specified image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    display : Display -> The new display
	 */
	public function gimp_display_new(image:Image):Display;

	/**
	 * Sets the specified palette entry in the specified palette.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2004
	 * @param
	 *    name : String -> The palette name
	 *    entry_num : Int -> The entry to retrieve
	 *    entry_name : String -> The new name
	 * @return
	 */
	public function gimp_palette_entry_set_name(name:String, entry_num:Int, entry_name:String):Void;

	/**
	 * Gets the foreground color of an image's grid.
	 *   by Sylvain Foret
	 *   2005
	 * @param
	 *    image : Image -> The image
	 *    fgcolor : Color -> The new foreground color
	 * @return
	 */
	public function gimp_image_grid_set_foreground_color(image:Image, fgcolor:Color):Void;

	/**
	 * Server for remote Script-Fu operation
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    port : Int -> The port on which to listen for requests
	 *    logfile : String -> The file to log server activity to
	 * @return
	 */
// 	public function plug_in_script_fu_server(port:Int, logfile:String):Void;

	/**
	 * Loads a small preview from a PostScript or PDF document
	 *   by Peter Kirchgessner <peter@@kirchgessner.net>
	 *   v1.17  19-Sep-2004
	 * @param
	 *    filename : String -> The name of the file to load
	 *    thumb_size : Int -> Preferred thumbnail size
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_ps_load_thumb(filename:String, thumb_size:Int):Image;

	/**
	 * Deprecated: Use 'gimp-layer-remove-mask' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    layer : Layer -> The layer from which to remove mask
	 *    mode : Int -> Removal mode @{ MASK-APPLY (0), MASK-DISCARD (1) @}
	 * @return
	 */
	public function gimp_image_remove_layer_mask(image:Image, layer:Layer, mode:Int):Void;

	/**
	 * Create an image filled with a Truchet pattern
	 *   by Adrian Likins <aklikins@@eos.ncsu.edu>
	 *   1997
	 * @param
	 *    value : Float -> Block size
	 *    value : Float -> Thickness
	 *    color : Color -> Background colour
	 *    color : Color -> Foreground colour
	 *    value : Float -> Number of X tiles
	 *    value : Float -> Number of Y tiles
	 * @return
	 */
// 	public function script_fu_truchet(value:Float, value:Float, color:Color, color:Color, value:Float, value:Float):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-rotate' instead.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    interpolation : Int -> Whether to use interpolation (TRUE or FALSE)
	 *    angle : Float -> The angle of rotation (radians)
	 * @return
	 *    drawable : Drawable -> The rotated drawable
	 */
	public function gimp_rotate(drawable:Drawable, interpolation:Int, angle:Float):Drawable;

	/**
	 * Get the directory of the current GUI theme.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 * @return
	 *    theme-dir : String -> The GUI theme dir
	 */
	public function gimp_get_theme_dir():String;

	/**
	 * Set ink size sensitivity.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 *    size : Float -> ink size sensitivity (0 <= size <= 1)
	 * @return
	 */
	public function gimp_context_set_ink_size_sensitivity(size:Float):Void;

	/**
	 * Sets the specified image's active layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    active_layer : Layer -> The new image active layer
	 * @return
	 */
	public function gimp_image_set_active_layer(image:Image, active_layer:Layer):Void;

	/**
	 * Create an image filled with a camouflage pattern
	 *   by Chris Gutteridge: cjg@@ecs.soton.ac.uk
	 *   Chris Gutteridge / ECS @@ University of Southampton, England
	 * @param
	 *    value : Float -> Image size
	 *    value : Float -> Granularity
	 *    color : Color -> Colour 1
	 *    color : Color -> Colour 2
	 *    color : Color -> Colour 3
	 *    toggle : Int -> Smooth
	 *    toggle : Int -> Flatten image
	 * @return
	 */
// 	public function script_fu_camo_pattern(value:Float, value:Float, color:Color, color:Color, color:Color, toggle:Int, toggle:Int):Void;

	/**
	 * loads files given an URI
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-2008
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_uri_load(filename:String, raw_filename:String):Image;

	/**
	 * Modify hue, lightness, and saturation in the specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    hue_range : Int -> Range of affected hues @{ ALL-HUES (0), RED-HUES (1), YELLOW-HUES (2), GREEN-HUES (3), CYAN-HUES (4), BLUE-HUES (5), MAGENTA-HUES (6) @}
	 *    hue_offset : Float -> Hue offset in degrees (-180 <= hue-offset <= 180)
	 *    lightness : Float -> Lightness modification (-100 <= lightness <= 100)
	 *    saturation : Float -> Saturation modification (-100 <= saturation <= 100)
	 * @return
	 */
	public function gimp_hue_saturation(drawable:Drawable, hue_range:Int, hue_offset:Float, lightness:Float, saturation:Float):Void;

	/**
	 * Create a new layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image to which to add the layer
	 *    width : Int -> The layer width (1 <= width <= 262144)
	 *    height : Int -> The layer height (1 <= height <= 262144)
	 *    type : Int -> The layer type @{ RGB-IMAGE (0), RGBA-IMAGE (1), GRAY-IMAGE (2), GRAYA-IMAGE (3), INDEXED-IMAGE (4), INDEXEDA-IMAGE (5) @}
	 *    name : String -> The layer name
	 *    opacity : Float -> The layer opacity (0 <= opacity <= 100)
	 *    mode : Int -> The layer combination mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 * @return
	 *    layer : Layer -> The newly created layer
	 */
	public function gimp_layer_new(image:Image, width:Int, height:Int, type:Int, name:String, opacity:Float, mode:Int):Layer;

	/**
	 * Create a logo with a shiny look and bevelled edges
	 *   by Brian McFee <keebler@@wco.com>
	 *   April 1998
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    value : Float -> Bevel height (sharpness)
	 *    value : Float -> Bevel width
	 *    color : Color -> Background colour
	 * @return
	 */
// 	public function script_fu_gradient_bevel_logo(string:String, value:Float, font:String, value:Float, value:Float, color:Color):Void;

	/**
	 * Create an embossing effect using a tiled image as a bump map
	 *   by Federico Mena Quintero, Jens Lautenbacher & Sven Neumann
	 *   April 2000, 3.0-pre1-ac2
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    bumpmap : Drawable -> Bump map drawable
	 *    azimuth : Float -> Azimuth
	 *    elevation : Float -> Elevation
	 *    depth : Int -> Depth
	 *    xofs : Int -> X offset
	 *    yofs : Int -> Y offset
	 *    waterlevel : Int -> Level that full transparency should represent
	 *    ambient : Int -> Ambient lighting factor
	 *    compensate : Int -> Compensate for darkening @{ TRUE, FALSE @}
	 *    invert : Int -> Invert bumpmap @{ TRUE, FALSE @}
	 *    type : Int -> Type of map @{ LINEAR (0), SPHERICAL (1), SINUSOIDAL (2) @}
	 * @return
	 */
// 	public function plug_in_bump_map_tiled(image:Image, drawable:Drawable, bumpmap:Drawable, azimuth:Float, elevation:Float, depth:Int, xofs:Int, yofs:Int, waterlevel:Int, ambient:Int, compensate:Int, invert:Int, type:Int):Void;

	/**
	 * Set the brush spacing.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 *    spacing : Int -> The brush spacing (0 <= spacing <= 1000)
	 * @return
	 */
	public function gimp_brush_set_spacing(name:String, spacing:Int):Void;

	/**
	 * Draw a nearly arbitrary arrow in your image
	 *   by Berengar W. Lehr <B-Ranger@@web.de>
	 *   19th November 2009
	 * @param
	 *    image : Image -> The image
	 *    drawable : Drawable -> The drawable
	 *    value : Float -> Length of wings (LoW = AL/X) *
	 *    value : Float -> Angle between arrow and wing in degree
	 *    toggle : Int -> Fill head of arrow?
	 *    value : Float -> Percentage size of notch of arrow head
	 *    value : Float -> Brush Thickness* (BS = AL/X)
	 *    toggle : Int -> Use first path point as arrow head?
	 *    toggle : Int -> Delete path after arrow was drawn?
	 *    toggle : Int -> Use new layer for arrow?
	 *    toggle : Int -> Draw double headed arrow?
	 *    toggle : Int -> *) Positive values stand for absolute pixel size,
	 * @return
	 */
// 	public function script_fu_draw_arrow(image:Image, drawable:Drawable, value:Float, value:Float, toggle:Int, value:Float, value:Float, toggle:Int, toggle:Int, toggle:Int, toggle:Int, toggle:Int):Void;

	/**
	 * Remove the specified path from the image.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    image : Image -> The image
	 *    vectors : Vectors -> The vectors object
	 * @return
	 */
	public function gimp_image_remove_vectors(image:Image, vectors:Vectors):Void;

	/**
	 * Displace the contents of the specified drawable
	 *   by Stephen Robert Norris & (ported to 1.0 by) Spencer Kimball
	 *   1996
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    amount_x : Float -> Displace multiplier for X or radial direction
	 *    amount_y : Float -> Displace multiplier for Y or tangent (degrees) direction
	 *    do_x : Int -> Displace in X or radial direction?
	 *    do_y : Int -> Displace in Y or tangent direction?
	 *    displace_map_x : Drawable -> Displacement map for X or radial direction
	 *    displace_map_y : Drawable -> Displacement map for Y or tangent direction
	 *    displace_type : Int -> Edge behavior @{ WRAP (1), SMEAR (2), BLACK (3) @}
	 * @return
	 */
// 	public function plug_in_displace_polar(image:Image, drawable:Drawable, amount_x:Float, amount_y:Float, do_x:Int, do_y:Int, displace_map_x:Drawable, displace_map_y:Drawable, displace_type:Int):Void;

	/**
	 * Register a help path for a plug-in.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2000
	 * @param
	 *    domain_name : String -> The XML namespace of the plug-in's help pages
	 *    domain_uri : String -> The root URI of the plug-in's help pages
	 * @return
	 */
	public function gimp_plugin_help_register(domain_name:String, domain_uri:String):Void;

	/**
	 * Set the visibility of the specified item.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    item : Item -> The item
	 *    visible : Int -> The new item visibility (TRUE or FALSE)
	 * @return
	 */
	public function gimp_item_set_visible(item:Item, visible:Int):Void;

	/**
	 * Saves a thumbnail for the given image
	 *   by Josh MacDonald
	 *   1997
	 * @param
	 *    image : Image -> The image
	 *    filename : String -> The name of the file the thumbnail belongs to
	 * @return
	 */
	public function gimp_file_save_thumbnail(image:Image, filename:String):Void;

	/**
	 * Add a drop shadow to the selected region (or alpha)
	 *   by Sven Neumann <sven@@gimp.org>
	 *   1999/12/21
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Offset X
	 *    value : Float -> Offset Y
	 *    value : Float -> Blur radius
	 *    color : Color -> Colour
	 *    value : Float -> Opacity
	 *    toggle : Int -> Allow resizing
	 * @return
	 */
// 	public function script_fu_drop_shadow(image:Image, drawable:Drawable, value:Float, value:Float, value:Float, color:Color, value:Float, toggle:Int):Void;

	/**
	 * Erase every other row or column
	 *   by Federico Mena Quintero
	 *   June 1997
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    option : Int -> Rows/cols
	 *    option : Int -> Even/odd
	 *    option : Int -> Erase/fill
	 * @return
	 */
// 	public function script_fu_erase_rows(image:Image, drawable:Drawable, option:Int, option:Int, option:Int):Void;

	/**
	 * Retrieves the right endpoint color of the specified segment
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    segment : Int -> The index of the segment within the gradient (segment >= 0)
	 * @return
	 *    color : Color -> The return color
	 *    opacity : Float -> The opacity of the endpoint
	 */
	public function gimp_gradient_segment_get_right_color(name:String, segment:Int):python.Tuple.Tuple2<Color,Float>;

	/**
	 * saves files in the JPEG file format
	 *   by Spencer Kimball, Peter Mattis & others
	 *   1995-2007
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    quality : Float -> Quality of saved image (0 <= quality <= 1)
	 *    smoothing : Float -> Smoothing factor for saved image (0 <= smoothing <= 1)
	 *    optimize : Int -> Optimization of entropy encoding parameters (0/1)
	 *    progressive : Int -> Enable progressive jpeg image loading (0/1)
	 *    comment : String -> Image comment
	 *    subsmp : Int -> The subsampling option number
	 *    baseline : Int -> Force creation of a baseline JPEG (non-baseline JPEGs can't be read by all decoders) (0/1)
	 *    restart : Int -> Interval of restart markers (in MCU rows, 0 = no restart markers)
	 *    dct : Int -> DCT algorithm to use (speed/quality tradeoff)
	 * @return
	 */
	public function file_jpeg_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, quality:Float, smoothing:Float, optimize:Int, progressive:Int, comment:String, subsmp:Int, baseline:Int, restart:Int, dct:Int):Void;

	/**
	 * Queries the plugin database for its contents.
	 *   by Andy Thomas
	 *   1998
	 * @param
	 *    search_string : String -> If not an empty string then use this as a search pattern
	 * @return
	 *    num-plugins : Int -> The number of plugins (num-plugins >= 0)
	 *    menu-path : Array<String> -> The menu path of the plugin
	 *    num-plugins : Int -> The number of plugins (num-plugins >= 0)
	 *    plugin-accelerator : Array<String> -> String representing keyboard accelerator (could be empty string)
	 *    num-plugins : Int -> The number of plugins (num-plugins >= 0)
	 *    plugin-location : Array<String> -> Location of the plugin program
	 *    num-plugins : Int -> The number of plugins (num-plugins >= 0)
	 *    plugin-image-type : Array<String> -> Type of image that this plugin will work on
	 *    num-plugins : Int -> The number of plugins (num-plugins >= 0)
	 *    plugin-install-time : Array<Int> -> Time that the plugin was installed
	 *    num-plugins : Int -> The number of plugins (num-plugins >= 0)
	 *    plugin-real-name : Array<String> -> The internal name of the plugin
	 */
	public function gimp_plugins_query(search_string:String):Dynamic;

	/**
	 * Queries the procedural database for its contents using regular expression matching.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    name : String -> The regex for procedure name
	 *    blurb : String -> The regex for procedure blurb
	 *    help : String -> The regex for procedure help
	 *    author : String -> The regex for procedure author
	 *    copyright : String -> The regex for procedure copyright
	 *    date : String -> The regex for procedure date
	 *    proc_type : String -> The regex for procedure type: @{ 'Internal GIMP procedure', 'GIMP Plug-In', 'GIMP Extension', 'Temporary Procedure' @}
	 * @return
	 *    num-matches : Int -> The number of matching procedures (num-matches >= 0)
	 *    procedure-names : Array<String> -> The list of procedure names
	 */
	public function gimp_procedural_db_query(name:String, blurb:String, help:String, author:String, copyright:String, date:String, proc_type:String):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Get the language used in the text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer.
	 * @return
	 *    language : String -> The language used in the text layer.
	 */
	public function gimp_text_layer_get_language(layer:Layer):String;

	/**
	 * Loads files of Windows BMP file format
	 *   by Alexander Schulz
	 *   1997
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_bmp_load(filename:String, raw_filename:String):Image;

	/**
	 * Returns the current state of where warning messages are displayed.
	 *   by Manish Singh
	 *   1998
	 * @param
	 * @return
	 *    handler : Int -> The current handler type @{ MESSAGE-BOX (0), CONSOLE (1), ERROR-CONSOLE (2) @}
	 */
	public function gimp_message_get_handler():Int;

	/**
	 * Returns the singular form of the unit.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1999
	 * @param
	 *    unit_id : Int -> The unit's integer ID
	 * @return
	 *    singular : String -> The unit's singular form
	 */
	public function gimp_unit_get_singular(unit_id:Int):String;

	/**
	 * Smear colors to simulate an oil painting
	 *   by Torsten Martinsen
	 *   1996
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    mask_size : Int -> Oil paint mask size
	 *    mode : Int -> Algorithm @{ RGB (0), INTENSITY (1) @}
	 * @return
	 */
// 	public function plug_in_oilify(image:Image, drawable:Drawable, mask_size:Int, mode:Int):Void;

	/**
	 * set additional parameters for procedure file-ps-load
	 *   by Peter Kirchgessner <peter@@kirchgessner.net>
	 *   v1.17  19-Sep-2004
	 * @param
	 *    resolution : Int -> Resolution to interprete image (dpi)
	 *    width : Int -> Desired width
	 *    height : Int -> Desired height
	 *    check_bbox : Int -> 0: Use width/height, 1: Use BoundingBox
	 *    pages : String -> Pages to load (e.g.: 1,3,5-7)
	 *    coloring : Int -> 4: b/w, 5: grey, 6: colour image, 7: automatic
	 *    text_alpha_bits : Int -> 1, 2, or 4
	 *    graphic_alpha_bits : Int -> 1, 2, or 4
	 * @return
	 */
	public function file_ps_load_setargs(resolution:Int, width:Int, height:Int, check_bbox:Int, pages:String, coloring:Int, text_alpha_bits:Int, graphic_alpha_bits:Int):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-2d' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    source_x : Float -> X coordinate of the transformation center
	 *    source_y : Float -> Y coordinate of the transformation center
	 *    scale_x : Float -> Amount to scale in x direction
	 *    scale_y : Float -> Amount to scale in y direction
	 *    angle : Float -> The angle of rotation (radians)
	 *    dest_x : Float -> X coordinate of where the center goes
	 *    dest_y : Float -> Y coordinate of where the center goes
	 *    interpolate : Int -> Whether to use interpolation and supersampling (TRUE or FALSE)
	 *    clip_result : Int -> How to clip results @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 * @return
	 *    drawable : Drawable -> The transformed drawable
	 */
	public function gimp_drawable_transform_2d_default(drawable:Drawable, source_x:Float, source_y:Float, scale_x:Float, scale_y:Float, angle:Float, dest_x:Float, dest_y:Float, interpolate:Int, clip_result:Int):Drawable;

	/**
	 * Convert the image into irregular tiles
	 *   by Spencer Kimball
	 *   1996
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    tile_size : Float -> Average diameter of each tile (in pixels)
	 *    tile_height : Float -> Apparent height of each tile (in pixels)
	 *    tile_spacing : Float -> Inter-tile spacing (in pixels)
	 *    tile_neatness : Float -> Deviation from perfectly formed tiles (0.0 - 1.0)
	 *    tile_allow_split : Int -> Allows splitting tiles at hard edges
	 *    light_dir : Float -> Direction of light-source (in degrees)
	 *    color_variation : Float -> Magnitude of random color variations (0.0 - 1.0)
	 *    antialiasing : Int -> Enables smoother tile output at the cost of speed
	 *    color_averaging : Int -> Tile color based on average of subsumed pixels
	 *    tile_type : Int -> Tile geometry @{ SQUARES (0), HEXAGONS (1), OCTAGONS (2), TRIANGLES (3) @}
	 *    tile_surface : Int -> Surface characteristics @{ SMOOTH (0), ROUGH (1) @}
	 *    grout_color : Int -> Grout color (black/white or fore/background) @{ BW (0), FG-BG (1) @}
	 * @return
	 */
// 	public function plug_in_mosaic(image:Image, drawable:Drawable, tile_size:Float, tile_height:Float, tile_spacing:Float, tile_neatness:Float, tile_allow_split:Int, light_dir:Float, color_variation:Float, antialiasing:Int, color_averaging:Int, tile_type:Int, tile_surface:Int, grout_color:Int):Void;

	/**
	 * List all parasites.
	 *   by Marc Lehmann
	 *   1999
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    num-parasites : Int -> The number of attached parasites (num-parasites >= 0)
	 *    parasites : Array<String> -> The names of currently attached parasites
	 */
	public function gimp_item_get_parasite_list(item:Item):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * Offset the drawable by the specified amounts in the X and Y directions
	 *   by Spencer Kimball & Peter Mattis
	 *   1997
	 * @param
	 *    drawable : Drawable -> The drawable to offset
	 *    wrap_around : Int -> wrap image around or fill vacated regions (TRUE or FALSE)
	 *    fill_type : Int -> fill vacated regions of drawable with background or transparent @{ OFFSET-BACKGROUND (0), OFFSET-TRANSPARENT (1) @}
	 *    offset_x : Int -> offset by this amount in X direction
	 *    offset_y : Int -> offset by this amount in Y direction
	 * @return
	 */
	public function gimp_drawable_offset(drawable:Drawable, wrap_around:Int, fill_type:Int, offset_x:Int, offset_y:Int):Void;

	/**
	 * Interactively modify the image colors
	 *   by Pavel Grinfeld (pavel@@ml.com)
	 *   27th March 1997
	 * @param
	 *    image : Image -> Input image (used for indexed images)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_filter_pack(image:Image, drawable:Drawable):Void;

	/**
	 * Slice the image into subimages using guides
	 *   by Adam D. Moss (adam@@foxbox.org)
	 *   1998
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable (unused)
	 * @return
	 *    image-count : Int -> Number of images created
	 *    image-ids : Array<Int> -> Output images
	 */
// 	public function plug_in_guillotine(image:Image, drawable:Drawable):python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * Find and fix pixels that may be unsafely bright
	 *   by Eric L. Hernes, Alan Wm Paeth
	 *   1997
	 * @param
	 *    image : Image -> The Image
	 *    drawable : Drawable -> The Drawable
	 *    mode : Int -> Mode @{ NTSC (0), PAL (1) @}
	 *    action : Int -> The action to perform
	 *    new_layer : Int -> Create a new layer @{ TRUE, FALSE @}
	 * @return
	 */
// 	public function plug_in_hot(image:Image, drawable:Drawable, mode:Int, action:Int, new_layer:Int):Void;

	/**
	 * Rotates the image by the specified degrees.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2003
	 * @param
	 *    image : Image -> The image
	 *    rotate_type : Int -> Angle of rotation @{ ROTATE-90 (0), ROTATE-180 (1), ROTATE-270 (2) @}
	 * @return
	 */
	public function gimp_image_rotate(image:Image, rotate_type:Int):Void;

	/**
	 * Load a file in X10 or X11 bitmap (XBM) file format
	 *   by Gordon Matzigkeit
	 *   1998
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_xbm_load(filename:String, raw_filename:String):Image;

	/**
	 * Twist or smear image in many different ways
	 *   by John P. Beale
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    amount : Float -> Pixel displacement multiplier
	 *    warp_map : Drawable -> Displacement control map
	 *    iter : Int -> Iteration count (last required argument)
	 *    dither : Float -> Random dither amount (first optional argument)
	 *    angle : Float -> Angle of gradient vector rotation
	 *    wrap_type : Int -> Edge behavior: @{ WRAP (0), SMEAR (1), BLACK (2), COLOR (3) @}
	 *    mag_map : Drawable -> Magnitude control map
	 *    mag_use : Int -> Use magnitude map: @{ FALSE (0), TRUE (1) @}
	 *    substeps : Int -> Substeps between image updates
	 *    grad_map : Int -> Gradient control map
	 *    grad_scale : Float -> Scaling factor for gradient map (0=don't use)
	 *    vector_map : Int -> Fixed vector control map
	 *    vector_scale : Float -> Scaling factor for fixed vector map (0=don't use)
	 *    vector_angle : Float -> Angle for fixed vector map
	 * @return
	 */
// 	public function plug_in_warp(image:Image, drawable:Drawable, amount:Float, warp_map:Drawable, iter:Int, dither:Float, angle:Float, wrap_type:Int, mag_map:Drawable, mag_use:Int, substeps:Int, grad_map:Int, grad_scale:Float, vector_map:Int, vector_scale:Float, vector_angle:Float):Void;

	/**
	 * Retrieves the specified buffer's image type.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2005
	 * @param
	 *    buffer_name : String -> The buffer name
	 * @return
	 *    image-type : Int -> The buffer image type @{ RGB (0), GRAY (1), INDEXED (2) @}
	 */
	public function gimp_buffer_get_image_type(buffer_name:String):Int;

	/**
	 * Set brush size in pixels.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 *    size : Float -> brush size in pixels (size >= 0)
	 * @return
	 */
	public function gimp_context_set_brush_size(size:Float):Void;

	/**
	 * Blend the opacity of the segment range.
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    start_segment : Int -> The index of the first segment to operate on (start-segment >= 0)
	 *    end_segment : Int -> The index of the last segment to operate on. If negative, the selection will extend to the end of the string.
	 * @return
	 */
	public function gimp_gradient_segment_range_blend_opacity(name:String, start_segment:Int, end_segment:Int):Void;

	/**
	 * Reorder the specified item within its item tree
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to reorder
	 *    parent : Item -> The new parent item
	 *    position : Int -> The new position of the item
	 * @return
	 */
	public function gimp_image_reorder_item(image:Image, item:Item, parent:Item, position:Int):Void;

	/**
	 * Add a jigsaw-puzzle pattern to the image
	 *   by Nigel Wetten
	 *   May 2000
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    x : Int -> Number of tiles across > 0
	 *    y : Int -> Number of tiles down > 0
	 *    style : Int -> The style/shape of the jigsaw puzzle @{ 0, 1 @}
	 *    blend_lines : Int -> Number of lines for shading bevels >= 0
	 *    blend_amount : Float -> The power of the light highlights 0 =< 5
	 * @return
	 */
// 	public function plug_in_jigsaw(image:Image, drawable:Drawable, x:Int, y:Int, style:Int, blend_lines:Int, blend_amount:Float):Void;

	/**
	 * Returns the width of the drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 *    width : Int -> Width of drawable
	 */
	public function gimp_drawable_width(drawable:Drawable):Int;

	/**
	 * Deprecated: Use 'gimp-item-transform-matrix' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    coeff_0_0 : Float -> coefficient (0,0) of the transformation matrix
	 *    coeff_0_1 : Float -> coefficient (0,1) of the transformation matrix
	 *    coeff_0_2 : Float -> coefficient (0,2) of the transformation matrix
	 *    coeff_1_0 : Float -> coefficient (1,0) of the transformation matrix
	 *    coeff_1_1 : Float -> coefficient (1,1) of the transformation matrix
	 *    coeff_1_2 : Float -> coefficient (1,2) of the transformation matrix
	 *    coeff_2_0 : Float -> coefficient (2,0) of the transformation matrix
	 *    coeff_2_1 : Float -> coefficient (2,1) of the transformation matrix
	 *    coeff_2_2 : Float -> coefficient (2,2) of the transformation matrix
	 *    transform_direction : Int -> Direction of transformation @{ TRANSFORM-FORWARD (0), TRANSFORM-BACKWARD (1) @}
	 *    interpolation : Int -> Type of interpolation @{ INTERPOLATION-NONE (0), INTERPOLATION-LINEAR (1), INTERPOLATION-CUBIC (2), INTERPOLATION-LANCZOS (3) @}
	 *    supersample : Int -> This parameter is ignored, supersampling is performed based on the interpolation type (TRUE or FALSE)
	 *    recursion_level : Int -> Maximum recursion level used for supersampling (3 is a nice value) (recursion-level >= 1)
	 *    clip_result : Int -> How to clip results @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 * @return
	 *    drawable : Drawable -> The transformed drawable
	 */
	public function gimp_drawable_transform_matrix(drawable:Drawable, coeff_0_0:Float, coeff_0_1:Float, coeff_0_2:Float, coeff_1_0:Float, coeff_1_1:Float, coeff_1_2:Float, coeff_2_0:Float, coeff_2_1:Float, coeff_2_2:Float, transform_direction:Int, interpolation:Int, supersample:Int, recursion_level:Int, clip_result:Int):Drawable;

	/**
	 * Loads files of Compuserve GIF file format
	 *   by Spencer Kimball, Peter Mattis, Adam Moss, David Koblas
	 *   1995-2006
	 * @param
	 *    filename : String -> The name of the file to load
	 *    raw_filename : String -> The name entered
	 * @return
	 *    image : Image -> Output image
	 */
	public function file_gif_load(filename:String, raw_filename:String):Image;

	/**
	 * Stroke the specified vectors object
	 *   by Simon Budig
	 *   2006
	 * @param
	 *    drawable : Drawable -> The drawable to stroke to
	 *    vectors : Vectors -> The vectors object
	 * @return
	 */
	public function gimp_edit_stroke_vectors(drawable:Drawable, vectors:Vectors):Void;

	/**
	 * Set ink angle in degrees.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 *    angle : Float -> ink angle in degrees (-90 <= angle <= 90)
	 * @return
	 */
	public function gimp_context_set_ink_angle(angle:Float):Void;

	/**
	 * Add a cloth-like texture to the selected region (or alpha)
	 *   by Tim Newsome <drz@@froody.bloke.com>
	 *   4/11/97
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    value : Float -> Blur X
	 *    value : Float -> Blur Y
	 *    value : Float -> Azimuth
	 *    value : Float -> Elevation
	 *    value : Float -> Depth
	 * @return
	 */
// 	public function script_fu_clothify(image:Image, drawable:Drawable, value:Float, value:Float, value:Float, value:Float, value:Float):Void;

	/**
	 * Returns if the specified image's image component is active.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    component : Int -> The image component @{ RED-CHANNEL (0), GREEN-CHANNEL (1), BLUE-CHANNEL (2), GRAY-CHANNEL (3), INDEXED-CHANNEL (4), ALPHA-CHANNEL (5) @}
	 * @return
	 *    active : Int -> Component is active (TRUE or FALSE)
	 */
	public function gimp_image_get_component_active(image:Image, component:Int):Int;

	/**
	 * Save files in PDF format
	 *   by Barak Itkin
	 *   August 2009
	 * @param
	 *    images : Array<Int> -> Input image for each page (An image can appear more than once)
	 *    count : Int -> The amount of images entered (This will be the amount of pages). 1 <= count <= MAX_PAGE_COUNT
	 *    vectorize : Int -> Convert bitmaps to vector graphics where possible. TRUE or FALSE
	 *    ignore_hidden : Int -> Omit hidden layers and layers with zero opacity. TRUE or FALSE
	 *    apply_masks : Int -> Apply layer masks before saving. TRUE or FALSE (Keeping them will not change the output)
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 * @return
	 */
	public function file_pdf_save_multi(images:Array<Int>, count:Int, vectorize:Int, ignore_hidden:Int, apply_masks:Int, filename:String, raw_filename:String):Void;

	/**
	 * Retrieve the value of an XMP property
	 *   by Raphaël Quinet <raphael@@gimp.org>
	 *   2005
	 * @param
	 *    image : Image -> Input image
	 *    schema : String -> XMP schema prefix or URI
	 *    property : String -> XMP property name
	 * @return
	 *    value : String -> XMP property value
	 */
// 	public function plug_in_metadata_get_simple(image:Image, schema:String, property:String):String;

	/**
	 * Create a multi-layer image by adding a ripple effect to the current image
	 *   by Adam D. Moss (adam@@foxbox.org)
	 *   1997
	 * @param
	 *    image : Image -> Image to animage
	 *    drawable : Drawable -> Drawable to animate
	 *    value : Float -> Rippling strength
	 *    value : Float -> Number of frames
	 *    option : Int -> Edge behaviour
	 * @return
	 */
// 	public function script_fu_ripply_anim(image:Image, drawable:Drawable, value:Float, value:Float, option:Int):Void;

	/**
	 * save an OpenRaster (.ora) file
	 *   by Jon Nordby
	 *   2009
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    filename : String -> The name of the file
	 *    raw_filename : String -> The name of the file
	 * @return
	 */
	public function file_openraster_save(image:Image, drawable:Drawable, filename:String, raw_filename:String):Void;

	/**
	 * Reconnect displays from one image to another image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    old_image : Image -> The old image (must have at least one display)
	 *    new_image : Image -> The new image (must not have a display)
	 * @return
	 */
	public function gimp_displays_reconnect(old_image:Image, new_image:Image):Void;

	/**
	 * Modifies the intensity curve(s) for specified drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The drawable
	 *    channel : Int -> The channel to modify @{ HISTOGRAM-VALUE (0), HISTOGRAM-RED (1), HISTOGRAM-GREEN (2), HISTOGRAM-BLUE (3), HISTOGRAM-ALPHA (4), HISTOGRAM-RGB (5) @}
	 *    num_bytes : Int -> The number of bytes in the new curve (always 256) (num-bytes >= 0)
	 *    curve : Array<Int> -> The explicit curve
	 * @return
	 */
	public function gimp_curves_explicit(drawable:Drawable, channel:Int, num_bytes:Int, curve:Array<Int>):Void;

	/**
	 * Deselect the entire image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_selection_none(image:Image):Void;

	/**
	 * Anchor the specified floating selection to its associated drawable.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    floating_sel : Layer -> The floating selection
	 * @return
	 */
	public function gimp_floating_sel_anchor(floating_sel:Layer):Void;

	/**
	 * Create a logo with gradients, patterns, shadows and bump maps
	 *   by Hrvoje Horvat (hhorvat@@open.hr)
	 *   14/04/1998
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    gradient : String -> Blend gradient (text)
	 *    toggle : Int -> Text gradient reverse
	 *    gradient : String -> Blend gradient (outline)
	 *    toggle : Int -> Outline gradient reverse
	 *    value : Float -> Outline size
	 *    color : Color -> Background colour
	 *    toggle : Int -> Use pattern for text instead of gradient
	 *    pattern : String -> Pattern (text)
	 *    toggle : Int -> Use pattern for outline instead of gradient
	 *    pattern : String -> Pattern (outline)
	 *    toggle : Int -> Use pattern overlay
	 *    pattern : String -> Pattern (overlay)
	 *    toggle : Int -> Default bumpmap settings
	 *    toggle : Int -> Shadow
	 *    value : Float -> Shadow X offset
	 *    value : Float -> Shadow Y offset
	 * @return
	 */
// 	public function script_fu_glossy_logo(string:String, value:Float, font:String, gradient:String, toggle:Int, gradient:String, toggle:Int, value:Float, color:Color, toggle:Int, pattern:String, toggle:Int, pattern:String, toggle:Int, pattern:String, toggle:Int, toggle:Int, value:Float, value:Float):Void;

	/**
	 * Create a State Of The Art chromed logo
	 *   by Spencer Kimball
	 *   1997
	 * @param
	 *    value : Float -> Chrome saturation
	 *    value : Float -> Chrome lightness
	 *    value : Float -> Chrome factor
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    filename : String -> Environment map
	 *    color : Color -> Highlight balance
	 *    color : Color -> Chrome balance
	 * @return
	 */
// 	public function script_fu_sota_chrome_logo(value:Float, value:Float, value:Float, string:String, value:Float, font:String, filename:String, color:Color, color:Color):Void;

	/**
	 * Invert the brightness of each pixel
	 *   by Adam D. Moss (adam@@foxbox.org), Mukund Sivaraman <muks@@mukund.org>
	 *   27th March 1997, 12th June 2006
	 * @param
	 *    image : Image -> Input image (used for indexed images)
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_vinvert(image:Image, drawable:Drawable):Void;

	/**
	 * Get the number of spikes for a generated brush.
	 *   by Bill Skaggs <weskaggs@@primate.ucdavis.edu>
	 *   2004
	 * @param
	 *    name : String -> The brush name
	 * @return
	 *    spikes : Int -> The number of spikes on the brush.
	 */
	public function gimp_brush_get_spikes(name:String):Int;

	/**
	 * Set the opacity.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 *    opacity : Float -> The opacity (0 <= opacity <= 100)
	 * @return
	 */
	public function gimp_context_set_opacity(opacity:Float):Void;

	/**
	 * Create a checkerboard pattern
	 *   by Brent Burton & the Edward Blevins
	 *   1997
	 * @param
	 *    image : Image -> Input image (unused)
	 *    drawable : Drawable -> Input drawable
	 *    check_mode : Int -> Check mode @{ REGULAR (0), PSYCHOBILY (1) @}
	 *    check_size : Int -> Size of the checks
	 * @return
	 */
// 	public function plug_in_checkerboard(image:Image, drawable:Drawable, check_mode:Int, check_size:Int):Void;

	/**
	 * Returns the specified image's name.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    name : String -> The name
	 */
	public function gimp_image_get_name(image:Image):String;

	/**
	 * Special effects that nobody understands
	 *   by Tom Bech & Federico Mena Quintero
	 *   Version 0.14, September 24 1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_lic(image:Image, drawable:Drawable):Void;

	/**
	 * Create a new channel.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image to which to add the channel
	 *    width : Int -> The channel width (1 <= width <= 262144)
	 *    height : Int -> The channel height (1 <= height <= 262144)
	 *    name : String -> The channel name
	 *    opacity : Float -> The channel opacity (0 <= opacity <= 100)
	 *    color : Color -> The channel compositing color
	 * @return
	 *    channel : Channel -> The newly created channel
	 */
	public function gimp_channel_new(image:Image, width:Int, height:Int, name:String, opacity:Float, color:Color):Channel;

	/**
	 * Dumps the current contents of the procedural database
	 *   by Spencer Kimball & Josh MacDonald
	 *   1995-1996
	 * @param
	 *    filename : String -> The dump filename
	 * @return
	 */
	public function gimp_procedural_db_dump(filename:String):Void;

	/**
	 * Returns the exported URI for the specified image.
	 *   by Eric Grivel <gimp@@lumenssolutions.com>
	 *   2011
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    uri : String -> The exported URI
	 */
	public function gimp_image_get_exported_uri(image:Image):String;

	/**
	 * Move the position of an entire segment range by a delta.
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    start_segment : Int -> The index of the first segment to operate on (start-segment >= 0)
	 *    end_segment : Int -> The index of the last segment to operate on. If negative, the selection will extend to the end of the string.
	 *    delta : Float -> The delta to move the segment range (-1 <= delta <= 1)
	 *    control_compress : Int -> Whether or not to compress the neighboring segments (TRUE or FALSE)
	 * @return
	 *    final-delta : Float -> The final delta by which the range moved
	 */
	public function gimp_gradient_segment_range_move(name:String, start_segment:Int, end_segment:Int, delta:Float, control_compress:Int):Float;

	/**
	 * Make an image look like an old photo
	 *   by Chris Gutteridge
	 *   16th April 1998
	 * @param
	 *    image : Image -> The image
	 *    drawable : Drawable -> The layer
	 *    toggle : Int -> Defocus
	 *    value : Float -> Border size
	 *    toggle : Int -> Sepia
	 *    toggle : Int -> Mottle
	 *    toggle : Int -> Work on copy
	 * @return
	 */
// 	public function script_fu_old_photo(image:Image, drawable:Drawable, toggle:Int, value:Float, toggle:Int, toggle:Int, toggle:Int):Void;

	/**
	 * Measure the length of the given stroke.
	 *   by Simon Budig
	 *   2005
	 * @param
	 *    vectors : Vectors -> The vectors object
	 *    stroke_id : Int -> The stroke ID
	 *    precision : Float -> The precision used for the approximation
	 * @return
	 *    length : Float -> The length (in pixels) of the given stroke.
	 */
	public function gimp_vectors_stroke_get_length(vectors:Vectors, stroke_id:Int, precision:Float):Float;

	/**
	 * Decode an XMP packet
	 *   by Raphaël Quinet <raphael@@gimp.org>
	 *   2005
	 * @param
	 *    image : Image -> Input image
	 *    xmp : String -> XMP packet
	 * @return
	 */
// 	public function plug_in_metadata_decode_xmp(image:Image, xmp:String):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-scale' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    x0 : Float -> The new x coordinate of the upper-left corner of the scaled region
	 *    y0 : Float -> The new y coordinate of the upper-left corner of the scaled region
	 *    x1 : Float -> The new x coordinate of the lower-right corner of the scaled region
	 *    y1 : Float -> The new y coordinate of the lower-right corner of the scaled region
	 *    interpolate : Int -> Whether to use interpolation and supersampling (TRUE or FALSE)
	 *    clip_result : Int -> How to clip results @{ TRANSFORM-RESIZE-ADJUST (0), TRANSFORM-RESIZE-CLIP (1), TRANSFORM-RESIZE-CROP (2), TRANSFORM-RESIZE-CROP-WITH-ASPECT (3) @}
	 * @return
	 *    drawable : Drawable -> The scaled drawable
	 */
	public function gimp_drawable_transform_scale_default(drawable:Drawable, x0:Float, y0:Float, x1:Float, y1:Float, interpolate:Int, clip_result:Int):Drawable;

	/**
	 * Retrieves the gradient segment's coloring type
	 *   by Shlomi Fish <shlomif@@iglu.org.il>
	 *   2003
	 * @param
	 *    name : String -> The gradient name
	 *    segment : Int -> The index of the segment within the gradient (segment >= 0)
	 * @return
	 *    coloring-type : Int -> The coloring type of the segment @{ GRADIENT-SEGMENT-RGB (0), GRADIENT-SEGMENT-HSV-CCW (1), GRADIENT-SEGMENT-HSV-CW (2) @}
	 */
	public function gimp_gradient_segment_get_coloring_type(name:String, segment:Int):Int;

	/**
	 * Create intermediate layers to produce an animated 'burn-in' transition between two layers
	 *   by Roland Berger roland@@fuchur.leute.server.de
	 *   January 2001
	 * @param
	 *    image : Image -> The image
	 *    drawable : Drawable -> Layer to animate
	 *    color : Color -> Glow colour
	 *    toggle : Int -> Fadeout
	 *    value : String -> Fadeout width
	 *    value : String -> Corona width
	 *    value : String -> After glow
	 *    toggle : Int -> Add glowing
	 *    toggle : Int -> Prepare for GIF
	 *    value : String -> Speed (pixels/frame)
	 * @return
	 */
// 	public function script_fu_burn_in_anim(image:Image, drawable:Drawable, color:Color, toggle:Int, value:String, value:String, value:String, toggle:Int, toggle:Int, value:String):Void;

	/**
	 * Changes the text in the progress bar for the current plug-in.
	 *   by Sven Neumann <sven@@gimp.org>
	 *   2005
	 * @param
	 *    message : String -> Message to use in the progress dialog
	 * @return
	 */
	public function gimp_progress_set_text(message:String):Void;

	/**
	 * Get the transform direction.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   2010
	 * @param
	 * @return
	 *    transform-direction : Int -> The transform direction @{ TRANSFORM-FORWARD (0), TRANSFORM-BACKWARD (1) @}
	 */
	public function gimp_context_get_transform_direction():Int;

	/**
	 * Creates a new unit and returns it's integer ID.
	 *   by Michael Natterer <mitch@@gimp.org>
	 *   1999
	 * @param
	 *    identifier : String -> The new unit's identifier
	 *    factor : Float -> The new unit's factor
	 *    digits : Int -> The new unit's digits
	 *    symbol : String -> The new unit's symbol
	 *    abbreviation : String -> The new unit's abbreviation
	 *    singular : String -> The new unit's singular form
	 *    plural : String -> The new unit's plural form
	 * @return
	 *    unit-id : Int -> The new unit's ID
	 */
	public function gimp_unit_new(identifier:String, factor:Float, digits:Int, symbol:String, abbreviation:String, singular:String, plural:String):Int;

	/**
	 * Create a metallic logo with reflections and perspective shadows
	 *   by Spencer Kimball & Rob Malda
	 *   1997
	 * @param
	 *    string : String -> Text
	 *    value : Float -> Font size (pixels)
	 *    font : String -> Font
	 *    color : Color -> Background colour
	 *    gradient : String -> Gradient
	 *    toggle : Int -> Gradient reverse
	 * @return
	 */
// 	public function script_fu_cool_metal_logo(string:String, value:Float, font:String, color:Color, gradient:String, toggle:Int):Void;

	/**
	 * Create a multi-layer image with an effect like a stone was thrown into the current image
	 *   by Sven Neumann <sven@@gimp.org>
	 *   1997/13/12
	 * @param
	 *    image : Image -> Image
	 *    drawable : Drawable -> Drawable
	 *    value : Float -> Amplitude
	 *    value : Float -> Wavelength
	 *    value : Float -> Number of frames
	 *    toggle : Int -> Invert direction
	 * @return
	 */
// 	public function script_fu_waves_anim(image:Image, drawable:Drawable, value:Float, value:Float, value:Float, toggle:Int):Void;

	/**
	 * Set the default RGB color profile on the image
	 *   by Sven Neumann
	 *   2006, 2007
	 * @param
	 *    image : Image -> Input image
	 * @return
	 */
// 	public function plug_in_icc_profile_set_rgb(image:Image):Void;

	/**
	 * Remove the red eye effect caused by camera flashes
	 *   by Robert Merkel <robert.merkel@@benambra.org>, Andreas Røsdal <andrearo@@stud.ntnu.no>
	 *   2006
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    threshold : Int -> Red eye threshold in percent
	 * @return
	 */
// 	public function plug_in_red_eye_removal(image:Image, drawable:Drawable, threshold:Int):Void;

	/**
	 * Deprecated: Use 'gimp-item-transform-scale' instead.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    interpolation : Int -> Whether to use interpolation (TRUE or FALSE)
	 *    x0 : Float -> The new x coordinate of the upper-left corner of the scaled region
	 *    y0 : Float -> The new y coordinate of the upper-left corner of the scaled region
	 *    x1 : Float -> The new x coordinate of the lower-right corner of the scaled region
	 *    y1 : Float -> The new y coordinate of the lower-right corner of the scaled region
	 * @return
	 *    drawable : Drawable -> The scaled drawable
	 */
	public function gimp_scale(drawable:Drawable, interpolation:Int, x0:Float, y0:Float, x1:Float, y1:Float):Drawable;

	/**
	 * Retrieve the currently active palette.
	 *   by Michael Natterer <mitch@@gimp.org> & Sven Neumann <sven@@gimp.org>
	 *   2004
	 * @param
	 * @return
	 *    name : String -> The name of the active palette
	 */
	public function gimp_context_get_palette():String;

	/**
	 * Deprecated: Use 'gimp-item-transform-flip' instead.
	 *   by João S. O. Bueno
	 *   2004
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    x0 : Float -> horz. coord. of one end of axis
	 *    y0 : Float -> vert. coord. of one end of axis
	 *    x1 : Float -> horz. coord. of other end of axis
	 *    y1 : Float -> vert. coord. of other end of axis
	 *    interpolate : Int -> Whether to use interpolation and supersampling (TRUE or FALSE)
	 *    clip_result : Int -> Whether to clip results (TRUE or FALSE)
	 * @return
	 *    drawable : Drawable -> The flipped drawable
	 */
	public function gimp_drawable_transform_flip_default(drawable:Drawable, x0:Float, y0:Float, x1:Float, y1:Float, interpolate:Int, clip_result:Int):Drawable;

	/**
	 * Invokes the Gimp gradients selection.
	 *   by Andy Thomas
	 *   1998
	 * @param
	 *    gradient_callback : String -> The callback PDB proc to call when gradient selection is made
	 *    popup_title : String -> Title of the gradient selection dialog
	 *    initial_gradient : String -> The name of the gradient to set as the first selected
	 *    sample_size : Int -> Size of the sample to return when the gradient is changed (1 <= sample-size <= 10000)
	 * @return
	 */
	public function gimp_gradients_popup(gradient_callback:String, popup_title:String, initial_gradient:String, sample_size:Int):Void;

	/**
	 * Stretch brightness values to cover the full range
	 *   by Adam D. Moss, Federico Mena Quintero
	 *   1997
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 * @return
	 */
// 	public function plug_in_normalize(image:Image, drawable:Drawable):Void;

	/**
	 * Copy a layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer to copy
	 *    add_alpha : Int -> Add an alpha channel to the copied layer (TRUE or FALSE)
	 * @return
	 *    layer-copy : Layer -> The newly copied layer
	 */
	public function gimp_layer_copy(layer:Layer, add_alpha:Int):Layer;

	/**
	 * Apply various lighting effects to an image
	 *   by Tom Bech & Federico Mena Quintero
	 *   Version 0.2.0, March 15 1998
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Input drawable
	 *    bumpdrawable : Drawable -> Bumpmap drawable (set to 0 if disabled)
	 *    envdrawable : Drawable -> Environmentmap drawable (set to 0 if disabled)
	 *    dobumpmap : Int -> Enable bumpmapping (TRUE/FALSE)
	 *    doenvmap : Int -> Enable envmapping (TRUE/FALSE)
	 *    bumpmaptype : Int -> Type of mapping (0=linear,1=log, 2=sinusoidal, 3=spherical)
	 *    lighttype : Int -> Type of lightsource (0=point,1=directional,3=spot,4=none)
	 *    lightcolor : Color -> Lightsource color (r,g,b)
	 *    lightposition_x : Float -> Lightsource position (x,y,z)
	 *    lightposition_y : Float -> Lightsource position (x,y,z)
	 *    lightposition_z : Float -> Lightsource position (x,y,z)
	 *    lightdirection_x : Float -> Lightsource direction [x,y,z]
	 *    lightdirection_y : Float -> Lightsource direction [x,y,z]
	 *    lightdirection_z : Float -> Lightsource direction [x,y,z]
	 *    ambient_intensity : Float -> Material ambient intensity (0..1)
	 *    diffuse_intensity : Float -> Material diffuse intensity (0..1)
	 *    diffuse_reflectivity : Float -> Material diffuse reflectivity (0..1)
	 *    specular_reflectivity : Float -> Material specular reflectivity (0..1)
	 *    highlight : Float -> Material highlight (0..->), note: it's expotential
	 *    antialiasing : Int -> Apply antialiasing (TRUE/FALSE)
	 *    newimage : Int -> Create a new image (TRUE/FALSE)
	 *    transparentbackground : Int -> Make background transparent (TRUE/FALSE)
	 * @return
	 */
// 	public function plug_in_lighting(image:Image, drawable:Drawable, bumpdrawable:Drawable, envdrawable:Drawable, dobumpmap:Int, doenvmap:Int, bumpmaptype:Int, lighttype:Int, lightcolor:Color, lightposition_x:Float, lightposition_y:Float, lightposition_z:Float, lightdirection_x:Float, lightdirection_y:Float, lightdirection_z:Float, ambient_intensity:Float, diffuse_intensity:Float, diffuse_reflectivity:Float, specular_reflectivity:Float, highlight:Float, antialiasing:Int, newimage:Int, transparentbackground:Int):Void;

	/**
	 * Enable/disable anti-aliasing in a text layer.
	 *   by Marcus Heese <heese@@cip.ifi.lmu.de>
	 *   2008
	 * @param
	 *    layer : Layer -> The text layer
	 *    antialias : Int -> Enable/disable antialiasing of the text (TRUE or FALSE)
	 * @return
	 */
	public function gimp_text_layer_set_antialias(layer:Layer, antialias:Int):Void;

	/**
	 * Set the opacity of the specified layer.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    layer : Layer -> The layer
	 *    opacity : Float -> The new layer opacity (0 <= opacity <= 100)
	 * @return
	 */
	public function gimp_layer_set_opacity(layer:Layer, opacity:Float):Void;

	/**
	 * Get ink speed sensitivity.
	 *   by Ed Swartz
	 *   2012
	 * @param
	 * @return
	 *    speed : Float -> ink speed sensitivity (0 <= speed <= 1)
	 */
	public function gimp_context_get_ink_speed_sensitivity():Float;

	/**
	 * Add the specified layer to the image.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    image : Image -> The image
	 *    layer : Layer -> The layer
	 *    parent : Layer -> The parent layer
	 *    position : Int -> The layer position
	 * @return
	 */
	public function gimp_image_insert_layer(image:Image, layer:Layer, parent:Layer, position:Int):Void;

	/**
	 * Loads the thumbnail for a file.
	 *   by Adam D. Moss, Sven Neumann
	 *   1999-2003
	 * @param
	 *    filename : String -> The name of the file that owns the thumbnail to load
	 * @return
	 *    width : Int -> The width of the thumbnail
	 *    height : Int -> The height of the thumbnail
	 *    thumb-data-count : Int -> The number of bytes in thumbnail data (thumb-data-count >= 0)
	 *    thumb-data : Array<Int> -> The thumbnail data
	 */
	public function gimp_file_load_thumbnail(filename:String):python.Tuple.Tuple4<Int,Int,Int,Array<Int>>;

	/**
	 * Generates a unique temporary PDB name.
	 *   by Andy Thomas
	 *   1998
	 * @param
	 * @return
	 *    temp-name : String -> A unique temporary name for a temporary PDB entry
	 */
	public function gimp_procedural_db_temp_name():String;

	/**
	 * Deprecated: Use 'gimp-image-get-vectors-by-tattoo' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    tattoo : Int -> The tattoo of the required path.
	 * @return
	 *    name : String -> The name of the path with the specified tattoo.
	 */
	public function gimp_get_path_by_tattoo(image:Image, tattoo:Int):String;

	/**
	 * save image as Encapsulated PostScript image
	 *   by Peter Kirchgessner <peter@@kirchgessner.net>
	 *   v1.17  19-Sep-2004
	 * @param
	 *    image : Image -> Input image
	 *    drawable : Drawable -> Drawable to save
	 *    filename : String -> The name of the file to save the image in
	 *    raw_filename : String -> The name of the file to save the image in
	 *    width : Float -> Width of the image in PostScript file (0: use input image size)
	 *    height : Float -> Height of image in PostScript file (0: use input image size)
	 *    x_offset : Float -> X-offset to image from lower left corner
	 *    y_offset : Float -> Y-offset to image from lower left corner
	 *    unit : Int -> Unit for width/height/offset. 0: inches, 1: millimeters
	 *    keep_ratio : Int -> 0: use width/height, 1: keep aspect ratio
	 *    rotation : Int -> 0, 90, 180, 270
	 *    eps_flag : Int -> 0: PostScript, 1: Encapsulated PostScript
	 *    preview : Int -> 0: no preview, >0: max. size of preview
	 *    level : Int -> 1: PostScript Level 1, 2: PostScript Level 2
	 * @return
	 */
	public function file_eps_save(image:Image, drawable:Drawable, filename:String, raw_filename:String, width:Float, height:Float, x_offset:Float, y_offset:Float, unit:Int, keep_ratio:Int, rotation:Int, eps_flag:Int, preview:Int, level:Int):Void;

	/**
	 * Fill the area specified either by the current selection if there is one, or by a seed fill starting at the specified coordinates.
	 *   by Spencer Kimball & Peter Mattis
	 *   1995-1996
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    fill_mode : Int -> The type of fill @{ FG-BUCKET-FILL (0), BG-BUCKET-FILL (1), PATTERN-BUCKET-FILL (2) @}
	 *    paint_mode : Int -> The paint application mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 *    opacity : Float -> The opacity of the final bucket fill (0 <= opacity <= 100)
	 *    threshold : Float -> The threshold determines how extensive the seed fill will be. It's value is specified in terms of intensity levels. This parameter is only valid when there is no selection in the specified image. (0 <= threshold <= 255)
	 *    sample_merged : Int -> Use the composite image, not the drawable (TRUE or FALSE)
	 *    x : Float -> The x coordinate of this bucket fill's application. This parameter is only valid when there is no selection in the specified image.
	 *    y : Float -> The y coordinate of this bucket fill's application. This parameter is only valid when there is no selection in the specified image.
	 * @return
	 */
	public function gimp_edit_bucket_fill(drawable:Drawable, fill_mode:Int, paint_mode:Int, opacity:Float, threshold:Float, sample_merged:Int, x:Float, y:Float):Void;

	/**
	 * Create an Hrule graphic with an eerie glow for web pages
	 *   by Adrian Likins
	 *   1997
	 * @param
	 *    value : Float -> Bar length
	 *    value : Float -> Bar height
	 *    color : Color -> Glow colour
	 *    color : Color -> Background colour
	 *    toggle : Int -> Flatten image
	 * @return
	 */
// 	public function script_fu_alien_glow_horizontal_ruler(value:Float, value:Float, color:Color, color:Color, toggle:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-name' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    name : String -> The item name
	 */
	public function gimp_channel_get_name(item:Item):String;

	/**
	 * This procedure is deprecated! Use 'gimp-context-get-gradient' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 *    name : String -> The name of the active gradient
	 */
	public function gimp_gradients_get_active():String;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-tattoo' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    tattoo : Int -> The new item tattoo
	 * @return
	 */
	public function gimp_channel_set_tattoo(item:Item, tattoo:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-context-get-foreground' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 *    foreground : Color -> The foreground color
	 */
	public function gimp_palette_get_foreground():Color;

	/**
	 * This procedure is deprecated! Use 'gimp-image-get-colormap' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    num-bytes : Int -> Number of bytes in the colormap array (num-bytes >= 0)
	 *    colormap : Array<Int> -> The image's colormap
	 */
	public function gimp_image_get_cmap(image:Image):python.Tuple.Tuple2<Int,Array<Int>>;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-linked' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    linked : Int -> The new item linked state (TRUE or FALSE)
	 * @return
	 */
	public function gimp_layer_set_linked(item:Item, linked:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-parasite' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    name : String -> The name of the parasite to find
	 * @return
	 *    parasite : Parasite -> The found parasite
	 */
	public function gimp_drawable_parasite_find(item:Item, name:String):Parasite;

	/**
	 * This procedure is deprecated! Use 'gimp-brushes-get-list' instead.
	 *   by 
	 *   
	 * @param
	 *    filter : String -> An optional regular expression used to filter the list
	 * @return
	 *    num-brushes : Int -> The number of brushes in the brush list (num-brushes >= 0)
	 *    brush-list : Array<String> -> The list of brush names
	 */
	public function gimp_brushes_list(filter:String):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * This procedure is deprecated! Use 'gimp-image-lower-item' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to lower
	 * @return
	 */
	public function gimp_image_lower_channel(image:Image, item:Item):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-context-set-pattern' instead.
	 *   by 
	 *   
	 * @param
	 *    name : String -> The name of the pattern
	 * @return
	 */
	public function gimp_patterns_set_pattern(name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-image-convert-grayscale' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_convert_grayscale(image:Image):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-detach-parasite' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    name : String -> The name of the parasite to detach from the item.
	 * @return
	 */
	public function gimp_drawable_parasite_detach(item:Item, name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-name' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    name : String -> The new item name
	 * @return
	 */
	public function gimp_drawable_set_name(item:Item, name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-image-lower-item-to-bottom' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to lower to bottom
	 * @return
	 */
	public function gimp_image_lower_vectors_to_bottom(image:Image, item:Item):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-attach-parasite' instead.
	 *   by 
	 *   
	 * @param
	 *    parasite : Parasite -> The parasite to attach
	 * @return
	 */
	public function gimp_parasite_attach(parasite:Parasite):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-tattoo' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    tattoo : Int -> The new item tattoo
	 * @return
	 */
	public function gimp_vectors_set_tattoo(item:Item, tattoo:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-linked' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    linked : Int -> The new item linked state (TRUE or FALSE)
	 * @return
	 */
	public function gimp_drawable_set_linked(item:Item, linked:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-image-duplicate' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    new-image : Image -> The new, duplicated image
	 */
	public function gimp_channel_ops_duplicate(image:Image):Image;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-linked' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    linked : Int -> The item linked state (for moves) (TRUE or FALSE)
	 */
	public function gimp_vectors_get_linked(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-tattoo' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    tattoo : Int -> The item tattoo
	 */
	public function gimp_vectors_get_tattoo(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-item-attach-parasite' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    parasite : Parasite -> The parasite to attach to the item
	 * @return
	 */
	public function gimp_vectors_parasite_attach(item:Item, parasite:Parasite):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-image-get-active-drawable' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    drawable : Drawable -> The active drawable
	 */
	public function gimp_image_active_drawable(image:Image):Drawable;

	/**
	 * This procedure is deprecated! Use 'gimp-image-convert-indexed' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    dither_type : Int -> The dither type to use @{ NO-DITHER (0), FS-DITHER (1), FSLOWBLEED-DITHER (2), FIXED-DITHER (3) @}
	 *    palette_type : Int -> The type of palette to use @{ MAKE-PALETTE (0), WEB-PALETTE (2), MONO-PALETTE (3), CUSTOM-PALETTE (4) @}
	 *    num_cols : Int -> The number of colors to quantize to, ignored unless (palette_type == GIMP_MAKE_PALETTE)
	 *    alpha_dither : Int -> Dither transparency to fake partial opacity (TRUE or FALSE)
	 *    remove_unused : Int -> Remove unused or duplicate color entries from final palette, ignored if (palette_type == GIMP_MAKE_PALETTE) (TRUE or FALSE)
	 *    palette : String -> The name of the custom palette to use, ignored unless (palette_type == GIMP_CUSTOM_PALETTE)
	 * @return
	 */
	public function gimp_convert_indexed(image:Image, dither_type:Int, palette_type:Int, num_cols:Int, alpha_dither:Int, remove_unused:Int, palette:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-name' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    name : String -> The item name
	 */
	public function gimp_drawable_get_name(item:Item):String;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-visible' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    visible : Int -> The item visibility (TRUE or FALSE)
	 */
	public function gimp_layer_get_visible(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-context-set-palette' instead.
	 *   by 
	 *   
	 * @param
	 *    name : String -> The name of the palette
	 * @return
	 */
	public function gimp_palettes_set_palette(name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-image-crop' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    new_width : Int -> New image width: (0 < new_width <= width) (1 <= new-width <= 262144)
	 *    new_height : Int -> New image height: (0 < new_height <= height) (1 <= new-height <= 262144)
	 *    offx : Int -> X offset: (0 <= offx <= (width - new_width)) (offx >= 0)
	 *    offy : Int -> Y offset: (0 <= offy <= (height - new_height)) (offy >= 0)
	 * @return
	 */
	public function gimp_crop(image:Image, new_width:Int, new_height:Int, offx:Int, offy:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-image' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    image : Image -> The item's image
	 */
	public function gimp_drawable_get_image(item:Item):Image;

	/**
	 * This procedure is deprecated! Use 'gimp-item-is-layer' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    layer : Int -> TRUE if the item is a layer, FALSE otherwise (TRUE or FALSE)
	 */
	public function gimp_drawable_is_layer(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-context-get-background' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 *    background : Color -> The background color
	 */
	public function gimp_palette_get_background():Color;

	/**
	 * This procedure is deprecated! Use 'gimp-image-undo-group-start' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The ID of the image in which to open an undo group
	 * @return
	 */
	public function gimp_undo_push_group_start(image:Image):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-context-swap-colors' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 */
	public function gimp_palette_swap_colors():Void;

	/**
	 * This procedure is deprecated! Use 'gimp-layer-get-mask' instead.
	 *   by 
	 *   
	 * @param
	 *    layer : Layer -> The layer
	 * @return
	 *    mask : Channel -> The layer mask
	 */
	public function gimp_layer_mask(layer:Layer):Channel;

	/**
	 * This procedure is deprecated! Use 'gimp-layer-get-lock-alpha' instead.
	 *   by 
	 *   
	 * @param
	 *    layer : Layer -> The layer
	 * @return
	 *    lock-alpha : Int -> The layer's lock alpha channel setting (TRUE or FALSE)
	 */
	public function gimp_layer_get_preserve_trans(layer:Layer):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-parasite-list' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    num-parasites : Int -> The number of attached parasites (num-parasites >= 0)
	 *    parasites : Array<String> -> The names of currently attached parasites
	 */
	public function gimp_drawable_parasite_list(item:Item):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * This procedure is deprecated! Use 'gimp-image-get-item-position' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item
	 * @return
	 *    position : Int -> The position of the item in its level in the item tree
	 */
	public function gimp_image_get_channel_position(image:Image, item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-item-is-valid' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item to check
	 * @return
	 *    valid : Int -> Whether the item ID is valid (TRUE or FALSE)
	 */
	public function gimp_drawable_is_valid(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-context-set-gradient' instead.
	 *   by 
	 *   
	 * @param
	 *    name : String -> The name of the gradient
	 * @return
	 */
	public function gimp_gradients_set_active(name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-delete' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item to delete
	 * @return
	 */
	public function gimp_channel_delete(item:Item):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-visible' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    visible : Int -> The item visibility (TRUE or FALSE)
	 */
	public function gimp_vectors_get_visible(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-tattoo' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    tattoo : Int -> The item tattoo
	 */
	public function gimp_layer_get_tattoo(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-image-get-floating-sel' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    floating-sel : Layer -> The image's floating selection
	 */
	public function gimp_image_floating_selection(image:Image):Layer;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-image' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    image : Image -> The item's image
	 */
	public function gimp_vectors_get_image(item:Item):Image;

	/**
	 * This procedure is deprecated! Use 'gimp-image-raise-item' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to raise
	 * @return
	 */
	public function gimp_image_raise_layer(image:Image, item:Item):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-context-set-paint-mode' instead.
	 *   by 
	 *   
	 * @param
	 *    paint_mode : Int -> The paint mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 * @return
	 */
	public function gimp_brushes_set_paint_mode(paint_mode:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-attach-parasite' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    parasite : Parasite -> The parasite to attach to the item
	 * @return
	 */
	public function gimp_drawable_parasite_attach(item:Item, parasite:Parasite):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-edit-blend' instead.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    blend_mode : Int -> The type of blend @{ FG-BG-RGB-MODE (0), FG-BG-HSV-MODE (1), FG-TRANSPARENT-MODE (2), CUSTOM-MODE (3) @}
	 *    paint_mode : Int -> The paint application mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 *    gradient_type : Int -> The type of gradient @{ GRADIENT-LINEAR (0), GRADIENT-BILINEAR (1), GRADIENT-RADIAL (2), GRADIENT-SQUARE (3), GRADIENT-CONICAL-SYMMETRIC (4), GRADIENT-CONICAL-ASYMMETRIC (5), GRADIENT-SHAPEBURST-ANGULAR (6), GRADIENT-SHAPEBURST-SPHERICAL (7), GRADIENT-SHAPEBURST-DIMPLED (8), GRADIENT-SPIRAL-CLOCKWISE (9), GRADIENT-SPIRAL-ANTICLOCKWISE (10) @}
	 *    opacity : Float -> The opacity of the final blend (0 <= opacity <= 100)
	 *    offset : Float -> Offset relates to the starting and ending coordinates specified for the blend. This parameter is mode dependent. (offset >= 0)
	 *    repeat : Int -> Repeat mode @{ REPEAT-NONE (0), REPEAT-SAWTOOTH (1), REPEAT-TRIANGULAR (2) @}
	 *    reverse : Int -> Use the reverse gradient (TRUE or FALSE)
	 *    supersample : Int -> Do adaptive supersampling (TRUE or FALSE)
	 *    max_depth : Int -> Maximum recursion levels for supersampling (1 <= max-depth <= 9)
	 *    threshold : Float -> Supersampling threshold (0 <= threshold <= 4)
	 *    dither : Int -> Use dithering to reduce banding (TRUE or FALSE)
	 *    x1 : Float -> The x coordinate of this blend's starting point
	 *    y1 : Float -> The y coordinate of this blend's starting point
	 *    x2 : Float -> The x coordinate of this blend's ending point
	 *    y2 : Float -> The y coordinate of this blend's ending point
	 * @return
	 */
	public function gimp_blend(drawable:Drawable, blend_mode:Int, paint_mode:Int, gradient_type:Int, opacity:Float, offset:Float, repeat:Int, reverse:Int, supersample:Int, max_depth:Int, threshold:Float, dither:Int, x1:Float, y1:Float, x2:Float, y2:Float):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-context-set-gradient' instead.
	 *   by 
	 *   
	 * @param
	 *    name : String -> The name of the gradient
	 * @return
	 */
	public function gimp_gradients_set_gradient(name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-selection-none' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_selection_clear(image:Image):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-visible' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    visible : Int -> The new item visibility (TRUE or FALSE)
	 * @return
	 */
	public function gimp_channel_set_visible(item:Item, visible:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-procedural-db-temp-name' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 *    temp-name : String -> A unique temporary name for a temporary PDB entry
	 */
	public function gimp_temp_PDB_name():String;

	/**
	 * This procedure is deprecated! Use 'gimp-image-get-item-position' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item
	 * @return
	 *    position : Int -> The position of the item in its level in the item tree
	 */
	public function gimp_image_get_vectors_position(image:Image, item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-context-set-foreground' instead.
	 *   by 
	 *   
	 * @param
	 *    foreground : Color -> The foreground color
	 * @return
	 */
	public function gimp_palette_set_foreground(foreground:Color):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-image-get-parasite-list' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 * @return
	 *    num-parasites : Int -> The number of attached parasites (num-parasites >= 0)
	 *    parasites : Array<String> -> The names of currently attached parasites
	 */
	public function gimp_image_parasite_list(image:Image):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-tattoo' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    tattoo : Int -> The new item tattoo
	 * @return
	 */
	public function gimp_layer_set_tattoo(item:Item, tattoo:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-visible' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    visible : Int -> The new item visibility (TRUE or FALSE)
	 * @return
	 */
	public function gimp_drawable_set_visible(item:Item, visible:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-tattoo' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    tattoo : Int -> The item tattoo
	 */
	public function gimp_drawable_get_tattoo(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-image-raise-item' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to raise
	 * @return
	 */
	public function gimp_image_raise_channel(image:Image, item:Item):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-image-lower-item' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to lower
	 * @return
	 */
	public function gimp_image_lower_layer(image:Image, item:Item):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-context-set-opacity' instead.
	 *   by 
	 *   
	 * @param
	 *    opacity : Float -> The opacity (0 <= opacity <= 100)
	 * @return
	 */
	public function gimp_brushes_set_opacity(opacity:Float):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-visible' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    visible : Int -> The new item visibility (TRUE or FALSE)
	 * @return
	 */
	public function gimp_vectors_set_visible(item:Item, visible:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-context-set-default-colors' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 */
	public function gimp_palette_set_default_colors():Void;

	/**
	 * This procedure is deprecated! Use 'gimp-image-convert-rgb' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 * @return
	 */
	public function gimp_convert_rgb(image:Image):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-visible' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    visible : Int -> The item visibility (TRUE or FALSE)
	 */
	public function gimp_channel_get_visible(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-image-raise-item-to-top' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to raise to top
	 * @return
	 */
	public function gimp_image_raise_vectors_to_top(image:Image, item:Item):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-is-valid' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item to check
	 * @return
	 *    valid : Int -> Whether the item ID is valid (TRUE or FALSE)
	 */
	public function gimp_vectors_is_valid(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-visible' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    visible : Int -> The item visibility (TRUE or FALSE)
	 */
	public function gimp_drawable_get_visible(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-image-lower-item' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to lower
	 * @return
	 */
	public function gimp_image_lower_vectors(image:Image, item:Item):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-parasite' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    name : String -> The name of the parasite to find
	 * @return
	 *    parasite : Parasite -> The found parasite
	 */
	public function gimp_vectors_parasite_find(item:Item, name:String):Parasite;

	/**
	 * This procedure is deprecated! Use 'gimp-context-get-opacity' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 *    opacity : Float -> The opacity (0 <= opacity <= 100)
	 */
	public function gimp_brushes_get_opacity():Float;

	/**
	 * This procedure is deprecated! Use 'gimp-image-get-parasite' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    name : String -> The name of the parasite to find
	 * @return
	 *    parasite : Parasite -> The found parasite
	 */
	public function gimp_image_parasite_find(image:Image, name:String):Parasite;

	/**
	 * This procedure is deprecated! Use 'gimp-item-is-text-layer' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    text-layer : Int -> TRUE if the item is a text layer, FALSE otherwise. (TRUE or FALSE)
	 */
	public function gimp_drawable_is_text_layer(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-image-raise-item-to-top' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to raise to top
	 * @return
	 */
	public function gimp_image_raise_layer_to_top(image:Image, item:Item):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-name' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    name : String -> The new item name
	 * @return
	 */
	public function gimp_layer_set_name(item:Item, name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-layer-set-lock-alpha' instead.
	 *   by 
	 *   
	 * @param
	 *    layer : Layer -> The layer
	 *    lock_alpha : Int -> The new layer's lock alpha channel setting (TRUE or FALSE)
	 * @return
	 */
	public function gimp_layer_set_preserve_trans(layer:Layer, lock_alpha:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-delete' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item to delete
	 * @return
	 */
	public function gimp_layer_delete(item:Item):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-drawable-offset' instead.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The drawable to offset
	 *    wrap_around : Int -> wrap image around or fill vacated regions (TRUE or FALSE)
	 *    fill_type : Int -> fill vacated regions of drawable with background or transparent @{ OFFSET-BACKGROUND (0), OFFSET-TRANSPARENT (1) @}
	 *    offset_x : Int -> offset by this amount in X direction
	 *    offset_y : Int -> offset by this amount in Y direction
	 * @return
	 */
	public function gimp_channel_ops_offset(drawable:Drawable, wrap_around:Int, fill_type:Int, offset_x:Int, offset_y:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-get-parasite-list' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 *    num-parasites : Int -> The number of attached parasites (num-parasites >= 0)
	 *    parasites : Array<String> -> The names of currently attached parasites
	 */
	public function gimp_parasite_list():python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-tattoo' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    tattoo : Int -> The item tattoo
	 */
	public function gimp_channel_get_tattoo(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-linked' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    linked : Int -> The new item linked state (TRUE or FALSE)
	 * @return
	 */
	public function gimp_vectors_set_linked(item:Item, linked:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-parasite-list' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    num-parasites : Int -> The number of attached parasites (num-parasites >= 0)
	 *    parasites : Array<String> -> The names of currently attached parasites
	 */
	public function gimp_vectors_parasite_list(item:Item):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-linked' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    linked : Int -> The item linked state (for moves) (TRUE or FALSE)
	 */
	public function gimp_layer_get_linked(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-image-undo-group-end' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The ID of the image in which to close an undo group
	 * @return
	 */
	public function gimp_undo_push_group_end(image:Image):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-tattoo' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    tattoo : Int -> The new item tattoo
	 * @return
	 */
	public function gimp_drawable_set_tattoo(item:Item, tattoo:Int):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-image-raise-item' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to raise
	 * @return
	 */
	public function gimp_image_raise_vectors(image:Image, item:Item):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-context-set-brush' instead.
	 *   by 
	 *   
	 * @param
	 *    name : String -> The name of the brush
	 * @return
	 */
	public function gimp_brushes_set_brush(name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-name' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    name : String -> The new item name
	 * @return
	 */
	public function gimp_channel_set_name(item:Item, name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-context-set-background' instead.
	 *   by 
	 *   
	 * @param
	 *    background : Color -> The background color
	 * @return
	 */
	public function gimp_palette_set_background(background:Color):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-context-get-gradient' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 *    name : String -> The name of the active gradient
	 */
	public function gimp_gradients_get_gradient():String;

	/**
	 * This procedure is deprecated! Use 'gimp-edit-bucket-fill' instead.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The affected drawable
	 *    fill_mode : Int -> The type of fill @{ FG-BUCKET-FILL (0), BG-BUCKET-FILL (1), PATTERN-BUCKET-FILL (2) @}
	 *    paint_mode : Int -> The paint application mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 *    opacity : Float -> The opacity of the final bucket fill (0 <= opacity <= 100)
	 *    threshold : Float -> The threshold determines how extensive the seed fill will be. It's value is specified in terms of intensity levels. This parameter is only valid when there is no selection in the specified image. (0 <= threshold <= 255)
	 *    sample_merged : Int -> Use the composite image, not the drawable (TRUE or FALSE)
	 *    x : Float -> The x coordinate of this bucket fill's application. This parameter is only valid when there is no selection in the specified image.
	 *    y : Float -> The y coordinate of this bucket fill's application. This parameter is only valid when there is no selection in the specified image.
	 * @return
	 */
	public function gimp_bucket_fill(drawable:Drawable, fill_mode:Int, paint_mode:Int, opacity:Float, threshold:Float, sample_merged:Int, x:Float, y:Float):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-image-get-item-position' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item
	 * @return
	 *    position : Int -> The position of the item in its level in the item tree
	 */
	public function gimp_image_get_layer_position(image:Image, item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-name' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    name : String -> The item name
	 */
	public function gimp_layer_get_name(item:Item):String;

	/**
	 * This procedure is deprecated! Use 'gimp-item-is-layer-mask' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    layer-mask : Int -> TRUE if the item is a layer mask, FALSE otherwise (TRUE or FALSE)
	 */
	public function gimp_drawable_is_layer_mask(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-detach-parasite' instead.
	 *   by 
	 *   
	 * @param
	 *    name : String -> The name of the parasite to detach.
	 * @return
	 */
	public function gimp_parasite_detach(name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-linked' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    linked : Int -> The item linked state (for moves) (TRUE or FALSE)
	 */
	public function gimp_drawable_get_linked(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-image-attach-parasite' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    parasite : Parasite -> The parasite to attach to an image
	 * @return
	 */
	public function gimp_image_parasite_attach(image:Image, parasite:Parasite):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-image-lower-item-to-bottom' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    item : Item -> The item to lower to bottom
	 * @return
	 */
	public function gimp_image_lower_layer_to_bottom(image:Image, item:Item):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-palettes-refresh' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 */
	public function gimp_palette_refresh():Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-is-channel' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    channel : Int -> TRUE if the item is a channel, FALSE otherwise (TRUE or FALSE)
	 */
	public function gimp_drawable_is_channel(item:Item):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-name' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    name : String -> The new item name
	 * @return
	 */
	public function gimp_vectors_set_name(item:Item, name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-detach-parasite' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    name : String -> The name of the parasite to detach from the item.
	 * @return
	 */
	public function gimp_vectors_parasite_detach(item:Item, name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-get-parasite' instead.
	 *   by 
	 *   
	 * @param
	 *    name : String -> The name of the parasite to find
	 * @return
	 *    parasite : Parasite -> The found parasite
	 */
	public function gimp_parasite_find(name:String):Parasite;

	/**
	 * This procedure is deprecated! Use 'gimp-patterns-get-list' instead.
	 *   by 
	 *   
	 * @param
	 *    filter : String -> An optional regular expression used to filter the list
	 * @return
	 *    num-patterns : Int -> The number of patterns in the pattern list (num-patterns >= 0)
	 *    pattern-list : Array<String> -> The list of pattern names
	 */
	public function gimp_patterns_list(filter:String):python.Tuple.Tuple2<Int,Array<String>>;

	/**
	 * This procedure is deprecated! Use 'gimp-item-delete' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item to delete
	 * @return
	 */
	public function gimp_drawable_delete(item:Item):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-image-set-colormap' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    num_bytes : Int -> Number of bytes in the colormap array (0 <= num-bytes <= 768)
	 *    colormap : Array<Int> -> The new colormap values
	 * @return
	 */
	public function gimp_image_set_cmap(image:Image, num_bytes:Int, colormap:Array<Int>):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-image-pick-color' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    drawable : Drawable -> The drawable to pick from
	 *    x : Float -> x coordinate of upper-left corner of rectangle
	 *    y : Float -> y coordinate of upper-left corner of rectangle
	 *    sample_merged : Int -> Use the composite image, not the drawable (TRUE or FALSE)
	 *    sample_average : Int -> Average the color of all the pixels in a specified radius (TRUE or FALSE)
	 *    average_radius : Float -> The radius of pixels to average (average-radius >= 0)
	 * @return
	 *    color : Color -> The return color
	 */
	public function gimp_color_picker(image:Image, drawable:Drawable, x:Float, y:Float, sample_merged:Int, sample_average:Int, average_radius:Float):Color;

	/**
	 * This procedure is deprecated! Use 'gimp-drawable-bpp' instead.
	 *   by 
	 *   
	 * @param
	 *    drawable : Drawable -> The drawable
	 * @return
	 *    bpp : Int -> Bytes per pixel
	 */
	public function gimp_drawable_bytes(drawable:Drawable):Int;

	/**
	 * This procedure is deprecated! Use 'gimp-image-detach-parasite' instead.
	 *   by 
	 *   
	 * @param
	 *    image : Image -> The image
	 *    name : String -> The name of the parasite to detach from an image.
	 * @return
	 */
	public function gimp_image_parasite_detach(image:Image, name:String):Void;

	/**
	 * This procedure is deprecated! Use 'gimp-item-get-name' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 * @return
	 *    name : String -> The item name
	 */
	public function gimp_vectors_get_name(item:Item):String;

	/**
	 * This procedure is deprecated! Use 'gimp-context-get-paint-mode' instead.
	 *   by 
	 *   
	 * @param
	 * @return
	 *    paint-mode : Int -> The paint mode @{ NORMAL-MODE (0), DISSOLVE-MODE (1), BEHIND-MODE (2), MULTIPLY-MODE (3), SCREEN-MODE (4), OVERLAY-MODE (5), DIFFERENCE-MODE (6), ADDITION-MODE (7), SUBTRACT-MODE (8), DARKEN-ONLY-MODE (9), LIGHTEN-ONLY-MODE (10), HUE-MODE (11), SATURATION-MODE (12), COLOR-MODE (13), VALUE-MODE (14), DIVIDE-MODE (15), DODGE-MODE (16), BURN-MODE (17), HARDLIGHT-MODE (18), SOFTLIGHT-MODE (19), GRAIN-EXTRACT-MODE (20), GRAIN-MERGE-MODE (21), COLOR-ERASE-MODE (22), ERASE-MODE (23), REPLACE-MODE (24), ANTI-ERASE-MODE (25) @}
	 */
	public function gimp_brushes_get_paint_mode():Int;

	/**
	 * This procedure is deprecated! Use 'gimp-item-set-visible' instead.
	 *   by 
	 *   
	 * @param
	 *    item : Item -> The item
	 *    visible : Int -> The new item visibility (TRUE or FALSE)
	 * @return
	 */
	public function gimp_layer_set_visible(item:Item, visible:Int):Void;

}