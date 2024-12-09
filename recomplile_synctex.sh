#!/bin/env zsh

# fixes the wrong paths in the synctex_file 

synctex_file="$1"
gunzip "$synctex_file"
sed -i 's/\/mnt\/c\//c:\//g' "${synctex_file%.gz}"
gzip "${synctex_file%.gz}"
