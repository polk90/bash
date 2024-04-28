#!/bin/bash

IN=$(sed "s/\/$//" <<< $1)
OUT=$(sed "s/\/$//" <<< $2)
find $IN -type f | sed "p;s/\//_/g;s/\.\_//g;s/^/\//;s/^/$OUT/" | xargs -n 2 cp
