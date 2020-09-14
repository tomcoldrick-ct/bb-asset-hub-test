#!/usr/bin/env bash

bst --colors build hello.bst
bst --colors artifact delete hello.bst
bst --colors artifact pull --deps none hello.bst
bst --colors shell hello.bst hello
