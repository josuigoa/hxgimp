using StringTools;

enum State {
    class_name;
    vars;
    trash;
}

typedef Variable = {
    var var_name:String;
    var doc:String;
}

class ClassParser {
    
    static var current_state:State;
    static var python_doc:Array<String>;
	
	static public function process() {
		var lines = RE.line_break_ereg.split(sys.io.File.getContent('files/help_gimp'));
        python_doc = RE.line_break_ereg.split(sys.io.File.getContent('files/python_doc'));
		
        current_state = trash;
        var c_doc, c_name, c_extend, c_var, c_vars_array:Array<Variable>=[], ret;
        
        function create_class() : Void {
            
            if (c_name == '' || c_name == null) return;
            
    		var c_code = 'package gimp;\n\n';
            if (c_doc != '') c_code += '/**\n * ${c_doc}\n */\n';
            // c_code += '@:pythonImport("gimpfu")\n';
            c_code += '@:native("gimp.${c_name}")\n';
    		if (c_extend == '') c_code += 'extern class $c_name {\n';
    		else c_code += 'extern class $c_name extends $c_extend {\n';
            
            for (v in c_vars_array) {
                if (v.doc != '') c_code += '\t/**\n\t * ${v.doc}\n\t */\n';
                ret = (v.var_name.indexOf('is_')!=-1||v.var_name.indexOf('has_')!=-1)?'Bool':
                        (v.var_name.indexOf('num_')!=-1||v.var_name.toLowerCase().indexOf('id')!=-1)?'UInt':
                        'Dynamic';
                c_code += '\tpublic var ${v.var_name}:${ret};\n\n';
            }
            
            c_code += '}';
            
    		var dir = Sys.getCwd()+'../gimp/';
    		if (!sys.FileSystem.exists(dir)) sys.FileSystem.createDirectory(dir);
    		sys.io.File.saveContent('${dir}${c_name}.hx', c_code);
            c_doc = c_name = c_extend = '';
            c_vars_array = [];
        }

        var i=0, l;
        while (i < lines.length) {
            l = lines[i++];
            if (l.trim() == '' || l.trim() == '\n') continue;
            
            switch current_state {
                case class_name:
                    if (l.indexOf('Data descriptors defined here:') != -1) current_state = vars;
                case vars:
                    if (RE.data_desc_ereg.match(l)) {
                        c_var = RE.data_desc_ereg.matched(1);
                        c_vars_array.push({var_name:c_var, doc:get_var_doc(c_var)});
                    }
                    else if (l.indexOf('---------') != -1) {
                        create_class();
                        current_state = trash;
                    } else if (RE.class_ereg.match(l)) {
                        create_class();
                        c_name = RE.class_ereg.matched(1).replace(' ', '');
                        c_doc = get_class_doc(c_name);
                        c_extend = if (RE.extend_ereg.match(l)) RE.extend_ereg.matched(1);
                                    else '';
                        current_state = class_name;
                    }
                case trash:
                    if (RE.class_ereg.match(l)) {
                        c_name = RE.class_ereg.matched(1).replace(' ', '');
                        c_doc = get_class_doc(c_name);
                        c_extend = if (RE.extend_ereg.match(l)) RE.extend_ereg.matched(1);
                                    else '';
                        current_state = class_name;
                    }
			}
		}
	} //process
    
    static function get_var_doc(member:String) {
        var return_next = false;
        for (l in python_doc) {
            if (l.trim() == '' || l.trim() == '\n') continue;
            if (return_next) return l.trim();
            return_next = l.indexOf('.${member}') != -1;
        }
        return '';
    } //get_var_doc
    
    static function get_class_doc(c_name:String) {
        var return_next = false;
        for (l in python_doc) {
            if (l.trim() == '' || l.trim() == '\n') continue;
            if (return_next) return l.trim();
            return_next = l.indexOf('$c_name Objects') != -1;
        }
        return '';
    } //get_var_doc
}