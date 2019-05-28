let load_plugin file = 
	let ret = ref None in
	let () = try Dynlink.loadfile file with
	| Plg.Loaded f -> (ret := Some f)
	| Dynlink.Error x -> 
		print_endline (Dynlink.error_message x)
	in
	!ret

let load_a () = load_plugin "plugin_a.cmxs"
let load_b () = load_plugin "plugin_b.cmxs"

let () = 
	match (load_a (), load_b ()) with
	|(Some fa, Some fb) -> 
		let () = fa () in
		fb ()
	| _ -> print_endline "error"
