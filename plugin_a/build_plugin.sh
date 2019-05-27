#!/usr/bin/env bash
ocamlfind ocamlopt -thread -shared -linkall -linkpkg -package core plg.ml plugin_a.ml -o plugin_a.cmxs
