

class RE {
    static public var method_ereg = ~/(gchar|gint|gboolean|gdouble|GimpParasite)[*]*[\t|\s]*([\w_]+)[\t|\s]*\(([\w,\*\s_]*)\)/g;
	static public var line_break_ereg = ~/\r?\n/g;
	static public var space_ereg = ~/[\t|\s]+/g;
	static public var struct_ereg = ~/struct ([#\s\t\r?\n\w{}\*;\/]*)}([\w_]+);/g;
    static public var object_ereg = ~/([\w\s]+) Object/g;
    static public var members_ereg = ~/([\w\s]+) Members/g;
    static public var methods_ereg = ~/([\w\s]+) Methods/g;
    static public var class_ereg = ~/class\s([A-Z][\w]+)\(([A-Za-z_\.])*\)/g;
    static public var extend_ereg = ~/\(([A-Za-z]*)\)/g;
    static public var data_desc_ereg = ~/\|\s\s([a-zA-Z_]+)/g;
    
    static public var start_input_return_ereg = ~/^\s{2,2}\($/g;
    static public var end_input_return_ereg = ~/^\s{4,4}\)/g;
    
    static public var start_argument_ereg = ~/^\s{4,4}\(/g;
    static public var end_argument_ereg = ~/^\s{4,4}\)/g;
}
