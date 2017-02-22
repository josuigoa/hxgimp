package;

import gimp.GimpFu;
import gimp.GimpFu.pdb;
import haxe.io.Path;
import python.lib.Os;

class TwoHalves {

    public function new() {}
    
    static public function run(dir_path:String) {
        
        var files = sys.FileSystem.readDirectory(dir_path);
        if (files.length == 0) return;

        var pages_dir = '${dir_path}/pages/';
        if (!sys.FileSystem.exists(pages_dir)) 
            untyped python_lib_Os.mkdir(pages_dir, 511); 
            // used untyped because Haxe compiles to Python 3.x and Gimp uses Python 2.7.5. And this is one of the differences
            // sys.FileSystem.createDirectory relies on os.mkdir(path, 511, true) and Gimp throws an error complaining 
            // that the method os.mkdirs only accepts two parameters (path and mode)
            
        var img, img_w, img_h, img_copy, merged_layer, img_part, f_name, p_ind = 0;
        for (f in files) {
            switch Path.extension(f) {
                case 'psd': img = pdb.file_psd_load('${dir_path}/$f', '${dir_path}/$f');
                case 'xcf': img = pdb.gimp_file_load('${dir_path}/$f', '${dir_path}/$f');
                case 'jpg': img = pdb.file_jpeg_load('${dir_path}/$f', '${dir_path}/$f');
                case 'png': img = pdb.file_png_load('${dir_path}/$f', '${dir_path}/$f');
                case _: continue;
            }
            
            img_w = pdb.gimp_image_width(img);
            img_h = pdb.gimp_image_height(img);

            merged_layer = pdb.gimp_image_merge_visible_layers(img, GimpFu.CLIP_TO_IMAGE);

            pdb.gimp_image_select_rectangle(img, GimpFu.CHANNEL_OP_ADD, 0, 0, img_w*.5, img_h);
            pdb.gimp_edit_copy(merged_layer);
            img_part = pdb.gimp_edit_paste_as_new();
            f_name = '${pages_dir}/${p_ind}.jpg';
            pdb.file_jpeg_save(img_part, pdb.gimp_image_get_active_drawable(img_part), f_name, f_name, 1, .4, 1, 0, '', 0, 0, 0, 0);
            pdb.gimp_image_delete(img_part);
            pdb.gimp_selection_none(img);
            
            p_ind++;

            pdb.gimp_image_select_rectangle(img, GimpFu.CHANNEL_OP_ADD, img_w*.5, 0, img_w*.5, img_h); 
            pdb.gimp_edit_copy(merged_layer);
            img_part = pdb.gimp_edit_paste_as_new();
            f_name = '${pages_dir}/${p_ind}.jpg';
            pdb.file_jpeg_save(img_part, pdb.gimp_image_get_active_drawable(img_part), f_name, f_name, 1, .4, 1, 0, '', 0, 0, 0, 0);
            pdb.gimp_image_delete(img_part);
            pdb.gimp_selection_none(img);

            p_ind++;
        }
    }

    static function main() {
        GimpFu.register('two_halves', '', '', '2017', 'josuigoa', '2017', '<Toolbox>/Haxe plugins/Two halves', gimp.ImageType.NONE, 
        [gimp.Parameters.dirname('source_dir', 'Directory to take the images to divide in two halves')], [], TwoHalves.run);
        GimpFu.main();
        new TwoHalves();
    }
}