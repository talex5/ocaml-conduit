open Mirage

let main = foreign "Unikernel.Client" (console @-> job)

let () =
  add_to_ocamlfind_libraries ["conduit.mirage-xen"];
  add_to_opam_packages ["conduit"];
  register "vchan_client" [ main $ default_console ]
