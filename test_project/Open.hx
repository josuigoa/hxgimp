package;

import gimp.GimpFu;
import gimp.GimpFu.pdb;

class Open {

    public function new() {}
    
    static function func() {
        try {
            var f = 'd:/new_file.xcf';
            pdb.gimp_message('opening $f file');
            var image = pdb.gimp_file_load(f, f);
            var w = image.width * 2;
            var h = image.height * 2;
            pdb.gimp_image_scale(image, w, h);
            pdb.gimp_display_new(image);
        } catch(e:Dynamic) {
            trace(e);
            pdb.gimp_message('Error occurred: $e');
        }
    }

    static function main() {
        GimpFu.register('open_xcf_from_haxe', 'Opens previously created XCF file', 'help text', '2017', 'josuigoa', 
                        '2017', '<Toolbox>/Haxe/Gimp/Open', '', 
                        [gimp.Parameters.string('width', 'the width of the openned image', '400'), gimp.Parameters.string('height', 'the height of the openned image', '400')],
                        [], Open.func);
        GimpFu.main();
        new Open();
    }
}