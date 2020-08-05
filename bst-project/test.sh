#!/usr/bin/env bash

bst --colors build foo.bst
bst --colors artifact delete foo.bst
bst --colors artifact pull foo.bst
