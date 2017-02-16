package;

import gimp.GimpFu;
import gimp.GimpFu.pdb;

class New {

    public function new() {}
    
    static function run(dir:String) {
        try {
            var f = 'new_file.xcf';
            pdb.gimp_message('creating ${dir}${f} file');
            var image = pdb.gimp_image_new(100, 100, GimpFu.RGB_IMAGE);
            pdb.gimp_display_new(image);
            var layer = pdb.gimp_layer_new(image, 90, 90, GimpFu.RGB_IMAGE, 'my_layer', 50, GimpFu.NORMAL_MODE);
            pdb.gimp_image_insert_layer(image, layer, null, -1);
            
            pdb.gimp_context_set_background(gimp.Color.make(255, 0, 0));
            pdb.gimp_drawable_fill(layer, GimpFu.BACKGROUND_FILL);
            // pdb.gimp_drawable_fill(layer, GimpFu.WHITE_FILL);
            
            pdb.gimp_file_save(image, layer, dir+f, f);
            
        } catch(e:Dynamic) {
            trace(e);
            pdb.gimp_message('Error occurred: $e');
        }
    }

    static function main() {
        GimpFu.register('create_xcf_from_haxe', 'Creates a XCF file and saves it', 'help text', '2017', 'josuigoa', 
                        '2017', '<Toolbox>/Haxe plugins/New', gimp.ImageType.NONE, 
                        [gimp.Parameters.dirname('save_dir', 'where do you want to save the new_file.xcf file?')], [], New.run);
        GimpFu.main();
        new New();
    }
}