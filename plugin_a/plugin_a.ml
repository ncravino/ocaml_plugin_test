open Core 

let f () = 
	let x = List.to_string string_of_int [1;2;3] in
	print_endline x

let () = 
	raise (Plg.Loaded f)
