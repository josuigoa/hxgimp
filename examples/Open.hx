package;

import gimp.GimpFu;
import gimp.GimpFu.pdb;

class Open {

    public function new() {}
    
    static function run(file:String, new_width:String, new_height:String) {
        try {
            pdb.gimp_message('opening $file file');
            var image = pdb.gimp_file_load(file, file);
            var w = Std.parseInt(new_width);
            var h = Std.parseInt(new_height);
            pdb.gimp_image_scale(image, w, h);
            pdb.gimp_display_new(image);
        } catch(e:Dynamic) {
            trace(e);
            pdb.gimp_message('Error occurred: $e');
        }
    }

    static function main() {
        GimpFu.register('open_xcf_from_haxe', 'Opens previously created XCF file', 'help text', '2017', 'josuigoa', 
                        '2017', '<Toolbox>/Haxe plugins/Open', gimp.ImageType.NONE, 
                        [gimp.Parameters.file('open_file', 'what file do you want to open?'),
                        gimp.Parameters.string('width', 'the width of the openned image', '400'),
                        gimp.Parameters.string('height', 'the height of the openned image', '400')],
                        [], Open.run);
        GimpFu.main();
        new Open();
    }
}