#!/usr/bin/env bash
ocamlfind ocamlopt -thread -shared -linkall -linkpkg -package core plg.ml plugin_b.ml -o plugin_b.cmxs
