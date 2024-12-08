# setting up on WSL
- created file in `~/.config % cat ~/.local/bin/sumatrapdf.sh`
- file has the following content:
```
#!/usr/bin/env zsh
texpath=$(wslpath -m "$1")
line = $2
pdfpath=$(wslpath -m "$3")

sumatrapdf.exe -reuse-instance -forward-search "$texpath" "$line" "$pdfpath"

# echo "Input: $1" >> ~/sumatra_debug.log

echo "sumatrapdf.exe -reuse-instance -forward-search $texpath $line $pdfpath" >> ~/sumatra_debug.log
```
