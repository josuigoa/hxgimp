
using StringTools;

class PDBParser {
	
	static var unmanaged_classes:Array<String>;
	static var method_names:Array<String>;
    
    static public function process() {
		var content = sys.io.File.getContent('files/gimp_procedural_db_dump.txt');
		var procedures = content.split('(register-procedure');
		trace('procedures.length: ${procedures.length}');
		var class_code = 'package gimp;\n\n';
		class_code += '@:native("pdb")\n';
		class_code += 'extern class PDB {\n';
		unmanaged_classes = [];
		method_names = [];
		
		var lines;
		for (p in procedures) {
			class_code += process_proc(p);
		}
		
		class_code += '}';
		var dir = Sys.getCwd()+'../gimp/';
		if (!sys.FileSystem.exists(dir)) sys.FileSystem.createDirectory(dir);
		sys.io.File.saveContent('${dir}PDB.hx', class_code);
		
		for (uc in unmanaged_classes) {
			if (!sys.FileSystem.exists(dir+uc+'.hx')) {
				class_code = 'package gimp;\n\n';
				class_code += 'extern class $uc {}';
				sys.io.File.saveContent('${dir}${uc}.hx', class_code);
			}
		}
    } //process
	
	static function process_proc(procedure:String) {
		var lines = RE.line_break_ereg.split(procedure);
		
		var name, desc = [], inputs = [], returns = [], tds, input_code = '', return_code = '';
		
		name = RE.space_ereg.replace(Std.string(lines.shift()), '').replace("\"", '').replace('-', '_').trim();
		if (name == '') return '';
		desc.push(Std.string(lines.shift()).replace('"', '').trim());
		lines.shift(); // skip line 3
		desc.push('\t *   by ' + Std.string(lines.shift()).replace('"', '').trim());
		lines.shift(); // skip line 5
		desc.push('\t *   ' + Std.string(lines.shift()).replace('\"', '').trim());
		
		trace( 'proc_name: $name' );
		
		if (name == null || method_names.indexOf(name) != -1) return '';
		
		method_names.push(name);
		
		var input_code_array = [], return_code_array = [];
		var l, l_ind = 0, n, t, d, state = 0; //0:trash, 1:input, 2:return
		while (l_ind < lines.length) {
			l = lines[l_ind++];
			switch state {
				case 0:
					if (RE.start_input_return_ereg.match(l)) {
						state = 1;
						desc.push('\t * @param');
					}
				case 1:
					if (RE.start_input_return_ereg.match(l)) {
						state = 2;
						desc.push('\t * @return');
					}
					if (RE.start_argument_ereg.match(l) && !RE.end_argument_ereg.match(lines[l_ind+1])) {
						n = lines[l_ind++].replace('"', '').trim().replace('-', '_');
						if (n == 'run_mode') {
							l_ind += 2;
						} else {
							t = type_to_haxe(lines[l_ind++]);
							d = lines[l_ind++].replace('"', '').trim();
							desc.push('\t *    ${n} : ${t} -> ${d}');
							input_code_array.push('${n}:${t}');
						}
					}
				case 2:
					if (RE.start_argument_ereg.match(l) && !RE.end_argument_ereg.match(lines[l_ind+1])) {
						n = lines[l_ind++].replace('"', '').trim();
						t = type_to_haxe(lines[l_ind++]);
						d = lines[l_ind++].replace('"', '').trim();
						desc.push('\t *    ${n} : ${t} -> ${d}');
						return_code_array.push('${t}');
					}
					
			}
		}
		
		var input_code = input_code_array.join(', ');
		
		if (return_code_array != null && return_code_array.length > 0) {
			if (return_code_array.length == 1) return_code = return_code_array[0];
			else if (return_code_array.length < 5) return_code = 'python.Tuple.Tuple${return_code_array.length}<${return_code_array.join(",")}>';
			else return_code = 'Dynamic';
		} else return_code = 'Void';
		
		var ret = '\t/**\n\t * ${desc.join("\n")}\n\t */\n';
		var func_line = '\tpublic function $name(${input_code}):${return_code};\n\n';
		if (name.startsWith('plug_in') || name.startsWith('script_fu')) func_line = '// ' + func_line;
		ret += func_line;
        
        return ret;
	} //process_proc
    
	static function type_to_haxe(t:String) {
		var clean_t = t.toLowerCase().replace('gimp_pdb_', '').replace('"', '').trim();
		return switch clean_t {
						case 'int'|'int8'|'int16'|'int32': 'Int';
						case 'uint'|'uint8'|'uint32': 'UInt';
						case 'float': 'Float';
						case 'string': 'String';
						case 'boolean': 'Bool';
						case 'channel'|'display'|'drawable'|'grouplayer'|'image'|'item'|'layer'|
								'parasite'|'pixelfetcher'|'pixelrgn'|'vectors'|'vectorsbezierstroke': 
									clean_t.charAt(0).toUpperCase()+clean_t.substring(1, clean_t.length).toLowerCase();
						case 'void': 'Void';
						case _: 
							if (t.indexOf('ARRAY') != -1) 'Array<${type_to_haxe(t.replace("ARRAY", ""))}>';
							else {
								var c = clean_t.charAt(0).toUpperCase()+clean_t.substring(1, clean_t.length).toLowerCase();
								if (unmanaged_classes.indexOf(c) == -1) unmanaged_classes.push(c);
								c;
							}
					}
	} //process_type
}