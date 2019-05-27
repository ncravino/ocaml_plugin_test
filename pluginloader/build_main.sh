#!/usr/bin/env bash
ocamlbuild -use-ocamlfind -tags linkall,thread -package dynlink main.native

