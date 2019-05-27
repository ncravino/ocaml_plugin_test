
let () = 
	try Dynlink.loadfile "plugin_a.cmxs" with
	|Plg.Loaded f -> (f ())
	|Dynlink.Error x -> print_endline (Dynlink.error_message x)
