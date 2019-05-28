open Core 

let f () = 
	let x = List.to_string string_of_int [4;5;6] in
	print_endline x

let () = 
	raise (Plg.Loaded f)
