let tool_name = "ocamlc"

let parse ~sourcefile =
  (* see ocaml_parser/driver/pparse.ml :224 *)
  let structure = Pparse.parse_implementation ~tool_name sourcefile in
  (* let _ = Printast.structure 0 Format.std_formatter structure in *)
  structure

let parse_string str = Parse.implementation @@ Lexing.from_string str
